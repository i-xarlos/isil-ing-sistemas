# Scripts y Skills — ISIL 2026-1

Utilidades en Swift para procesar archivos y datos en el contexto de cursos de Ingeniería de Sistemas.

---

## 📋 Scripts Disponibles

| Script | Propósito | Skill | Estado |
|--------|----------|-------|--------|
| `read_excel.swift` | Leer archivos Excel (.xlsx) | [READ_EXCEL.skill.md](./READ_EXCEL.skill.md) | ✅ Activo |
| `read_pdf.swift` | Extraer texto de PDFs | [READ_PDF.skill.md](./READ_PDF.skill.md) | ✅ Activo |
| `read_ppt.swift` | Leer contenido de PowerPoints | [READ_PPT.skill.md](./READ_PPT.skill.md) | ✅ Activo |
| `read_word.swift` | Procesar documentos Word (.docx) | [READ_WORD.skill.md](./READ_WORD.skill.md) | ✅ Activo |
| `convert_ppt_to_pdf.swift` | Convertir PowerPoint a PDF | — | ✅ Activo |
| `ocr_images.swift` | Extraer texto de imágenes con OCR | [OCR_IMAGENES.skill.md](./OCR_IMAGENES.skill.md) | ✅ Activo |
| `transcribe_audio.swift` | Transcribir archivos de audio | — | ✅ Activo |
| `remove_converted_pptx.swift` | Limpiar archivos PowerPoint temporales | — | ✅ Activo |

---

## 🚀 Quick Start

### Instalar Dependencias

```bash
# Python 3 (para leer Excel)
pip3 install -q openpyxl

# FFmpeg (para audio y conversión de formatos)
brew install ffmpeg

# Whisper (para transcripción)
pip3 install -q openai-whisper
```

### Uso Rápido

```bash
# Leer Excel
swift scripts/read_excel.swift "archivo.xlsx"

# Leer PDF
swift scripts/read_pdf.swift "documento.pdf"

# Extraer OCR de imágenes
swift scripts/ocr_images.swift "/carpeta/con/imagenes"

# Convertir PPT a PDF
swift scripts/convert_ppt_to_pdf.swift "presentacion.pptx"
```

---

## 📚 Cursos Que Usan Estos Scripts

- **Arquitectura Empresarial**: Excel de escenarios, análisis de documentos
- **Dirección Estratégica de Datos**: Procesamiento de datos, generación de reportes
- **Análisis Estadístico y Data Mining**: Extracción de datos de fuentes mixtas
- **Diseño de Soluciones con IA**: Integración de datos para análisis

---

## 🔧 Estructura de cada Script

Cada script sigue el patrón:

```swift
#!/usr/bin/env swift

import Foundation

// Verificación de argumentos
if CommandLine.arguments.count < 2 {
    print("Uso: swift script.swift <archivo>")
    exit(1)
}

// Lógica principal
func procesarArchivo(_ filePath: String) {
    // Implementación
}

procesarArchivo(CommandLine.arguments[1])
```

---

## 📖 Documentación de Skills

Cada script tiene un archivo `.skill.md` asociado con:

- Descripción y propósito
- Sintaxis de uso
- Ejemplos prácticos
- Requisitos y dependencias
- Troubleshooting
- Casos de uso en ISIL

**Ejemplo**: [READ_EXCEL.skill.md](./READ_EXCEL.skill.md)

---

## 🤝 Contribuciones

Para agregar un nuevo script:

1. Crear archivo: `nombre_script.swift`
2. Documentar en: `NOMBRE_SCRIPT.skill.md`
3. Agregar entrada a tabla de scripts arriba
4. Actualizar este README

---

## 🔗 Relacionados

- [Guía de Documentación](../.github/instructions/documentacion-humana.instructions.md)
- [OCR para Imágenes](./OCR_IMAGENES.skill.md)
- [AGENTS.md](../AGENTS.md) — Control de agentes

---

**Última actualización**: Mayo 2026  
**Workspace**: /Users/carlosgil/isil
