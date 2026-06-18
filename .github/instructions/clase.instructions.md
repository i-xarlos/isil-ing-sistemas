---
name: clase-documentation
description: Generate comprehensive class summaries with structured Markdown, renamed images, and standardized metadata. Use when creating detailed class notes or documenting session content.
---

# Clase — Documentación Completa

Estandarizar la generación de resúmenes detallados, organizados y profesionales para **cualquier clase o sesión**.

---

## 📋 Encabezado Obligatorio

Todo documento de clase debe comenzar con este formato:

```md
# {Tema de la sesión} (Clase X)

**Curso:** {Nombre del curso} (ISIL, {year-semestre})  
**Docente:** {Nombre del docente}  
**Fecha:** DD/MM/AAAA
```

### Reglas del Encabezado

- Primera línea: título `#` con tema y número de clase entre paréntesis
- Número de clase debe coincidir con la carpeta `clase-X/`
- Formato de fecha: `DD/MM/AAAA`
- Si falta información, usa `[pendiente]`
- Mantén dos espacios al final de líneas de metadatos para respeta saltos

---

## 🎯 Workflow: Resumen Detallado de Clase

Sigue este flujo sistemáticamente cuando se solicite crear documentación completa de una sesión:

### Paso 1: Recopilar Materiales
- ✅ Identificar archivos de presentación (PPTX, PDF, Keynote, etc.)
- ✅ Localizar imágenes de la clase (capturas, diagramas, gráficos)
- ✅ Reunir resumen conceptual, notas o contexto de la clase
- ✅ Identificar videos, casos prácticos o ejemplos mencionados

### Paso 2: Procesar Presentación
- 🔄 **Convertir a PDF** (si no existe):
  ```bash
  soffice --headless --convert-to pdf --outdir . "archivo.pptx"
  ```
- 📋 El PDF se genera en la misma carpeta de la clase
- 💾 Conservar original (PPTX/PPT) como referencia

### Paso 3: Organizar Imágenes
- 🖼️ **Renombrar TODAS las imágenes** con nombres descriptivos y semánticos
- 📝 **Formato de nomenclatura:** `{tema}-{concepto}-clase-{N}.png`
- Ejemplos: `tripode-normativo-ae.png`, `arquitectura-microservicios-iot.png`
- Usar **minúsculas** y **guiones** (no espacios ni caracteres especiales)
- ❌ **NUNCA** usar: `image-1.png`, `slide-1.png`, `screenshot.png`

### Paso 4: Generar Documento Markdown
- 📄 **Crear archivo:** `{tema-descriptivo}-clase-{N}.md`
- 📋 **Estructura recomendada (obligatoria):**
  1. **Encabezado** con metadata (usando formato de arriba)
  2. **Introducción** con contexto y relevancia
  3. **Secciones temáticas** numeradas (1, 2, 3...)
     - Usar encabezados jerárquicos consistentes (`##`, `###`)
     - Incluir definiciones, conceptos, frameworks
  4. **Tablas comparativas** donde sea relevante
  5. **Imágenes embebidas** referenciando archivos renombrados
  6. **Ejemplos prácticos** y casos de uso reales
  7. **Conclusiones finales** con puntos clave
  8. **Sección de recursos** (PDF, imágenes, referencias)
  9. **Preguntas de reflexión** al cierre

### Paso 5: Validar Integridad
- ✅ **Actualizar referencias** de imágenes en el markdown
- ✅ **Confirmar que todos los enlaces** funcionan
- ✅ **Verificar nomenclatura** de archivos sea consistente
- ✅ **Revisar que las imágenes** estén incluidas correctamente
- ✅ **Verificar encabezado** cumple el formato obligatorio

### Paso 6: Estructura Final en Carpeta de Clase
```
clase-X/
├── {tema-descriptivo}-clase-X.md         ← Documento principal
├── PRESENTACION.pdf                      ← PDF de presentación
├── tema-concepto-curso.png               ← Imágenes organizadas
├── otro-concepto-curso.png
└── README.md                             ← Índice (opcional)
```

---

## 📝 Convenciones de Nomenclatura

### 🖼️ Imágenes
- **Patrón:** `{tema}-{subtema}-clase-{N}.png`
- **Curso abreviado:** Usar 2-3 letras (ae=Arq. Empresarial, iot=IoT, dm=Data Mining)
- **Ejemplos:**
  - `tripode-normativo-ae.png`
  - `ceremonias-arquitectura-ae.png`
  - `stack-tecnologico-iot.png`

### 📄 Documentos Markdown
- **Patrón:** `{tema-descriptivo}-clase-{N}.md`
- **Ejemplos:**
  - `gobernanza-datos-clase-4.md`
  - `introduccion-iot-clase-1.md`
  - `modelado-empresarial-clase-5.md`

### 📊 Presentaciones
- **Patrón simple:** `PRESENTACION.pptx` o `PRESENTACION.pdf`
- **Con numeración:** `S04-PRESENTACION.pptx`
- **Con nombre:** `S04-GOBERNANZA-PRESENTACION.pptx`

---

## ✨ Checklist de Entrega

**Verificar ANTES de dar por completado:**

- [ ] Encabezado sigue formato obligatorio exactamente
- [ ] PPTX/PPT convertido a PDF
- [ ] Todas las imágenes renombradas con nombres descriptivos
- [ ] Documento markdown creado con estructura completa
- [ ] Referencias de imágenes actualizadas en el markdown
- [ ] Nombres de archivos siguen convenciones establecidas
- [ ] Contenido incluye: conceptos, definiciones, ejemplos prácticos
- [ ] Conclusiones claramente articuladas
- [ ] Verificar que los enlaces internos funcionan
- [ ] Formato markdown es limpio y consistente
- [ ] Número de clase en título y carpeta coinciden

---

## 🔄 Activación Automática

Este skill se aplica automáticamente cuando se solicita:
- ✅ "Genera un resumen detallado de lo que se vio en clase"
- ✅ "Crea un documento markdown de la sesión"
- ✅ "Organiza los materiales de clase"
- ✅ "Haz un resumen de la clase X"
- ✅ Cualquier variación que implique crear documentación completa de una sesión

---

## 💡 Tips para Mejor Calidad

1. **Usa encabezados jerárquicos:** `#` (título), `##` (sección), `###` (subsección)
2. **Embebe imágenes:** `![Descripción](./archivo.png)` en la sección temática correcta
3. **Tablas para comparar:** Utiliza tablas markdown para comparar conceptos clave
4. **Ejemplos reales:** Incluye casos prácticos, no solo teoría abstracta
5. **Conclusiones claras:** Sintetiza aprendizajes al final
6. **Formateo consistente:** Usa negritas, cursivas y listas apropiadamente
7. **Referencias externas:** Menciona libros, artículos, videos relevantes
8. **Preguntas de reflexión:** Incluye al cierre para profundizar en el tema
