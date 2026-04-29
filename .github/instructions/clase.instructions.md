# 📚 Instrucciones Personalizadas - Generación de Resúmenes de Clase

## Objetivo
Estandarizar la generación de resúmenes detallados, organizados y profesionales para **cualquier clase o curso**.

---

## 🎯 Proceso Estándar: Resumen Detallado de Clase

Cada vez que se solicite un **resumen detallado de lo que se vio en clase**, se debe seguir este flujo automáticamente:

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
- 📝 **Formato de nomenclatura:**
  - `[tema]-[concepto]-[curso-abreviado].png`
  - Ejemplo: `tripode-normativo-ae.png`, `arquitectura-microservicios-iot.png`
  - Usar **minúsculas** y **guiones** (no espacios ni caracteres especiales)
  - ❌ **NUNCA** usar: `image-1.png`, `slide-1.png`, `screenshot.png`

### Paso 4: Generar Documento Markdown
- 📄 **Crear archivo:** `CLASE-[NUMERO]-[TITULO-DESCRIPTIVO].md`
- 📋 **Estructura recomendada (obligatoria):**
  1. **Encabezado** con metadata:
     - Profesor/Docente
     - Fecha de clase
     - Tema central
     - Objetivos de aprendizaje
  2. **Introducción** con contexto y relevancia
  3. **Secciones temáticas** numeradas (1, 2, 3...)
     - Usar encabezados jerárquicos consistentes
     - Incluir definiciones, conceptos, framework
  4. **Tablas comparativas** donde sea relevante
  5. **Imágenes embebidas** referenciando archivos renombrados
  6. **Ejemplos prácticos** y casos de uso reales
  7. **Conclusiones finales** con puntos clave
  8. **Sección de recursos** (PDF, imágenes, referencias)
  9. **Reflexión o preguntas clave** al cierre

### Paso 5: Validar Integridad
- ✅ **Actualizar referencias** de imágenes en el markdown
- ✅ **Confirmar que todos los enlaces** funcionan
- ✅ **Verificar nomenclatura** de archivos sea consistente
- ✅ **Revisar que las imágenes** estén incluidas correctamente

### Paso 6: Estructura Final en Carpeta de Clase
La carpeta de cada clase debe contener:
```
clase-X/
├── CLASE-X-TITULO-DESCRIPTIVO.md    ← Documento principal (markdown)
├── PRESENTACION.pdf                 ← Versión PDF de la presentación
├── PRESENTACION.pptx                ← Original (opcional, referencia)
├── tema-concepto-curso.png          ← Imágenes organizadas
├── otro-concepto-curso.png
└── README.md                        ← Índice (opcional, para múltiples documentos)
```

---

## 📝 Convenciones de Nomenclatura

### 🖼️ Imágenes
- **Patrón:** `[tema]-[subtema]-[curso].png`
- **Curso abreviado:** Usar 2-3 letras (ae=Arq. Empresarial, iot=IoT, etc.)
- **Ejemplos:**
  - `tripode-normativo-ae.png`
  - `ceremonias-arquitectura-ae.png`
  - `stack-tecnologico-iot.png`
  - `diagrama-flujo-datos.png`

### 📄 Documentos Markdown
- **Patrón:** `CLASE-[NUMERO]-[TITULO-EN-MAYUSCULAS].md`
- **Ejemplos:**
  - `CLASE-4-GOBERNANZA-AE.md`
  - `CLASE-1-INTRODUCCION-IOT.md`
  - `CLASE-5-MODELADO-EMPRESARIAL-AE.md`

### 📊 Presentaciones
- **Patrón simple:** `PRESENTACION.pptx` o `PRESENTACION.pdf`
- **Con numeración:** `S04-PRESENTACION.pptx`
- **Con nombre descriptivo:** `S04-GOBERNANZA-PRESENTACION.pptx`

---

## ✨ Checklist de Entrega

**Verificar ANTES de dar por completado un resumen:**

- [ ] PPTX/PPT convertido a PDF
- [ ] Todas las imágenes renombradas con nombres descriptivos
- [ ] Documento markdown creado con estructura completa
- [ ] Referencias de imágenes actualizadas en el markdown
- [ ] Archivo README o índice (si hay múltiples documentos)
- [ ] Nombres de archivos siguen convenciones establecidas
- [ ] Contenido incluye: conceptos, definiciones, ejemplos prácticos
- [ ] Conclusiones claramente articuladas
- [ ] Verificar que los enlaces internos funcionan
- [ ] Formato markdown es limpio y consistente

---

## 🔄 Activación Automática

Este proceso se aplica automáticamente cuando se solicita:
- ✅ "Genera un resumen detallado de lo que se vio en clase"
- ✅ "Crea un documento markdown de la sesión"
- ✅ "Organiza los materiales de clase"
- ✅ "Haz un resumen de la clase"
- ✅ Cualquier variación que implique creación de documentación completa de una sesión

---

## 📌 Notas Importantes

- **Independencia de curso:** Este skill funciona para cualquier asignatura o taller
- **Nomenclatura consistente:** Los nombres de archivos deben ser semánticos y reutilizables
- **Calidad de contenido:** Priorizar claridad, ejemplos reales y casos de uso
- **Mantenibilidad:** Facilitar búsqueda y referencia cruzada entre documentos
- **Escalabilidad:** Preparar estructura para múltiples clases en el mismo curso

---

## 🎯 Estructura de Carpetas Recomendada

```
Curso/
├── .instructions.md                 ← Este archivo
├── clase-1/
│   ├── CLASE-1-TITULO.md
│   ├── PRESENTACION.pdf
│   └── imagen-descriptiva.png
├── clase-2/
│   ├── CLASE-2-TITULO.md
│   ├── PRESENTACION.pdf
│   └── imagen-descriptiva.png
└── README.md                        ← Índice general del curso
```

---

## 💡 Tips para Mejor Calidad

1. **Usa encabezados jerárquicos**: # (título), ## (sección), ### (subsección)
2. **Embebe imágenes**: `![Descripción](archivo.png)` no solo referencias
3. **Tablas para comparar**: Utiliza tablas markdown para comparar conceptos
4. **Ejemplos reales**: Incluye casos prácticos, no solo teoría
5. **Conclusiones claras**: Sintetiza aprendizajes al final
6. **Formateo consistente**: Usa negritas, cursivas y listas apropiadamente
7. **Referencias externas**: Menciona libros, artículos, videos relevantes
8. **Preguntas de reflexión**: Incluye al cierre para profundizar en el tema
