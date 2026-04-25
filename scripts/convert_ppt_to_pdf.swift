#!/usr/bin/env swift

import Foundation

// Script to convert PPTX files to PDF using LibreOffice
// Usage: swift convert_ppt_to_pdf.swift

func findPPTXFiles(in directory: String) -> [String] {
    let fileManager = FileManager.default
    let enumerator = fileManager.enumerator(atPath: directory)
    var pptxFiles: [String] = []

    while let file = enumerator?.nextObject() as? String {
        if file.hasSuffix(".pptx") {
            pptxFiles.append(directory + "/" + file)
        }
    }

    return pptxFiles
}

func convertToPDF(pptxPath: String) {
    let process = Process()
    process.executableURL = URL(fileURLWithPath: "/opt/homebrew/bin/soffice")
    process.arguments = ["--convert-to", "pdf", pptxPath, "--outdir", (pptxPath as NSString).deletingLastPathComponent]

    do {
        try process.run()
        process.waitUntilExit()
        if process.terminationStatus == 0 {
            print("Converted \(pptxPath) to PDF successfully.")
        } else {
            print("Failed to convert \(pptxPath).")
        }
    } catch {
        print("Error running soffice: \(error)")
    }
}

let workspacePath = "/Users/carlosgil/isil"  // Adjust if needed

let pptxFiles = findPPTXFiles(in: workspacePath)

if pptxFiles.isEmpty {
    print("No PPTX files found in \(workspacePath)")
} else {
    print("Found \(pptxFiles.count) PPTX files. Converting to PDF...")
    for file in pptxFiles {
        convertToPDF(pptxPath: file)
    }
    print("Conversion complete.")
}