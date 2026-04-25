#!/usr/bin/env swift

import Foundation

func findPPTXFiles(in directory: URL) -> [URL] {
    let fileManager = FileManager.default
    var pptxFiles: [URL] = []

    if let enumerator = fileManager.enumerator(at: directory, includingPropertiesForKeys: [.isRegularFileKey], options: [.skipsHiddenFiles]) {
        for case let fileURL as URL in enumerator {
            if fileURL.pathExtension.lowercased() == "pptx" {
                pptxFiles.append(fileURL)
            }
        }
    }

    return pptxFiles
}

func removeConvertedPPTX(at pptxURL: URL) {
    let fileManager = FileManager.default
    let pdfURL = pptxURL.deletingPathExtension().appendingPathExtension("pdf")

    if fileManager.fileExists(atPath: pdfURL.path) {
        do {
            try fileManager.removeItem(at: pptxURL)
            print("Removed \(pptxURL.lastPathComponent) (PDF exists: \(pdfURL.lastPathComponent))")
        } catch {
            print("Error removing \(pptxURL.lastPathComponent): \(error)")
        }
    } else {
        print("Skipped \(pptxURL.lastPathComponent) (PDF not found: \(pdfURL.lastPathComponent))")
    }
}

let workspaceURL = URL(fileURLWithPath: FileManager.default.currentDirectoryPath)

print("Finding PPTX files in workspace...")
let pptxFiles = findPPTXFiles(in: workspaceURL)

print("Found \(pptxFiles.count) PPTX files. Checking and removing converted ones...")

for pptxFile in pptxFiles {
    removeConvertedPPTX(at: pptxFile)
}

print("Removal complete.")