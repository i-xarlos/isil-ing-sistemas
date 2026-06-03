# Utilities Skills

Skills para herramientas, scripts y procesos transversales que facilitan el flujo de trabajo.

---

## 🛠️ Skills en Esta Carpeta

### 1. ✏️ Write-a-Skill
**Archivo:** [write-a-skill/SKILL.md](write-a-skill/SKILL.md)

Crear nuevos skills personalizados con estructura, validación y documentación:
- Proceso 3 pasos: recopilar → draftar → revisar
- Estructura de carpeta estándar
- Template de SKILL.md completo
- Checklist de revisión

**Cuándo usarlo:** "Crea un nuevo skill", "Quiero automatizar este proceso"

---

### 2. 🤝 Handoff
**Archivo:** [handoff/SKILL.md](handoff/SKILL.md)

Transferir contexto de conversación a otro agente:
- Compactar información relevante
- Sugerir skills para siguiente sesión
- Redactar información sensible
- Guardar en directorio temporal del SO

**Cuándo usarlo:** "Handoff a otro agente", "Transfiere el contexto"

---

### 3. 📊 Excel Reader
**Archivo:** [excel-reader/SKILL.md](excel-reader/SKILL.md)

Extraer contenido de archivos Excel usando Swift:
- Lectura de múltiples hojas
- Extracción estructurada de datos
- Integración con otros scripts (PDF, Python)
- Troubleshooting de errores comunes

**Script:** `/scripts/read_excel.swift`

**Cuándo usarlo:** "Lee este Excel", "Extrae datos del archivo"

---

## 🔗 Relaciones y Flujos

```
Gestión de archivos
    ├─→ excel-reader
    ├─→ Otros readers (PDF, PPT, Word) en /scripts/
    └─→ Exportación a formatos varios

Transferencia de contexto
    └─→ handoff
        └─→ Siguiente agente usa documentation skills

Extensión del sistema
    └─→ write-a-skill
        └─→ Nuevo skill disponible globalmente
```

---

## 📦 Scripts Asociados

Los skills de esta carpeta tienen soporte en `/scripts/`:

| Script | Skill Correspondiente | Propósito |
|---|---|---|
| `read_excel.swift` | excel-reader | Leer archivos Excel |
| `read_pdf.swift` | — | Leer PDF |
| `read_ppt.swift` | — | Leer presentaciones |
| `read_word.swift` | — | Leer documentos Word |
| `transcribe_audio.swift` | — | Transcribir audio |

---

## 🚀 Uso Típico

### Escenario 1: Extraer datos Excel para documentación

```bash
# 1. Usar skill excel-reader
swift scripts/read_excel.swift archivo.xlsx

# 2. Integrar en documentación clase
# Usa writing-standards para formatteo
```

### Escenario 2: Transferir sesión

```bash
# 1. Usuario solicita handoff
# "Transfiere este trabajo a otro agente"

# 2. Skill handoff genera documento
# Almacena en /tmp con sugerencias de skills

# 3. Otro agente retoma con contexto claro
```

### Escenario 3: Agregar nueva automatización

```bash
# 1. Usuario solicita nuevo skill
# "Crea un skill para X"

# 2. Usa write-a-skill
# Genera SKILL.md con estructura

# 3. Nuevo skill disponible para otros
```

---

## ✅ Checklist: Antes de Usar

- [ ] Script existe y es accesible
- [ ] Dependencias instaladas (Python, openpyxl, etc.)
- [ ] Rutas de archivos son correctas
- [ ] Permisos de ejecución OK

---

## 🔧 Troubleshooting Común

### Excel no se lee
```bash
# Verifica que openpyxl esté instalado
pip3 install openpyxl

# Verifica el archivo
file tu-archivo.xlsx
```

### Script Swift no ejecuta
```bash
# Verifica Swift version
swift --version

# Intenta hacer ejecutable
chmod +x scripts/read_excel.swift
```

---

## 🚀 Próximas Mejoras Sugeridas

- [ ] Skill para convertir PPTX a PDF (wrapper de soffice)
- [ ] Skill para validar estructura de repositorio
- [ ] Skill para generar índices automáticos
- [ ] Skill para sincronización con Google Drive
