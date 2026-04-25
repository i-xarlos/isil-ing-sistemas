import Foundation

if CommandLine.arguments.count < 2 {
    print("Uso: swift read_ppt.swift <ruta-al-ppt>")
    exit(1)
}

let pptPath = CommandLine.arguments[1]
let pptUrl = URL(fileURLWithPath: pptPath)

guard FileManager.default.fileExists(atPath: pptPath) else {
    print("Error: El archivo PPT no existe en la ruta '\(pptPath)'.")
    exit(1)
}

// Usar pandoc para convertir PPT a texto plano
let process = Process()
process.executableURL = URL(fileURLWithPath: "/opt/homebrew/bin/pandoc")  // Ruta actualizada para macOS con Homebrew
process.arguments = ["-t", "plain", pptPath]

let pipe = Pipe()
process.standardOutput = pipe
process.standardError = pipe

do {
    try process.run()
    process.waitUntilExit()

    let data = pipe.fileHandleForReading.readDataToEndOfFile()
    if let output = String(data: data, encoding: .utf8) {
        if process.terminationStatus == 0 {
            print("Contenido del PPT '\(pptPath)':")
            print(output)
        } else {
            print("Error al procesar el PPT: \(output)")
        }
    } else {
        print("Error: No se pudo leer la salida de pandoc.")
    }
} catch {
    print("Error al ejecutar pandoc: \(error.localizedDescription)")
    print("Asegúrate de que pandoc esté instalado. Instálalo con: brew install pandoc")
}