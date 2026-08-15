---
name: docx
description: "Use this skill any time a .docx file is involved — as input, output, or both. This includes: creating Word documents from markdown, converting markdown to docx with proper table formatting, embedding images, managing styles (Calibri 11), generating reference docx templates, and editing existing docx files. Trigger whenever the user mentions 'word', 'docx', 'documento', or references a .docx filename."
license: Proprietary
---

# DOCX Skill — Generacion de Documentos Word

## Quick Reference

| Task | Command |
|------|---------|
| Markdown → Docx | `pandoc input.md -o output.docx --reference-doc=reference.docx` |
| Agregar bordes | `python scripts/add_table_borders.py output.docx` |
| Crear reference docx | `python scripts/create_reference.py` |
| Extraer texto | `python -m markitdown output.docx` |
| Verificar estilos | `python scripts/check_styles.py output.docx` |

---

## Flujo de Trabajo

### 1. Preparar Markdown

**Reglas para tablas en markdown (optimizadas para Word):**

- Usar pipe tables simples: `| Col1 | Col2 |`
- Separadores con minimo 3 guiones: `|------|------|`
- Evitar celdas con saltos de linea largos
- Contenido corto y escaneable

**Ejemplo de tabla correcta:**

```markdown
| Elemento | Tipo | Descripcion |
|----------|------|-------------|
| Goal | Goal | Ser #1 en delivery |
| Capability | Business Capability | Gestion de Pedidos |
```

**Evitar ASCII art** — reemplazar por tablas o listas:

```markdown
# MAL (ASCII art)
+-------------------+
|  Proceso A        |
+-------------------+

# BIEN (tabla)
| Proceso | Detalle |
|---------|---------|
| A       | Descripcion |
```

### 2. Generar Reference Docx

Ejecutar antes de la primera vez:

```bash
python .github/skills/docx/scripts/create_reference.py
```

Esto crea `reference.docx` con:
- Font: Calibri 11 para todos los estilos
- Tablas con bordes visibles
- Header con color de fondo

### 3. Convertir a Docx

```bash
pandoc input.md -o output.docx --reference-doc=reference.docx
```

### 4. Agregar Bordes a Tablas (Recomendado)

Pandoc no aplica bordes automaticamente. Ejecutar post-procesamiento:

```bash
python .github/skills/docx/scripts/add_table_borders.py output.docx
```

Esto agrega:
- Bordes visibles a todas las tablas
- Header con color de fondo (#2F5496)
- Bordes en cada celda individual

### 4. Verificar Resultado

```bash
# Verificar estilos
python .github/skills/docx/scripts/check_styles.py output.docx

# Extraer texto para revision rapida
python -m markitdown output.docx | head -50
```

---

## Estandares de Formato

### Font por Defecto

| Elemento | Font | Tamano |
|----------|------|--------|
| Body text | Calibri | 11pt |
| Heading 1 | Calibri | 16pt |
| Heading 2 | Calibri | 14pt |
| Heading 3 | Calibri | 12pt |
| Tablas | Calibri | 11pt |

### Tablas

- Bordes: solidos, 1px, color #000000
- Header: fondo #2F5496, texto blanco, bold
- Celdas: padding minimo 4px
- Ancho: 100% del documento

### Imagenes

- Formato: PNG o JPG
- Ancho maximo: 100% del documento
- Ruta relativa en markdown: `![alt](./image.png)`
- Pandoc embebe automaticamente

---

## Scripts Incluidos

### create_reference.py

Genera `reference.docx` con estilos predefinidos:

```bash
python .github/skills/docx/scripts/create_reference.py [output_path]
```

**Salida:** `reference.docx` (o ruta especificada)

### check_styles.py

Verifica estilos de un docx generado:

```bash
python .github/skills/docx/scripts/check_styles.py document.docx
```

**Salida:** Reporte de fonts, tamano de tabla, y estilos usados

### convert_images.py

Embebe imagenes referenciadas en markdown al docx:

```bash
python .github/skills/docx/scripts/convert_images.py input.md output.docx
```

---

## Templates para Actividades ISIL

Para actividades academicas, usar esta estructura en markdown:

```markdown
# Titulo de la Actividad (Actividad N)

**Curso:** Nombre del Curso (ISIL, 2026-1)  
**Docente:** Nombre del Docente  
**Fecha:** DD/MM/AAAA

---

## 1. Contexto

[Descripcion del problema]

## 2. Desarrollo

### 2.1 Subseccion

| Elemento | Detalle |
|----------|---------|
| ... | ... |

## 3. Conclusiones

- Punto 1
- Punto 2

## Fuentes

| # | Fuente | Tipo | URL |
|---|--------|------|-----|
| 1 | ... | ... | ... |
```

---

## Comandos Comunes

```bash
# Crear docx desde markdown
pandoc doc.md -o doc.docx --reference-doc=reference.docx

# Agregar bordes a tablas (post-procesamiento)
python .github/skills/docx/scripts/add_table_borders.py doc.docx

# Crear docx con imagen embebida
pandoc doc.md -o doc.docx --resource-path=.

# Verificar contenido
python -m markitdown doc.docx

# Verificar estilos
python .github/skills/docx/scripts/check_styles.py doc.docx

# Regenerar reference docx
python .github/skills/docx/scripts/create_reference.py
```

---

## Troubleshooting

| Problema | Solucion |
|----------|----------|
| Tablas sin bordes | Ejecutar `add_table_borders.py` post-conversion |
| Font incorrecta | Verificar que reference.docx tiene Calibri 11 |
| Imagen no aparece | Verificar ruta relativa y `--resource-path=.` |
| Markdown no convierte | Verificar que pandoc esta instalado |

---

## Dependencias

- `pandoc` — conversion markdown → docx
- `python-docx` — creacion de reference docx
- `markitdown` — extraccion de texto (opcional)

```bash
# Instalar dependencias
brew install pandoc
pip install python-docx markitdown
```

---

## Ejemplo Completo

```bash
# 1. Crear reference (una sola vez)
python .github/skills/docx/scripts/create_reference.py

# 2. Preparar markdown con tablas limpias
cat > mi_documento.md << 'EOF'
# Mi Documento

| Elemento | Valor |
|----------|-------|
| A | 1 |
| B | 2 |
EOF

# 3. Convertir a docx
pandoc mi_documento.md -o mi_documento.docx --reference-doc=reference.docx

# 4. Agregar bordes a tablas
python .github/skills/docx/scripts/add_table_borders.py mi_documento.docx

# 5. Verificar
python .github/skills/docx/scripts/check_styles.py mi_documento.docx
```
