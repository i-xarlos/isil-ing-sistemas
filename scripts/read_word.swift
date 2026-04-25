#!/usr/bin/env swift

import Foundation

func findWordFiles(in directory: URL) -> [URL] {
    let fileManager = FileManager.default
    var wordFiles: [URL] = []

    if let enumerator = fileManager.enumerator(at: directory, includingPropertiesForKeys: [.isRegularFileKey], options: [.skipsHiddenFiles]) {
        for case let fileURL as URL in enumerator {
            if fileURL.pathExtension.lowercased() == "docx" {
                wordFiles.append(fileURL)
            }
        }
    }

    return wordFiles
}

func readWordFile(at wordURL: URL) -> String? {
    let process = Process()
    process.executableURL = URL(fileURLWithPath: "/opt/homebrew/bin/pandoc")
    process.arguments = [wordURL.path, "-t", "plain"]

    let pipe = Pipe()
    process.standardOutput = pipe

    do {
        try process.run()
        process.waitUntilExit()

        let data = pipe.fileHandleForReading.readDataToEndOfFile()
        if let output = String(data: data, encoding: .utf8) {
            return output.trimmingCharacters(in: .whitespacesAndNewlines)
        }
    } catch {
        print("Error reading \(wordURL.lastPathComponent): \(error)")
    }

    return nil
}

func readWordFileAsMarkdown(at wordURL: URL) -> String? {
    let process = Process()
    process.executableURL = URL(fileURLWithPath: "/opt/homebrew/bin/pandoc")
    process.arguments = [wordURL.path, "-t", "markdown"]

    let pipe = Pipe()
    process.standardOutput = pipe

    do {
        try process.run()
        process.waitUntilExit()

        let data = pipe.fileHandleForReading.readDataToEndOfFile()
        if let output = String(data: data, encoding: .utf8) {
            return output
        }
    } catch {
        print("Error reading \(wordURL.lastPathComponent): \(error)")
    }

    return nil
}

// MARK: - Main

let args = CommandLine.arguments

if args.count < 2 {
    print("Usage: swift read_word.swift <option> [file_path]")
    print("")
    print("Options:")
    print("  list              List all .docx files in workspace")
    print("  read <file>       Read Word file as plain text")
    print("  read-md <file>    Read Word file as Markdown")
    print("  read-all          Read all Word files and display content")
    print("")
    print("Examples:")
    print("  swift read_word.swift list")
    print("  swift read_word.swift read /path/to/file.docx")
    print("  swift read_word.swift read-md /path/to/file.docx")
    exit(1)
}

let option = args[1]
let workspaceURL = URL(fileURLWithPath: FileManager.default.currentDirectoryPath)

switch option {
case "list":
    let wordFiles = findWordFiles(in: workspaceURL)
    if wordFiles.isEmpty {
        print("No .docx files found in workspace.")
    } else {
        print("Found \(wordFiles.count) Word file(s):")
        for file in wordFiles {
            print("  - \(file.relativePath)")
        }
    }

case "read":
    if args.count < 3 {
        print("Error: Missing file path")
        print("Usage: swift read_word.swift read <file_path>")
        exit(1)
    }
    let filePath = args[2]
    let fileURL = URL(fileURLWithPath: filePath)
    
    if let content = readWordFile(at: fileURL) {
        print(content)
    } else {
        print("Failed to read file: \(filePath)")
    }

case "read-md":
    if args.count < 3 {
        print("Error: Missing file path")
        print("Usage: swift read_word.swift read-md <file_path>")
        exit(1)
    }
    let filePath = args[2]
    let fileURL = URL(fileURLWithPath: filePath)
    
    if let content = readWordFileAsMarkdown(at: fileURL) {
        print(content)
    } else {
        print("Failed to read file: \(filePath)")
    }

case "read-all":
    let wordFiles = findWordFiles(in: workspaceURL)
    if wordFiles.isEmpty {
        print("No .docx files found in workspace.")
    } else {
        for (index, file) in wordFiles.enumerated() {
            print("\n=== File \(index + 1)/\(wordFiles.count): \(file.lastPathComponent) ===\n")
            if let content = readWordFile(at: file) {
                print(content)
            } else {
                print("Failed to read file")
            }
        }
    }

default:
    print("Unknown option: \(option)")
    print("Use 'list', 'read', 'read-md', or 'read-all'")
    exit(1)
}
