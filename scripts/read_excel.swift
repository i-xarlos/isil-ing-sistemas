#!/usr/bin/env swift

import Foundation

/// Lee archivos Excel (.xlsx) y extrae su contenido
/// Uso: swift read_excel.swift "ruta/al/archivo.xlsx"

func readExcelFile(_ filePath: String) {
    let fileManager = FileManager.default
    
    // Verificar que el archivo existe
    guard fileManager.fileExists(atPath: filePath) else {
        print("Error: El archivo no existe en la ruta: \(filePath)")
        exit(1)
    }
    
    // Verificar que es un archivo Excel
    guard filePath.lowercased().hasSuffix(".xlsx") || filePath.lowercased().hasSuffix(".xls") else {
        print("Error: El archivo debe ser Excel (.xlsx o .xls)")
        exit(1)
    }
    
    // Usar Python para leer el Excel (openpyxl es la opción más robusta)
    let process = Process()
    process.executableURL = URL(fileURLWithPath: "/usr/bin/env")
    
    let pythonScript = """
    import sys
    try:
        import openpyxl
    except ImportError:
        print("Error: openpyxl no está instalado. Instala con: pip install openpyxl")
        sys.exit(1)
    
    try:
        wb = openpyxl.load_workbook(sys.argv[1])
        
        for sheet_name in wb.sheetnames:
            ws = wb[sheet_name]
            print(f"--- Hoja: {sheet_name} ---")
            
            for row in ws.iter_rows(values_only=True):
                # Filtrar celdas vacías
                row_data = [str(cell) if cell is not None else "" for cell in row]
                print("\\t".join(row_data))
            
            print()
        
        wb.close()
    except Exception as e:
        print(f"Error al leer el archivo Excel: {e}")
        sys.exit(1)
    """
    
    let task = Process()
    task.executableURL = URL(fileURLWithPath: "/usr/bin/env")
    task.arguments = ["python3", "-c", pythonScript, filePath]
    
    let pipe = Pipe()
    task.standardOutput = pipe
    task.standardError = pipe
    
    do {
        try task.run()
        task.waitUntilExit()
        
        let data = pipe.fileHandleForReading.readDataToEndOfFile()
        if let output = String(data: data, encoding: .utf8) {
            print(output)
        }
    } catch {
        print("Error: No se pudo ejecutar Python")
        print("Asegúrate de que Python 3 está instalado y openpyxl está disponible")
        print("Instala openpyxl con: pip3 install openpyxl")
        exit(1)
    }
}

// Verificar argumentos
if CommandLine.arguments.count < 2 {
    print("Uso: swift read_excel.swift <ruta_archivo_excel>")
    print("\nEjemplo:")
    print("  swift read_excel.swift datos.xlsx")
    print("  swift read_excel.swift /Users/carlosgil/isil/2026-1/datos/datos.xlsx")
    print("\nPrerrequisitos:")
    print("  - Python 3 instalado")
    print("  - pip3 install openpyxl")
    exit(1)
}

let filePath = CommandLine.arguments[1]
readExcelFile(filePath)
