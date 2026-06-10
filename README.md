# ISIL - Notas de Cursos (2026-1)

## Propósito

Repositorio de **resúmenes accesibles y entendibles** de los conceptos clave cubiertos en cada clase de los cursos de la carrera en ISIL.

Este repositorio se enfoca en capturar lo más importante de cada sesión de forma organizada, permitiendo revisión rápida y referencia futura.

## Recursos Adicionales

Los resúmenes de PPTs están disponibles en las carpetas de cada clase correspondiente.

## Cursos

### Arquitectura Empresarial (`arq-empresarial`)

| Semana | Tema | Docente | Notas |
|---|---|---|---|
| 1 | Fundamentos de Arquitectura Empresarial | Richard Anthony Romero Mori | [Ver](2026-1/arq-empresarial/clase-1/arquitectura-empresarial-fundamentos-clase-1.md) |
| 2 | Frameworks TOGAF y Zachman | Richard Anthony Romero Mori | [Ver](2026-1/arq-empresarial/clase-2/arquitectura-empresarial-zachman-togaf-clase-2.md) |
| 3 | Modelado Arquitectónico y Capas | Richard Anthony Romero Mori | [Ver](2026-1/arq-empresarial/clase-3/modelado-arquitectonico-capas-clase-3.md) |

---

### Customer Centricity TI (`customer-centricity-ti`)

**Docente:** Henry Joseph Paredes del Alamo

| Semana | Tema | Notas |
|---|---|---|
| 1 | Customer Centricity y Agilidad en TI | [Ver](2026-1/customer-centricity-ti/clase-1/customer-centricity-agilidad-ti-clase-1.md) |
| 2 | Customer Centricity: Agilidad y Scrum en la Práctica | [Ver](2026-1/customer-centricity-ti/clase-2/customer-centricity-agilidad-scrum-clase-2.md) |

---

### Dirección Estratégica de Datos (`direccion-estrategica-de-datos`)

**Docente:** Brezli Paola Luna Figueroa

| Semana | Tema | Notas |
|---|---|---|
| 1 | Introducción: datos como activo estratégico, gobierno, desafíos y aplicaciones | [Ver](2026-1/direccion-estrategica-de-datos/clase-1/direccion-estrategica-de-datos-introduccion-clase-1.md) |
| 2 | Estrategias de datos: casos prácticos y viabilidad de proyectos | [Ver](2026-1/direccion-estrategica-de-datos/clase-2/estrategias-datos-casos-practicos-clase-2.md) |

---

### Análisis Estadístico y Data Mining (`analisis-estadistico-data-mining`)

**Docente:** Omar David Visitación Romero

| Semana | Tema | Notas |
|---|---|---|
| 1 | Presentación del curso y cronograma | [Ver](2026-1/analisis-estadistico-data-mining/clase-1/analisis-estadistico-data-mining-presentacion-y-cronograma-clase-1.md) |
| 2 | Estadística descriptiva: medidas de resumen | [Ver](2026-1/analisis-estadistico-data-mining/clase-2/estadistica-descriptiva-medidas-resumen-clase-2.md) |
| 3 | Estadística inferencial | [Ver](2026-1/analisis-estadistico-data-mining/clase-3/analisis-estadistico-data-mining-estadistica-inferencial-clase-3.md) |
| 4 | Análisis exploratorio de datos (EDA) — tendencias, estacionalidad, outliers, correlaciones | [Ver](2026-1/analisis-estadistico-data-mining/clase-4/analisis-exploratorio-datos-eda-clase-4.md) |

---

### Diseño de Soluciones con IA — 6508.202610 (`diseno-soluciones-ia`)

**Docente:** Omar David Visitación Romero

| Semana | Tema | Notas |
|---|---|---|
| 1 | Introducción, metodología y estructura del curso | [Ver](2026-1/diseno-soluciones-ia/clase-1/diseno-soluciones-ia-introduccion-clase-1.md) |
| 2 | Inteligencia artificial, Machine Learning y Deep Learning | [Ver](2026-1/diseno-soluciones-ia/clase-2/diseno-soluciones-ia-inteligencia-artificial-y-ramas-clase-2.md) |
| 3 | IA: Tipos, riesgos éticos y 8 fases de desarrollo | [Ver](2026-1/diseno-soluciones-ia/clase-3/diseno-soluciones-ia-inteligencia-artificial-tema-02-clase-3.md) |
| 4 | Integración estratégica y ética de IA: Design Thinking, sesgos, supervisión humana | [Ver](2026-1/diseno-soluciones-ia/clase-4/diseno-soluciones-ia-integracion-etica-clase-4.md) |
| Actividad 1 | Modelos frontera en desarrollo de software — benchmark SWE-bench Verified (Anthropic vs OpenAI) | [Ver](2026-1/diseno-soluciones-ia/actividad-1/swe-bench-comparacion-modelos-actividad-1.md) |

---

## Estructura del Repositorio

