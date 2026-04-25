import Foundation

if CommandLine.arguments.count < 2 {
    print("Uso: swift read_ppt.swift <ruta-al-ppt>")
    exit(1)
}

let pptPath = CommandLine.arguments[1]

guard FileManager.default.fileExists(atPath: pptPath) else {
    print("Error: El archivo PPT no existe en la ruta '\(pptPath)'.")
    exit(1)
}

// Resolver pandoc desde el PATH
let which = Process()
which.executableURL = URL(fileURLWithPath: "/usr/bin/env")
which.arguments = ["which", "pandoc"]
let whichPipe = Pipe()
which.standardOutput = whichPipe
which.standardError = Pipe()
try? which.run()
which.waitUntilExit()
let pandocPathData = whichPipe.fileHandleForReading.readDataToEndOfFile()
let pandocPath = String(data: pandocPathData, encoding: .utf8)?
    .trimmingCharacters(in: .whitespacesAndNewlines) ?? ""

guard !pandocPath.isEmpty else {
    print("Error: pandoc no está disponible en el PATH.")
    print("Instálalo con: brew install pandoc  (macOS) o apt install pandoc (Linux)")
    exit(1)
}

// Usar pandoc para convertir PPT a texto plano
let process = Process()
process.executableURL = URL(fileURLWithPath: pandocPath)
process.arguments = ["-t", "plain", pptPath]

let stdoutPipe = Pipe()
let stderrPipe = Pipe()
process.standardOutput = stdoutPipe
process.standardError = stderrPipe

var outputData = Data()
var errorData = Data()

stdoutPipe.fileHandleForReading.readabilityHandler = { handle in
    outputData.append(handle.availableData)
}
stderrPipe.fileHandleForReading.readabilityHandler = { handle in
    errorData.append(handle.availableData)
}

do {
    try process.run()
    process.waitUntilExit()

    stdoutPipe.fileHandleForReading.readabilityHandler = nil
    stderrPipe.fileHandleForReading.readabilityHandler = nil
    outputData.append(stdoutPipe.fileHandleForReading.readDataToEndOfFile())
    errorData.append(stderrPipe.fileHandleForReading.readDataToEndOfFile())

    if process.terminationStatus == 0 {
        if let output = String(data: outputData, encoding: .utf8) {
            print("Contenido del PPT '\(pptPath)':")
            print(output)
        } else {
            print("Error: No se pudo leer la salida de pandoc.")
        }
    } else {
        let errMsg = String(data: errorData, encoding: .utf8) ?? ""
        print("Error al procesar el PPT: \(errMsg)")
    }
} catch {
    print("Error al ejecutar pandoc: \(error.localizedDescription)")
    print("Asegúrate de que pandoc esté instalado. Instálalo con: brew install pandoc")
}