---
name: excel-reader
description: Extract content from Excel files (.xlsx) using Swift script. Use when analyzing workbook structure, extracting data for documentation, or validating Excel file format.
---

# Excel — Lectura de Archivos

**Propósito:** Extraer contenido de archivos Excel (.xlsx) desde terminal usando el script `read_excel.swift`.

**Ubicación del script:** `/scripts/read_excel.swift`

---

## 📋 Descripción

El script `read_excel.swift` lee archivos Excel (.xlsx) y extrae su contenido de forma estructurada. Útil para:

- Analizar estructura y contenido de workbooks Excel
- Extraer datos para documentación
- Validar formato de archivos Excel
- Integrar datos en procesos de Arquitectura Empresarial

---

## 🚀 Uso

### Sintaxis Básica

```bash
cd /Users/carlosgil/isil
swift scripts/read_excel.swift "<ruta_archivo_excel>"
```

### Ejemplos

#### Leer archivo en Downloads

```bash
swift scripts/read_excel.swift "$HOME/Downloads/Ejemplo - Escenario de Negocios.xlsx"
```

#### Leer archivo en el workspace

```bash
swift scripts/read_excel.swift "2026-1/datos/escenarios.xlsx"
```

#### Leer y capturar en variable

```bash
OUTPUT=$(swift scripts/read_excel.swift "$HOME/Downloads/datos.xlsx")
echo "$OUTPUT"
```

---

## 📦 Requisitos

- **Swift** 5.5+ (instalado por defecto en macOS)
- **Python 3.x**
- **openpyxl** (librería Python para Excel)

### Instalar openpyxl

Si recibe error "openpyxl no está instalado":

```bash
pip3 install openpyxl
```

O de forma más segura:

```bash
pip3 install -q openpyxl
```

---

## 📊 Salida

El script lee todas las hojas del Excel y muestra:

1. Nombre de cada hoja
2. Contenido de cada fila, con columnas separadas por tabulaciones
3. Líneas en blanco entre hojas

### Ejemplo de Salida

```
--- Hoja: Escenario Negocios ---
Columna1	Columna2	Columna3	Columna4
Fila de datos...	Valor2	Valor3	Valor4
Otra fila	Dato	Dato	Dato

--- Hoja: Análisis ---
...
```

---

## ⚙️ Casos de Uso

### Caso 1: Documentar Estructura Excel

```bash
# Leer estructura del Excel
swift scripts/read_excel.swift "/Users/carlosgil/Downloads/Formato a llenar - Escenario de Negocios.xlsx"

# Capturar en archivo para referencia
swift scripts/read_excel.swift "archivo.xlsx" > /tmp/estructura_excel.txt
```

### Caso 2: Validar Datos Antes de Análisis

```bash
# Verificar si archivo tiene contenido
swift scripts/read_excel.swift "datos.xlsx" | wc -l
```

### Caso 3: Extraer Datos para Markdown

```bash
# Leer Excel y documentar en Markdown
swift scripts/read_excel.swift "escenario.xlsx" | head -50
```

---

## 🔧 Integración con Otros Scripts

### Con read_pdf.swift

Extraer datos Excel y combinar con análisis PDF:

```bash
# Leer Excel
EXCEL_DATA=$(swift scripts/read_excel.swift "datos.xlsx")

# Leer PDF
PDF_DATA=$(swift scripts/read_pdf.swift "documento.pdf")

# Procesar combinado
echo "=== DATOS EXCEL ===" 
echo "$EXCEL_DATA"
echo ""
echo "=== ANÁLISIS PDF ===" 
echo "$PDF_DATA"
```

### Con Python para Análisis Avanzado

```bash
# Leer Excel con Swift y pasar a Python
swift scripts/read_excel.swift "datos.xlsx" | python3 << 'EOF'
import sys
for line in sys.stdin:
    # Procesar línea
    print(f"Procesada: {line.strip()}")
EOF
```

---

## 🐛 Troubleshooting

### Error: "El archivo no existe en la ruta"

**Problema:** Ruta incorrecta o archivo no encontrado

**Solución:**
```bash
# Verificar ruta exacta
ls -la "$HOME/Downloads/archivo.xlsx"

# Usar ruta completa
swift scripts/read_excel.swift "$HOME/Downloads/archivo.xlsx"
```

### Error: "El archivo debe ser Excel (.xlsx o .xls)"

**Problema:** Archivo no es Excel o tiene extensión incorrecta

**Solución:**
```bash
# Verificar tipo de archivo
file "documento.xlsx"

# Si es necesario renombrar
mv documento "documento.xlsx"
```

### Error: "openpyxl no está instalado"

**Problema:** Librería Python faltante

**Solución:**
```bash
# Instalar openpyxl
pip3 install openpyxl

# O especificar versión
pip3 install openpyxl==3.10.0
```

### Script lento o cuelga

**Problema:** Archivo Excel muy grande o con datos complejos

**Solución:**
```bash
# Prueba con timeout
timeout 30s swift scripts/read_excel.swift "archivo.xlsx"

# O limita líneas de salida
swift scripts/read_excel.swift "archivo.xlsx" | head -100
```
