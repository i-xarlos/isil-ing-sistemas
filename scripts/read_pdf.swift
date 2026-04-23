import Foundation
import PDFKit

if CommandLine.arguments.count < 2 {
    print("Uso: swift read_pdf.swift <ruta-al-pdf>")
    exit(1)
}

let pdfPath = CommandLine.arguments[1]
let pdfUrl = URL(fileURLWithPath: pdfPath)

guard let pdfDocument = PDFDocument(url: pdfUrl) else {
    print("Error: No se pudo cargar el documento PDF en la ruta '\(pdfPath)'.")
    exit(1)
}

let pageCount = pdfDocument.pageCount
if pageCount == 0 {
    print("Advertencia: El documento PDF está vacío o no se puede leer el texto.")
    exit(0)
}

var fullText = ""

for i in 0..<pageCount {
    guard let page = pdfDocument.page(at: i) else {
        continue
    }
    if let text = page.string {
        print("--- Página \(i + 1) ---")
        print(text)
    }
}
