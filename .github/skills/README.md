# Skills — Índice y Estructura

Este directorio contiene todos los **skills personalizados** para el repositorio ISIL {year-semestre}. Los skills se organizan por dominio para facilitar descubrimiento y mantenimiento.

---

## 📁 Estructura Jerárquica

```
.github/
├── instructions/            ← Instrucciones (reglas de estructura)
│   ├── writing.instructions.md         # Estándares de documentación clara
│   ├── clase.instructions.md           # Reglas para documentar clases
│   ├── actividad.instructions.md       # Reglas para documentar actividades
│   ├── images.instructions.md          # Reglas para procesar imágenes
│   └── mermaid-analysis.instructions.md # Formato para análisis de Mermaid
├── agents/
│   └── AGENTS.md            # Definición de agentes personalizados
└── skills/                  ← Skills (metodologías y herramientas)
    ├── README.md            ← Archivo actual
    ├── mermaid-analysis/    # Skill: análisis de Mermaid + ejemplos
    │   ├── SKILL.md         # Metodología de análisis
    │   ├── README.md        # Índice de la carpeta
    │   └── EJEMPLO-ANALISIS-REPOSITORIO-COMPLETO.md
    ├── academic-paper-drafter/  # Skill: redacción de trabajos académicos
    │   └── SKILL.md         # Estructura, guías de secciones, formato APA/Harvard/Vancouver
    ├── complex-concept-explainer/  # Skill: explicar conceptos con analogías y 3 niveles
    │   └── SKILL.md         # Explicador con capas: básico → intermedio → técnico
    ├── flowchart-decision-builder/  # Skill: diagramas de flujo y árboles de decisión
    │   └── SKILL.md         # Conversión de texto a diagramas Mermaid/ASCII
    ├── learning-roadmap-generator/  # Skill: planes de aprendizaje semana a semana
    │   └── SKILL.md         # Generador de roadmaps con objetivos, recursos y checkpoints
    ├── presentation-prep-skill/  # Skill: preparación de presentaciones slide por slide
    │   └── SKILL.md         # Narrativa, visuales, notas del ponente y timing
    ├── structured-notes-generator/  # Skill: apuntes de estudio estructurados
    │   └── SKILL.md         # Generador de apuntes desde temas, PDFs o transcripciones
    └── utilities/           ← Skills de herramientas
        ├── README.md
        ├── write-a-skill/
        │   └── SKILL.md     # Crear nuevos skills
        ├── handoff/
        │   └── SKILL.md     # Transferencia de contexto
        ├── excel-reader/
        │   ├── SKILL.md     # Lectura de Excel
        │   └── READ_EXCEL.skill.md
        └── caveman/
            └── SKILL.md     # Simplicidad radical
```

### Notas sobre la Estructura

- **Instructions** (`.github/instructions/`) contiene **reglas y estándares** para estructurar y documentar archivos específicos
- **Skills** (`.github/skills/`) contiene **metodologías y herramientas** para análisis, procesamiento y decisiones
- **Agents** (`.github/agents/`) contiene definiciones de agentes personalizados y sus configuraciones

---

## 🎯 Cómo Usar Esta Estructura

### 📚 Para Documentación (Instructions)

Consulta [`.github/instructions/`](../instructions/) para reglas de estructura:

| Instruction | Cuándo Usarlo | Patrón |
|---|---|---|
| **writing** | Escribir documentación clara y scannable | `**/*.md` |
| **clase** | Documentar sesiones de clase completas | Clases |
| **actividad** | Crear documentación de actividades | `*/actividad-*/**/*.md` |
| **images** | Procesar imágenes con OCR | `*/clase-*/**/*.{png,jpg,gif}` |
| **mermaid-analysis** | Analizar oportunidades de diagramas Mermaid | `**/ANALISIS-OPORTUNIDADES-*-MERMAID.md` |

### 🛠️ Para Metodologías (Skills)

Consulta [`.github/skills/`](./) para herramientas y análisis:

| Skill | Cuándo Usarlo | Archivo |
|---|---|---|
| **mermaid-analysis** | Analizar dónde agregar diagramas Mermaid | [mermaid-analysis/SKILL.md](mermaid-analysis/SKILL.md) |
| **academic-paper-drafter** | Estructurar y redactar trabajos académicos con formato estándar y citas | [academic-paper-drafter/SKILL.md](academic-paper-drafter/SKILL.md) |
| **complex-concept-explainer** | Explicar conceptos complejos con analogías y 3 niveles de profundidad | [complex-concept-explainer/SKILL.md](complex-concept-explainer/SKILL.md) |
| **flowchart-decision-builder** | Generar diagramas de flujo y árboles de decisión a partir de texto | [flowchart-decision-builder/SKILL.md](flowchart-decision-builder/SKILL.md) |
| **learning-roadmap-generator** | Crear planes de aprendizaje semana a semana con objetivos, recursos y checkpoints | [learning-roadmap-generator/SKILL.md](learning-roadmap-generator/SKILL.md) |
| **presentation-prep-skill** | Estructurar presentaciones slide por slide con narrativa, visuales y notas del ponente | [presentation-prep-skill/SKILL.md](presentation-prep-skill/SKILL.md) |
| **structured-notes-generator** | Transformar temas, PDFs o transcripciones en apuntes de estudio | [structured-notes-generator/SKILL.md](structured-notes-generator/SKILL.md) |
| **write-a-skill** | Crear nuevos skills personalizados | [utilities/write-a-skill/SKILL.md](utilities/write-a-skill/SKILL.md) |
| **handoff** | Transferir conversación a otro agente | [utilities/handoff/SKILL.md](utilities/handoff/SKILL.md) |
| **excel-reader** | Extraer contenido de archivos Excel | [utilities/excel-reader/SKILL.md](utilities/excel-reader/SKILL.md) |
| **caveman** | Simplicidad radical en explicaciones | [utilities/caveman/SKILL.md](utilities/caveman/SKILL.md) |

