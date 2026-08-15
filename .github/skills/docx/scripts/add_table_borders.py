#!/usr/bin/env python3
"""
Agrega bordes a tablas en un documento Word existente.

Uso:
    python add_table_borders.py document.docx [output.docx]

Este script es util cuando pandoc genera tablas sin bordes visibles.
"""

import sys
from pathlib import Path
from docx import Document
from docx.oxml.ns import qn, nsdecls
from docx.oxml import parse_xml


def add_borders_to_table(table, color="000000", size="4"):
    """Agrega bordes a una tabla."""
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


def add_borders_to_cell(cell, color="000000", size="4"):
    """Agrega bordes a una celda individual."""
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


def add_header_shading(cell, color="2F5496"):
    """Agrega color de fondo a la primera fila (header)."""
    tcPr = cell._tc.get_or_add_tcPr()
    shading = parse_xml(f'<w:shd {nsdecls("w")} w:fill="{color}" w:val="clear"/>')
    tcPr.append(shading)


def process_docx(input_path, output_path=None):
    """Procesa un documento docx agregando bordes a todas las tablas."""
    path = Path(input_path)
    
    if not path.exists():
        print(f"❌ Error: No se encontro {input_path}")
        return False
    
    doc = Document(input_path)
    
    print(f"📄 Procesando: {path.name}")
    print(f"   Tablas encontradas: {len(doc.tables)}")
    
    for i, table in enumerate(doc.tables):
        print(f"   Tabla {i+1}: {len(table.rows)}x{len(table.columns)}")
        
        # Agregar bordes a la tabla completa
        add_borders_to_table(table)
        
        # Agregar bordes y estilo a cada celda
        for row_idx, row in enumerate(table.rows):
            for cell in row.cells:
                add_borders_to_cell(cell)
                
                # Primera fila = header con color
                if row_idx == 0:
                    add_header_shading(cell, "2F5496")
                    for para in cell.paragraphs:
                        for run in para.runs:
                            run.font.color.rgb = None  # Reset to auto (white in docx)
                            run.font.bold = True
    
    # Guardar
    if output_path is None:
        output_path = path
    
    doc.save(output_path)
    print(f"✅ Guardado: {output_path}")
    
    return True


if __name__ == "__main__":
    if len(sys.argv) < 2:
        print("Uso: python add_table_borders.py document.docx [output.docx]")
        sys.exit(1)
    
    input_path = sys.argv[1]
    output_path = sys.argv[2] if len(sys.argv) > 2 else None
    
    success = process_docx(input_path, output_path)
    sys.exit(0 if success else 1)
