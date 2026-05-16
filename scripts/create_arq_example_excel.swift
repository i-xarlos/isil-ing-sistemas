#!/usr/bin/env swift

import Foundation

/// Crea un archivo Excel de ejemplo con un escenario de AE (Arquitectura Empresarial)
/// Uso: swift create_arq_example_excel.swift

let pythonScript = """
import openpyxl
from openpyxl.styles import Font, PatternFill, Alignment, Border, Side
from datetime import datetime

# Crear workbook
wb = openpyxl.Workbook()
ws = wb.active
ws.title = "Escenario AE"

# Configurar estilos
header_fill = PatternFill(start_color="1F4E78", end_color="1F4E78", fill_type="solid")
header_font = Font(color="FFFFFF", bold=True, size=11)
subheader_fill = PatternFill(start_color="D9E1F2", end_color="D9E1F2", fill_type="solid")
subheader_font = Font(bold=True, size=10)
center_alignment = Alignment(horizontal="center", vertical="center", wrap_text=True)
left_alignment = Alignment(horizontal="left", vertical="top", wrap_text=True)
border = Border(
    left=Side(style='thin'),
    right=Side(style='thin'),
    top=Side(style='thin'),
    bottom=Side(style='thin')
)

# Función auxiliar para aplicar estilos
def style_cell(cell, fill=None, font=None, alignment=None):
    if fill:
        cell.fill = fill
    if font:
        cell.font = font
    if alignment:
        cell.alignment = alignment
    cell.border = border

# HOJA 1: CONTEXTO DEL ESCENARIO
ws['A1'] = "ESCENARIO DE TRANSFORMACIÓN - BANCO DIGITAL"
style_cell(ws['A1'], fill=header_fill, font=header_font, alignment=center_alignment)
ws.merge_cells('A1:G1')
ws.row_dimensions[1].height = 25

ws['A2'] = "Organización: Banco Andino S.A."
ws['A3'] = "Industria: Banca Comercial"
ws['A4'] = "Año: 2026"
ws['A5'] = "Responsable: Dirección de Tecnología"

for row in range(2, 6):
    ws[f'A{row}'].font = Font(size=10)

ws.row_dimensions[6].height = 2

# HOJA 2: MATRIZ DOMINIOS AE - AS-IS vs TO-BE
ws['A7'] = "MATRIZ DE DOMINIOS (AS-IS vs TO-BE)"
style_cell(ws['A7'], fill=subheader_fill, font=subheader_font)
ws.merge_cells('A7:G7')
ws.row_dimensions[7].height = 20

# Headers de tabla
headers = ['Dominio', 'Aspecto', 'AS-IS (Estado Actual)', 'Brecha', 'TO-BE (Objetivo)', 'Timeline', 'Prioridad']
for col, header in enumerate(headers, 1):
    cell = ws.cell(row=8, column=col)
    cell.value = header
    style_cell(cell, fill=header_fill, font=header_font, alignment=center_alignment)
    ws.column_dimensions[chr(64+col)].width = 20

# Datos AS-IS vs TO-BE
data = [
    ['NEGOCIO', 'Canales', 'Solo sucursal física', 'No hay banca 24/7', 'Banca digital + sucursales', '12 meses', 'Alta'],
    ['NEGOCIO', 'Procesos', 'Manuales, lento', '3-5 días para créditos', 'Automatizados, análisis en tiempo real', '12 meses', 'Alta'],
    ['DATOS', 'Almacenamiento', 'Bases datos dispersas', 'Sin single source of truth', 'Data warehouse centralizado', '6 meses', 'Alta'],
    ['DATOS', 'Calidad', 'Datos inconsistentes', 'Errores de decisión', 'MDM + data governance', '9 meses', 'Alta'],
    ['APLICACIONES', 'Plataformas', '15+ sistemas legacy', 'Bajo rendimiento, difícil mantener', 'Arquitectura moderna (5 aplicaciones)', '18 meses', 'Media'],
    ['APLICACIONES', 'Integraciones', 'Punto a punto manual', 'Acoplamiento fuerte', 'API gateway centralizado', '9 meses', 'Media'],
    ['TECNOLOGÍA', 'Infraestructura', 'On-premise', 'Costosa, inflexible', 'Híbrida (Cloud + On-prem)', '12 meses', 'Alta'],
    ['TECNOLOGÍA', 'Seguridad', 'Perímetro clásico', 'Vulnerabilidades en cloud', 'Zero Trust Architecture', '12 meses', 'Crítica'],
]

for row_idx, row_data in enumerate(data, 9):
    for col_idx, value in enumerate(row_data, 1):
        cell = ws.cell(row=row_idx, column=col_idx)
        cell.value = value
        style_cell(cell, alignment=left_alignment)

# HOJA 3: RUTA DE TRANSFORMACIÓN (INICIATIVAS)
ws['A20'] = "RUTA DE TRANSFORMACIÓN (INICIATIVAS PRIORITARIAS)"
style_cell(ws['A20'], fill=subheader_fill, font=subheader_font)
ws.merge_cells('A20:H20')
ws.row_dimensions[20].height = 20

# Headers iniciativas
init_headers = ['ID', 'Iniciativa', 'Dominio', 'Duración', 'Equipo', 'Inversión Est.', 'Riesgo', 'Beneficio']
for col, header in enumerate(init_headers, 1):
    cell = ws.cell(row=21, column=col)
    cell.value = header
    style_cell(cell, fill=header_fill, font=header_font, alignment=center_alignment)

# Iniciativas
initiatives = [
    ['I-001', 'Plataforma digital (Mobile + Web)', 'Negocio + Apps', '12 meses', '20 personas', '\\$500K', 'Medio', 'Crítico'],
    ['I-002', 'Data warehouse y BI', 'Datos', '6 meses', '8 personas', '\\$150K', 'Bajo', 'Alto'],
    ['I-003', 'Automatización de procesos (RPA)', 'Negocio', '9 meses', '6 personas', '\\$200K', 'Bajo', 'Alto'],
    ['I-004', 'Migración a cloud (AWS/Azure)', 'Tecnología', '12 meses', '12 personas', '\\$300K', 'Medio', 'Alto'],
    ['I-005', 'API Gateway + Integración', 'Aplicaciones', '9 meses', '10 personas', '\\$120K', 'Bajo', 'Medio'],
    ['I-006', 'Seguridad Zero Trust', 'Tecnología', '12 meses', '8 personas', '\\$250K', 'Medio', 'Crítico'],
]

for row_idx, row_data in enumerate(initiatives, 22):
    for col_idx, value in enumerate(row_data, 1):
        cell = ws.cell(row=row_idx, column=col_idx)
        cell.value = value
        style_cell(cell, alignment=center_alignment if col_idx in [1, 4, 7, 8] else left_alignment)

# HOJA 4: DEPENDENCIAS Y GOBERNANZA
ws['A30'] = "SECUENCIA Y DEPENDENCIAS"
style_cell(ws['A30'], fill=subheader_fill, font=subheader_font)
ws.merge_cells('A30:D30')
ws.row_dimensions[30].height = 20

dep_headers = ['Fase', 'Mes', 'Iniciativas Ejecutando', 'Dependencias']
for col, header in enumerate(dep_headers, 1):
    cell = ws.cell(row=31, column=col)
    cell.value = header
    style_cell(cell, fill=header_fill, font=header_font, alignment=center_alignment)

phases = [
    ['Fase 1: Fundación', 'Meses 1-3', 'I-001 (inicio), I-002 (inicio)', 'Ninguna'],
    ['Fase 2: Integración', 'Meses 4-9', 'I-005, I-003', 'I-001 en 50%, I-002 completo'],
    ['Fase 3: Escalabilidad', 'Meses 10-15', 'I-004, I-006', 'I-005 completo'],
    ['Fase 4: Optimización', 'Meses 16-18', 'Refinamientos y capacitación', 'Todas las iniciativas en MVP'],
]

for row_idx, row_data in enumerate(phases, 32):
    for col_idx, value in enumerate(row_data, 1):
        cell = ws.cell(row=row_idx, column=col_idx)
        cell.value = value
        style_cell(cell, alignment=left_alignment)

# HOJA 5: MÉTRICAS Y KPIs
ws['A38'] = "MÉTRICAS DE ÉXITO (KPIs)"
style_cell(ws['A38'], fill=subheader_fill, font=subheader_font)
ws.merge_cells('A38:F38')
ws.row_dimensions[38].height = 20

kpi_headers = ['Dominio', 'KPI', 'Métrica AS-IS', 'Meta TO-BE', 'Responsable', 'Frecuencia']
for col, header in enumerate(kpi_headers, 1):
    cell = ws.cell(row=39, column=col)
    cell.value = header
    style_cell(cell, fill=header_fill, font=header_font, alignment=center_alignment)

kpis = [
    ['Negocio', 'Clientes digital/Total', '5%', '80%', 'Dir. Comercial', 'Mensual'],
    ['Negocio', 'Tiempo promedio crédito', '5 días', '1 día', 'Dir. Crédito', 'Mensual'],
    ['Datos', 'Cobertura Data warehouse', '0%', '100%', 'Dir. Datos', 'Mensual'],
    ['Datos', 'Disponibilidad datos', '85%', '99.5%', 'Dir. Datos', 'Diaria'],
    ['Aplicaciones', 'Sistemas integrados', '3/15', '15/15', 'Dir. Tecnología', 'Trimestral'],
    ['Tecnología', 'Uptime infraestructura', '97%', '99.99%', 'Dir. Operaciones', 'Diaria'],
    ['Tecnología', 'Incidentes seguridad', '12/año', '< 3/año', 'Dir. Seguridad', 'Mensual'],
]

for row_idx, row_data in enumerate(kpis, 40):
    for col_idx, value in enumerate(row_data, 1):
        cell = ws.cell(row=row_idx, column=col_idx)
        cell.value = value
        style_cell(cell, alignment=center_alignment if col_idx in [3, 4] else left_alignment)

# Ajustar anchos de columna globalmente
ws.column_dimensions['A'].width = 18
ws.column_dimensions['B'].width = 25
ws.column_dimensions['C'].width = 22
ws.column_dimensions['D'].width = 18
ws.column_dimensions['E'].width = 22
ws.column_dimensions['F'].width = 18
ws.column_dimensions['G'].width = 15
ws.column_dimensions['H'].width = 18

# Guardar archivo
output_path = "2026-1/arq-empresarial/Ejemplo-Escenario-Transformacion-AE.xlsx"
wb.save(output_path)
print(f"✅ Archivo creado: {output_path}")
print(f"📊 Contiene:")
print(f"   - Contexto del escenario (Banco Andino S.A.)")
print(f"   - Matriz de dominios AS-IS vs TO-BE")
print(f"   - Iniciativas prioritarias y presupuestos")
print(f"   - Roadmap de transformación (4 fases)")
print(f"   - KPIs de éxito por dominio")
"""

// Ejecutar script Python
let process = Process()
process.executableURL = URL(fileURLWithPath: "/usr/bin/env")
process.arguments = ["python3", "-c", pythonScript]

let pipe = Pipe()
process.standardOutput = pipe
process.standardError = pipe

do {
    try process.run()
    process.waitUntilExit()
    
    let data = pipe.fileHandleForReading.readDataToEndOfFile()
    if let output = String(data: data, encoding: .utf8) {
        print(output)
    }
    
    if process.terminationStatus != 0 {
        print("⚠️ Error: Verifica que openpyxl esté instalado")
        print("   pip3 install openpyxl")
    }
} catch {
    print("❌ Error: No se pudo ejecutar Python")
    print("   Asegúrate de que Python 3 está instalado")
}