### 📋 Diferencia entre Instructions y Skills

| Instructions | Skills |
|---|---|
| **Qué:** Reglas de estructura y formato | **Qué:** Metodologías y herramientas de análisis |
| **Ubicación:** `.github/instructions/` | **Ubicación:** `.github/skills/` |
| **Aplican a:** Archivos específicos por patrón | **Aplican a:** Tareas específicas del usuario |
| **Ejemplo:** "Todo actividad debe tener encabezado Y" | **Ejemplo:** "Usar matriz 3×3 para priorizar" |

---

## 📋 Estructura de un SKILL.md

Cada skill sigue este patrón:

```md
---
name: skill-name                    # Identificador único
description: Descripción breve.     # Lo que ve el agent para decidir usarlo
applyTo: "pattern/**/*.md"         # Opcional: cuándo activarse automáticamente
---

# Nombre del Skill

[Contenido del skill]
```

### Componentes Obligatorios

1. **Frontmatter YAML**
   - `name`: Identificador único sin espacios
   - `description`: 1-2 líneas describiendo qué hace y cuándo usarlo
   - `applyTo`: (Opcional) Patrón glob para activación automática

2. **Contenido**
   - Objetivo o propósito
   - Instrucciones paso a paso
   - Ejemplos prácticos
   - Casos de uso
   - Troubleshooting si aplica

---

## 🔄 Flujo de Activación

### Automática (vía `applyTo`)

Si un skill tiene patrón `applyTo`, se activa automáticamente:

```yaml
applyTo: "*/**/*.md"  # Activar para archivos Markdown del periodo activo
```

### Manual

El agente consulta las `description` de todos los skills y elige el relevante según el request del usuario.

---

## 🛠️ Cómo Agregar un Nuevo Skill

1. **Crea una carpeta** temática: `utilities/mi-nueva-herramienta/` o `documentation/mi-documento/`
2. **Crea `SKILL.md`** con estructura completa (ver plantilla arriba)
3. **Incluye frontmatter YAML** con `name` y `description` claros
4. **Documenta casos de uso** con ejemplos prácticos
5. **Actualiza este README** agregando una fila a la tabla correspondiente

---

## 📚 Relaciones Entre Skills

Algunos skills se complementan:

```
WORKFLOW TÍPICO:

1. usuario solicita: "documentar clase"
   ↓
2. Activa skill: "clase-documentation"
   ├── Puede invocar: "writing-standards" (para formato)
   └── Puede invocar: "image-documentation" (si hay imágenes)

3. Si la clase tiene imágenes:
   ↓
4. Activa skill: "image-documentation"
   ├── Procesa con OCR
   └── Enriquece Markdown siguiendo "writing-standards"
```

---

## ✅ Checklist de Calidad para Skills

Antes de agregar un nuevo skill, verifica:

- [ ] El `name` es único y descriptivo
- [ ] La `description` incluye "Use when [trigger]"
- [ ] El contenido no excede 500 líneas (si es mayor, split en REFERENCE.md)
- [ ] Hay al menos 2 ejemplos prácticos
- [ ] El formato es consistente con otros skills
- [ ] Incluye sección de troubleshooting si hay posibles errores
- [ ] El `applyTo` pattern (si existe) es específico, no genérico

---

## 🔗 Referencias

- [`.github/agents/AGENTS.md`](../agents/AGENTS.md) — Instrucciones globales del agente para este repositorio
- [`.github/instructions/`](../instructions/) — Instrucciones y reglas de estructura
- [`.github/copilot-instructions.md`](../copilot-instructions.md) — Instrucciones globales de Copilot
- [Root `README.md`](../../README.md) — Visión general del repositorio

---

## 📝 Última Actualización

**Restructuración:** 10/06/2026 — Separación clara entre Instructions (reglas) y Skills (metodologías)  
**Skills activos:** 11 (mermaid-analysis, academic-paper-drafter, complex-concept-explainer, flowchart-decision-builder, learning-roadmap-generator, presentation-prep-skill, structured-notes-generator, write-a-skill, handoff, excel-reader, caveman)  
**Instructions activas:** 5 (writing, clase, actividad, images, mermaid-analysis)  
**Compatibilidad:** VS Code + GitHub Copilot
