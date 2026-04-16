import Foundation
import Vision
import AppKit

let paths = Array(CommandLine.arguments.dropFirst())
for path in paths {
    print("=== \(URL(fileURLWithPath: path).lastPathComponent) ===")
    guard let image = NSImage(contentsOfFile: path) else {
        print("No se pudo abrir imagen\n")
        continue
    }
    var rect = CGRect(origin: .zero, size: image.size)
    guard let cgImage = image.cgImage(forProposedRect: &rect, context: nil, hints: nil) else {
        print("No se pudo convertir a CGImage\n")
        continue
    }
    let request = VNRecognizeTextRequest()
    request.recognitionLevel = .accurate
    request.usesLanguageCorrection = true
    request.recognitionLanguages = ["es-ES", "en-US"]
    let handler = VNImageRequestHandler(cgImage: cgImage, options: [:])
    do {
        try handler.perform([request])
        let texts = (request.results ?? []).compactMap { $0.topCandidates(1).first?.string }
        print(texts.prefix(100).joined(separator: "\n"))
        print("\n")
    } catch {
        print("OCR error: \(error)\n")
    }
}