### Raíz
```txt
README.md                           ← Archivo actual
_meta/                              ← Documentación transversal de la cohorte
├── INDICE-CONCEPTOS.md
├── PLANTILLA-NUEVAS-CLASES.md
└── PR-INFO.md
.github/                            ← Configuración, reglas y automatización
├── copilot-instructions.md         ← Instrucciones globales de Copilot
├── agents/
│   └── AGENTS.md                   ← Definición de agentes personalizados
├── instructions/                   ← Instrucciones (reglas de estructura y formato)
│   ├── writing.instructions.md     ← Estándares de documentación clara
│   ├── clase.instructions.md       ← Reglas para documentar clases
│   ├── actividad.instructions.md   ← Reglas para documentar actividades
│   ├── images.instructions.md      ← Reglas para procesar imágenes con OCR
│   └── mermaid-analysis.instructions.md ← Formato para análisis de diagramas Mermaid
└── skills/                         ← Skills (metodologías y herramientas)
    ├── mermaid-analysis/           ← Skill: análisis de oportunidades de Mermaid
    │   ├── SKILL.md
    │   ├── README.md
    │   └── EJEMPLO-ANALISIS-REPOSITORIO-COMPLETO.md
    └── utilities/                  ← Skills de utilidad
        ├── write-a-skill/
        ├── handoff/
        ├── excel-reader/
        └── caveman/
```

### Contenido de Cursos
```txt
2026-1/                             ← Carpeta de la cohorte 2026-1
├── direccion-estrategica-de-datos/
│   ├── clase-1/
│   │   └── direccion-estrategica-de-datos-introduccion-clase-1.md
│   └── ...
├── analisis-estadistico-data-mining/
│   ├── clase-1/
│   │   └── analisis-estadistico-data-mining-presentacion-y-cronograma-clase-1.md
│   ├── clase-2/
│   │   └── estadistica-descriptiva-medidas-resumen-clase-2.md
│   └── ...
├── arq-empresarial/
│   ├── clase-1/
│   │   └── arquitectura-empresarial-fundamentos-clase-1.md
│   ├── clase-2/
│   │   ├── arquitectura-empresarial-zachman-togaf-clase-2.md
│   │   ├── arquitectura-empresarial-fundamentos-clase-2.png
│   │   ├── zachman-togaf-relacion-clase-2.png
│   │   └── zachman-matriz-cobertura-6x6-clase-2.png
│   ├── clase-3/
│   │   └── modelado-arquitectonico-capas-clase-3.md

│   └── ...
├── customer-centricity-ti/
│   ├── clase-1/
│   │   └── customer-centricity-agilidad-ti-clase-1.md
│   ├── clase-2/
│   │   └── customer-centricity-agilidad-scrum-clase-2.md
│   └── ...
└── diseno-soluciones-ia/
    ├── clase-1/
    │   └── diseno-soluciones-ia-introduccion-clase-1.md
    ├── clase-2/
    │   ├── diseno-soluciones-ia-inteligencia-artificial-y-ramas-clase-2.md
    │   ├── inteligencia-artificial-introduccion-clase-2.png
    │   ├── inteligencia-artificial-ramas-clase-2.png
    │   ├── inteligencia-artificial-capacidades-clave-clase-2.png
    │   └── inteligencia-artificial-datos-y-valor-clase-2.png
    ├── actividad-1/
    │   └── swe-bench-comparacion-modelos-actividad-1.md
    └── ...
```

**Organización por:**

- **Curso**: `2026-1/{nombre-curso}/` (programa y cohorte)
- **Semana de clase**: `clase-1/`, `clase-2/`, etc.
- **Contenido dentro**: notas markdown + diagramas/imágenes clave

## Convenciones

### Nombres de archivos

- **Markdown**: descriptivo del tema → `diseno-soluciones-ia-inteligencia-artificial-y-ramas-clase-2.md`
- **Imágenes**: `{concepto}-{descriptor}-clase-N.png` → `inteligencia-artificial-ramas-clase-2.png`

### Agregar nuevas clases o cursos

Usa la [PLANTILLA-NUEVAS-CLASES.md](_meta/PLANTILLA-NUEVAS-CLASES.md) como guía. Cubre dos flujos:

- **Nueva clase** en un curso existente: crea la carpeta `clase-X/`, crea el Markdown con el encabezado estándar y agrega la fila en la tabla del curso en este README.
- **Nuevo curso**: crea la carpeta `2026-1/{nombre-del-curso}/`, agrega la primera clase, añade el bloque completo del curso en este README y registra los conceptos clave en [`_meta/INDICE-CONCEPTOS.md`](_meta/INDICE-CONCEPTOS.md).

La plantilla incluye checklist de calidad, convenciones de nombres y ejemplos listos para copiar.

### Contenido esperado por clase

Cada carpeta de clase incluye:

1. **Markdown principal**: resumen de conceptos clave con ejemplos prácticos
2. **Diagramas** (si aplica): imágenes que ilustran frameworks y relaciones
3. **Casos reales**: conexiones con sectores (banca, Smart Cities, etc.)

## Cómo usar este repositorio

1. **Buscar tema específico**: navega por semana de clase → abre el markdown
2. **Revisar rápido**: cada clase resume lo esencial sin jerga innecesaria
3. **Casos prácticos**: busca ejemplos de sectores en los que trabajas
4. **Conectar conceptos**: ve las relaciones entre clases con cross-references
5. **Índice de conceptos**: usa [INDICE-CONCEPTOS.md](_meta/INDICE-CONCEPTOS.md) para navegar rápidamente todos los términos clave entre cursos

---

**Cohorte**: 2026-1 | ISIL Ingeniería de Sistemas