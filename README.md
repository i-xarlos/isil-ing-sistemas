# ISIL - Notas de Cursos (2026-1)

## Propósito

Repositorio de **resúmenes accesibles y entendibles** de los conceptos clave cubiertos en cada clase de los cursos de la carrera en ISIL.

Este repositorio se enfoca en capturar lo más importante de cada sesión de forma organizada, permitiendo revisión rápida y referencia futura.

## Cursos

### Arquitectura Empresarial (`arq-empresarial`)

| Semana | Tema | Docente | Notas |
|---|---|---|---|
| 1 | Fundamentos de Arquitectura Empresarial | Richard Anthony Romero Mori | [Ver](2026-1/arq-empresarial/clase-1/arquitectura-empresarial-fundamentos-clase-1.md) |
| 1 | Customer Centricity y Agilidad en TI | Henry Joseph Paredes del Alamo | [Ver](2026-1/arq-empresarial/clase-1/customer-centricity-agilidad-ti-clase-1.md) |
| 2 | Frameworks TOGAF y Zachman | Richard Anthony Romero Mori | [Ver](2026-1/arq-empresarial/clase-2/arquitectura-empresarial-zachman-togaf-clase-2.md) |
| 2 | Customer Centricity: Agilidad y Scrum en la Práctica | Henry Joseph Paredes del Alamo | [Ver](2026-1/arq-empresarial/clase-2/customer-centricity-agilidad-scrum-clase-2.md) |

---

### Dirección Estratégica de Datos (`direccion-estrategica-de-datos`)

**Docente:** Brezli Paola Luna Figueroa

| Semana | Tema | Notas |
|---|---|---|
| 1 | Introducción: datos como activo estratégico, gobierno, desafíos y aplicaciones | [Ver](2026-1/direccion-estrategica-de-datos/clase-1/direccion-estrategica-de-datos-introduccion-clase-1.md) |

---

### Análisis Estadístico y Data Mining (`analisis-estadistico-data-mining`)

**Docente:** Omar David Visitación Romero

| Semana | Tema | Notas |
|---|---|---|
| 1 | Presentación del curso y cronograma | [Ver](2026-1/analisis-estadistico-data-mining/clase-1/analisis-estadistico-data-mining-presentacion-y-cronograma-clase-1.md) |
| 2 | Estadística descriptiva: medidas de resumen | [Ver](2026-1/analisis-estadistico-data-mining/clase-2/estadistica-descriptiva-medidas-resumen-clase-2.md) |

---

### Diseño de Soluciones con IA — 6508.202610 (`diseno-soluciones-ia`)

**Docente:** Omar David Visitación Romero

| Semana | Tema | Notas |
|---|---|---|
| 1 | Introducción, metodología y estructura del curso | [Ver](2026-1/diseno-soluciones-ia/clase-1/diseno-soluciones-ia-introduccion-clase-1.md) |
| 2 | Inteligencia artificial, Machine Learning y Deep Learning | [Ver](2026-1/diseno-soluciones-ia/clase-2/diseno-soluciones-ia-inteligencia-artificial-y-ramas-clase-2.md) |
| Actividad 1 | Modelos frontera en desarrollo de software — benchmark SWE-bench Verified (Anthropic vs OpenAI) | [Ver](2026-1/diseno-soluciones-ia/actividad-1/actividad-1.md) |

---

## Estructura

```txt
_meta/
├── INDICE-CONCEPTOS.md
├── PLANTILLA-NUEVAS-CLASES.md
└── PR-INFO.md
2026-1/
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
│   │   ├── arquitectura-empresarial-fundamentos-clase-1.md
│   │   └── customer-centricity-agilidad-ti-clase-1.md
│   ├── clase-2/
│   │   ├── arquitectura-empresarial-zachman-togaf-clase-2.md
│   │   ├── customer-centricity-agilidad-scrum-clase-2.md
│   │   ├── arquitectura-empresarial-fundamentos-clase-2.png
│   │   ├── zachman-togaf-relacion-clase-2.png
│   │   └── zachman-matriz-cobertura-6x6-clase-2.png
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
    │   ├── README.md
    │   └── actividad-1.md
    └── ...
README.md
AGENTS.md
```

**Organización por:**

- **Curso**: `2026-1/{nombre-curso}/` (programa y cohorte)
- **Semana de clase**: `clase-1/`, `clase-2/`, etc.
- **Contenido dentro**: notas markdown + diagramas/imágenes clave

## Convenciones

### Nombres de archivos

- **Markdown**: descriptivo del tema → `diseno-soluciones-ia-inteligencia-artificial-y-ramas-clase-2.md`
- **Imágenes**: `{concepto}-{descriptor}-clase-N.png` → `inteligencia-artificial-ramas-clase-2.png`

### Agregar nuevas clases

Si vas a crear una nueva clase, usa la [PLANTILLA-NUEVAS-CLASES.md](_meta/PLANTILLA-NUEVAS-CLASES.md) como guía. Garantiza:

- Estructura consistente
- Formato claro y escaneable
- Ejemplos prácticos
- Conexiones con otros cursos
- Checklist de calidad

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

