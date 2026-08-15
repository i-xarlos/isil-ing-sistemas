#!/usr/bin/env python3
"""
Verifica estilos de un documento Word (.docx).

Uso:
    python check_styles.py document.docx

Salida:
    - Fonts usados
    - Tamano de tablas
    - Estilos detectados
    - Verificacion de Calibri 11
"""

import sys
from pathlib import Path
from docx import Document


def check_docx_styles(docx_path):
    """Verifica estilos de un documento docx."""
    path = Path(docx_path)
    
    if not path.exists():
        print(f"❌ Error: No se encontro {docx_path}")
        return False
    
    doc = Document(docx_path)
    
    print(f"📄 Documento: {path.name}")
    print(f"   Tamano: {path.stat().st_size:,} bytes")
    print()
    
    # 1. Verificar estilos de parrafos
    print("📝 Estilos de parrafos:")
    styles_used = {}
    for para in doc.paragraphs:
        style_name = para.style.name
        styles_used[style_name] = styles_used.get(style_name, 0) + 1
    
    for style_name, count in sorted(styles_used.items()):
        try:
            style = doc.styles[style_name]
            font_name = style.font.name or "hereda"
            font_size = style.font.size
            size_pt = f"{font_size.pt:.0f}pt" if font_size else "hereda"
            print(f"   {style_name}: {count}x (font: {font_name}, size: {size_pt})")
        except:
            print(f"   {style_name}: {count}x")
    
    print()
    
    # 2. Verificar fonts especificos
    print("🔤 Fonts detectados:")
    fonts_found = set()
    for para in doc.paragraphs:
        for run in para.runs:
            if run.font.name:
                fonts_found.add(run.font.name)
    
    if fonts_found:
        for font in sorted(fonts_found):
            print(f"   - {font}")
    else:
        print("   (fonts heredados de estilos)")
    
    print()
    
    # 3. Verificar tablas
    print(f"📊 Tablas: {len(doc.tables)}")
    
    if doc.tables:
        table = doc.tables[0]
        print(f"   Primera tabla: {len(table.rows)} filas x {len(table.columns)} columnas")
        
        # Verificar bordes
        from docx.oxml.ns import qn
        tbl = table._tbl
        tblPr = tbl.tblPr
        tblBorders = tblPr.find(qn('w:tblBorders'))
        
        if tblBorders is not None:
            print("   ✅ Bordes detectados")
        else:
            print("   ⚠️  Sin bordes configurados")
    
    print()
    
    # 4. Verificar imagenes
    print("🖼️  Imagenes:")
    image_count = 0
    for rel in doc.part.rels.values():
        if "image" in rel.reltype:
            image_count += 1
    
    print(f"   {image_count} imagenes embebidas")
    
    print()
    
    # 5. Verificacion final
    print("✅ Verificacion:")
    
    # Verificar Calibri
    calibri_ok = False
    try:
        normal = doc.styles['Normal']
        if normal.font.name == 'Calibri':
            calibri_ok = True
            print("   ✅ Calibri configurado como font por defecto")
        else:
            print(f"   ⚠️  Font por defecto: {normal.font.name}")
    except:
        print("   ⚠️  No se pudo verificar font por defecto")
    
    # Verificar tamano
    size_ok = False
    try:
        normal = doc.styles['Normal']
        if normal.font.size and normal.font.size.pt == 11:
            size_ok = True
            print("   ✅ Tamano 11pt configurado")
        else:
            size = normal.font.size.pt if normal.font.size else "desconocido"
            print(f"   ⚠️  Tamano: {size}pt")
    except:
        print("   ⚠️  No se pudo verificar tamano")
    
    print()
    
    return calibri_ok and size_ok


if __name__ == "__main__":
    if len(sys.argv) < 2:
        print("Uso: python check_styles.py document.docx")
        sys.exit(1)
    
    success = check_docx_styles(sys.argv[1])
    sys.exit(0 if success else 1)
