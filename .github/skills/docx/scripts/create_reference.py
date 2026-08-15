#!/usr/bin/env python3
"""
Genera un reference.docx con estilos predefinidos para pandoc.

Uso:
    python create_reference.py [output_path]

Salida:
    reference.docx (o ruta especificada) con:
    - Calibri 11 como font por defecto
    - Tablas con bordes visibles
    - Header con color de fondo
"""

import sys
from pathlib import Path
from docx import Document
from docx.shared import Pt, RGBColor, Emu
from docx.oxml.ns import qn, nsdecls
from docx.oxml import parse_xml


def set_cell_borders(cell, color="000000", size="4"):
    """Aplica bordes a una celda."""
    tc = cell._tc
    tcPr = tc.get_or_add_tcPr()
    tcBorders = parse_xml(
        f'<w:tcBorders {nsdecls("w")}>'
        f'<w:top w:val="single" w:sz="{size}" w:space="0" w:color="{color}"/>'
        f'<w:left w:val="single" w:sz="{size}" w:space="0" w:color="{color}"/>'
        f'<w:bottom w:val="single" w:sz="{size}" w:space="0" w:color="{color}"/>'
        f'<w:right w:val="single" w:sz="{size}" w:space="0" w:color="{color}"/>'
        f'</w:tcBorders>'
    )
    tcPr.append(tcBorders)


def set_cell_shading(cell, color="2F5496"):
    """Aplica color de fondo a una celda."""
    tcPr = cell._tc.get_or_add_tcPr()
    shading = parse_xml(f'<w:shd {nsdecls("w")} w:fill="{color}" w:val="clear"/>')
    tcPr.append(shading)


def set_table_borders(table, color="000000", size="4"):
    """Aplica bordes a toda la tabla."""
    tbl = table._tbl
    tblPr = tbl.tblPr if tbl.tblPr is not None else parse_xml(f'<w:tblPr {nsdecls("w")}/>')
    
    tblBorders = parse_xml(
        f'<w:tblBorders {nsdecls("w")}>'
        f'<w:top w:val="single" w:sz="{size}" w:space="0" w:color="{color}"/>'
        f'<w:left w:val="single" w:sz="{size}" w:space="0" w:color="{color}"/>'
        f'<w:bottom w:val="single" w:sz="{size}" w:space="0" w:color="{color}"/>'
        f'<w:right w:val="single" w:sz="{size}" w:space="0" w:color="{color}"/>'
        f'<w:insideH w:val="single" w:sz="{size}" w:space="0" w:color="{color}"/>'
        f'<w:insideV w:val="single" w:sz="{size}" w:space="0" w:color="{color}"/>'
        f'</w:tblBorders>'
    )
    
    existing = tblPr.find(qn('w:tblBorders'))
    if existing is not None:
        tblPr.remove(existing)
    tblPr.append(tblBorders)


def create_reference_docx(output_path="reference.docx"):
    """Crea un documento reference con estilos para pandoc."""
    doc = Document()
    
    # Configurar Normal style
    style = doc.styles['Normal']
    style.font.name = 'Calibri'
    style.font.size = Pt(11)
    style.paragraph_format.space_after = Pt(6)
    style.paragraph_format.space_before = Pt(0)
    
    # Configurar estilos de encabezado
    heading_styles = {
        'Heading 1': 16,
        'Heading 2': 14,
        'Heading 3': 12,
        'Heading 4': 11,
        'Heading 5': 11,
    }
    
    for style_name, size in heading_styles.items():
        try:
            style = doc.styles[style_name]
            style.font.name = 'Calibri'
            style.font.size = Pt(size)
            style.font.bold = True
        except KeyError:
            pass
    
    # Configurar Body Text
    try:
        style = doc.styles['Body Text']
        style.font.name = 'Calibri'
        style.font.size = Pt(11)
    except KeyError:
        pass
    
    # Crear tabla de ejemplo para que pandoc detecte el estilo
    table = doc.add_table(rows=2, cols=3)
    table.style = 'Table Grid'
    
    # Configurar header
    for cell in table.rows[0].cells:
        set_cell_borders(cell)
        set_cell_shading(cell, "2F5496")
        cell.text = "Header"
        for para in cell.paragraphs:
            para.alignment = 1  # Center
            for run in para.runs:
                run.font.name = 'Calibri'
                run.font.size = Pt(11)
                run.font.bold = True
                run.font.color.rgb = RGBColor(255, 255, 255)
    
    # Configurar data rows
    for cell in table.rows[1].cells:
        set_cell_borders(cell)
        cell.text = "Data"
        for para in cell.paragraphs:
            for run in para.runs:
                run.font.name = 'Calibri'
                run.font.size = Pt(11)
    
    # Configurar bordes de la tabla
    set_table_borders(table)
    
    # Configurar ancho de tabla al 100%
    tbl = table._tbl
    tblPr = tbl.tblPr
    tblW = parse_xml(f'<w:tblW {nsdecls("w")} w:w="5000" w:type="pct"/>')
    existingW = tblPr.find(qn('w:tblW'))
    if existingW is not None:
        tblPr.remove(existingW)
    tblPr.append(tblW)
    
    # Guardar
    output = Path(output_path)
    output.parent.mkdir(parents=True, exist_ok=True)
    doc.save(output)
    print(f"✅ Reference docx creado: {output}")
    print(f"   Font: Calibri 11")
    print(f"   Tablas: bordes visibles + header azul")
    
    return output


if __name__ == "__main__":
    output = sys.argv[1] if len(sys.argv) > 1 else "reference.docx"
    create_reference_docx(output)
