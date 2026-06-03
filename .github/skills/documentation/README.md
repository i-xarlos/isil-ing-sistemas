# Documentation Skills

Skills para crear, organizar y mejorar documentación de clases y actividades académicas.

---

## 📚 Skills en Esta Carpeta

### 1. 📖 Clase Documentation
**Archivo:** [clase/SKILL.md](clase/SKILL.md)

Generar resúmenes detallados y profesionales de sesiones de clase, incluyendo:
- Recopilación de materiales (PPTX, imágenes, notas)
- Conversión de presentaciones a PDF
- Renombrado semántico de imágenes
- Generación de Markdown estructurado
- Validación de integridad

**Cuándo usarlo:** "Crea un resumen de la clase", "Organiza los materiales de clase"

---

### 2. 📝 Actividad Documentation
**Archivo:** [actividad/SKILL.md](actividad/SKILL.md)

Estructura y estándares para documentar actividades académicas:
- Encabezado obligatorio con metadatos
- 3 plantillas según tipo: análisis, diseño, benchmark
- Reglas de tablas y visualización de datos
- Gestión de fuentes (oficial, académica, tercero)
- Gráficos y embeddings de imágenes

**Cuándo usarlo:** "Documenta esta actividad", "Crea un entregable"

---

### 3. ✍️ Writing Standards
**Archivo:** [writing/SKILL.md](writing/SKILL.md)

Estándares de escritura clara y escaneable para documentos Markdown:
- Estructura: Qué es → Para qué → Cómo → Ejemplo → Conclusión
- Herramientas visuales: tablas, cuadros, listas, Mermaid
- Formato visual para maximizar escaneo
- Regla clave: responder 5 preguntas fundamentales
- Checklist de calidad

**Cuándo usarlo:** Cuando se crea cualquier documento Markdown

---

### 4. 🖼️ Image Documentation
**Archivo:** [images/SKILL.md](images/SKILL.md)

Procesar imágenes con OCR, renombrar y enriquecer documentación:
- Renombrado semántico obligatorio
- Extracción de texto con `scripts/ocr_images.swift`
- Análisis e integración en Markdown
- Embedding con texto descriptivo
- Manejo de errores OCR

**Cuándo usarlo:** "Procesa estas imágenes", "Documenta los gráficos"

---

## 🔗 Relaciones y Flujos

```
Crear clase
    ↓
clase-documentation
    ├─→ writing-standards
    ├─→ image-documentation
    └─→ actividad-documentation (si hay actividad asociada)
```

Todos los skills de esta carpeta siguen los estándares de `writing-standards`.

---

## 📋 Estructura Típica de Carpeta de Clase

Después de aplicar estos skills, la carpeta se ve así:

```
clase-X/
├── {tema-descriptivo}-clase-X.md       ← Documento (clase-documentation)
├── tema-concepto-curso.png              ← Imagen renombrada (image-documentation)
├── PRESENTACION.pdf                     ← Convertido de PPTX
└── PRESENTACION.pptx                    ← Original (referencia)
```

---

## ✅ Checklist: Cuando Termines

- [ ] Encabezado sigue formato obligatorio
- [ ] Imágenes tienen nombres semánticos
- [ ] OCR se ejecutó y enriqueció contenido
- [ ] Texto fluye siguiendo writing-standards
- [ ] Enlaces internos funcionan
- [ ] Número de clase coincide en título y carpeta
- [ ] README o índice actualizado

---

## 🚀 Próximas Mejoras Sugeridas

- [ ] Crear skill para indexación de cursos (README de cursos)
- [ ] Agregar soporte para videos (transcripción automática)
- [ ] Template para conclusiones de cursos
- [ ] Validador de enlaces cruzados entre clases
