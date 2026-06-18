# Instructions — Reglas y Estándares

Este directorio contiene **instrucciones** (archivos `.instructions.md`) que definen reglas de estructura, formato y estándares para documentos específicos.

---

## 📋 Estructura

```
.github/instructions/
├── README.md                        ← Archivo actual
├── writing.instructions.md          # Estándares de escritura clara
├── clase.instructions.md            # Reglas para documentar clases
├── actividad.instructions.md        # Reglas para documentar actividades
├── images.instructions.md           # Reglas para procesar imágenes con OCR
└── mermaid-analysis.instructions.md # Reglas para documentar análisis de Mermaid
```

---

## 📖 Instrucciones Disponibles

### 1. **writing.instructions.md**
**Aplica a:** Todos los archivos `.md` (`**/*.md`)

Estándares de documentación clara y scannable para el repositorio:
- Prioriza claridad y legibilidad
- Reglas de escritura y formato visual
- Herramientas para maximizar escaneo (tablas, diagramas, ejemplos)
- Ejemplos de transformación

**Cuándo usar:**  
Siempre que crees o edites documentación en Markdown.

---

### 2. **clase.instructions.md**
**Aplica a:** Archivos de clase

Estructura obligatoria para documentar sesiones de clase:
- Encabezado con metadata (curso, docente, fecha)
- Workflow completo: materiales, presentación, imágenes, markdown
- Convenciones de nomenclatura para archivos e imágenes
- Checklist de entrega

**Cuándo usar:**  
Al documentar una sesión de clase completa (resumen, imágenes, diagrama de conceptos).

---

### 3. **actividad.instructions.md**
**Aplica a:** Archivos en `**/actividad-*/**/*.md`

Estructura de documentación académica para actividades:
- Encabezado con metadata
- Estructura de secciones según tipo de actividad (análisis, diseño, comparación)
- Reglas para tablas con datos y fuentes
- Sección obligatoria de Fuentes al cierre

**Cuándo usar:**  
Al documentar una actividad, proyecto o solución de tarea.

---

### 4. **images.instructions.md**
**Aplica a:** Imágenes en `*/clase-*/**/*.{png,jpg,gif}`

Procesamiento de imágenes con OCR y enriquecimiento de documentación:
- Renombrado semántico de imágenes
- Ejecución del script OCR (`scripts/ocr_images.swift`)
- Enriquecimiento de Markdown con contenido extraído
- Embedding de imágenes con references relativas

**Cuándo usar:**  
Al encontrar imágenes sin nombre semántico o no embebidas en documentación.

---

### 5. **mermaid-analysis.instructions.md**
**Aplica a:** Archivos `**/ANALISIS-OPORTUNIDADES-*-MERMAID.md`

Estructura obligatoria para documentar análisis de oportunidades de Mermaid:
- Encabezado y resumen ejecutivo
- Secciones por prioridad (máxima, alta, media, baja)
- Formato estándar para cada oportunidad
- Tabla resumen consolidada
- Análisis transversal de patrones reutilizables
- Recomendaciones de fases de implementación

**Cuándo usar:**  
Al crear un análisis de dónde agregar diagramas Mermaid en la documentación.

---

## 🔄 Relación con Skills

| Instruction | Skill Relacionado | Relación |
|---|---|---|
| **writing** | — | Base para todas (especificidad = 0) |
| **clase** | — | Specifies how para clase |
| **actividad** | — | Specifies how para actividad |
| **images** | — | Specifies how para imágenes |
| **mermaid-analysis** | mermaid-analysis | Instruction = formato; Skill = metodología |

---

## 🎯 Cómo Usarlas

### Automático (vía `applyTo`)

Las instrucciones se aplican **automáticamente** cuando el archivo editado coincide con el patrón `applyTo`:

```yaml
# Ejemplo: writing.instructions.md
applyTo: "**/*.md"  # Se aplica a TODOS los .md
```

### Manual

Cuando crees o edites un archivo, consulta este directorio según el tipo de contenido.

---

## ✅ Checklist para Crear una Nueva Instruction

1. **Nombre:** `{tema}.instructions.md` (con punto de separación)
2. **Frontmatter YAML obligatorio:**
   ```yaml
   ---
   name: instruction-name
   description: Descripción breve
   applyTo: "pattern/**/*.md"  # opcional pero recomendado
   ---
   ```
3. **Estructura clara:** Encabezado, secciones, ejemplos, checklist
4. **Patrón `applyTo` específico:** No genérico (ej: `**/actividad-*/` mejor que `**/*`)
5. **Actualizar este README** con descripción en tabla

---

## 🔗 Referencias

- [`.github/skills/`](../skills/) — Skills (metodologías y herramientas)
- [`.github/agents/AGENTS.md`](../agents/AGENTS.md) — Agentes personalizados
- [Root `README.md`](../../README.md) — Visión general del repositorio

---

**Versión:** 1.0  
**Última actualización:** 10/06/2026  
**Compatibilidad:** VS Code + GitHub Copilot
