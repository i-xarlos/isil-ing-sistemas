# Copilot Instructions for ISIL Course Notes

## Project Purpose

This repository contains course notes and study materials for the **Arquitectura Empresarial (Enterprise Architecture)** program at ISIL (2026-1 cohort). It's a learning workspace focused on enterprise architecture frameworks like TOGAF and Zachman, with Spanish language documentation.

## Repository Structure

```
2026-1/
└── arq-empresarial/
  └── clase-2/
    ├── arquitectura-empresarial-zachman-togaf-clase-2.md (main course notes)
    ├── arquitectura-empresarial-fundamentos-clase-2.png (fundamentals diagram)
    ├── zachman-togaf-relacion-clase-2.png (framework comparison)
    └── zachman-matriz-cobertura-6x6-clase-2.png (6x6 matrix reference)
README.md (empty, to be populated)
```

## Key Patterns & Conventions

### File Naming

- **Semantic filenames**: Use descriptive names that indicate content scope
  - Good: `arquitectura-empresarial-zachman-togaf-clase-2.md`
  - Bad: `clase-2.md` (non-descriptive)
- **Image naming**: Follow format `{concept}-{descriptor}-clase-N.png`
  - Example: `zachman-matriz-cobertura-6x6-clase-2.png`

### Markdown Structure

- Use section headers (`##`, `###`) to organize by topic and framework
- Keep bullet lists for frameworks/methodologies; numbered lists for processes
- Embed visual references at section level with `### Imagen X:` headers
- Use **bold** for key terms and framework names (TOGAF, Zachman)

### Content Organization

The course focuses on **four pillars of Enterprise Architecture**:

1. **Negocio** (Business): Strategy and processes
2. **Datos** (Data): Information management
3. **Aplicaciones** (Applications): Software interactions
4. **Tecnología** (Technology): Infrastructure and hardware

### Core Concepts (From Class 2)

- **TOGAF (ADM)**: Structured methodology for designing EA; guides _as-is_ → _to-be_ evolution
- **Zachman Framework**: Taxonomy matrix (6 columns × 6 rows) for organizing EA artifacts
  - Columns (questions): Qué, Cómo, Dónde, Quién, Cuándo, Por qué
  - Rows (perspectives): Planner → Owner → Designer → Builder → Subcontractor → Enterprise Operations
- **Value Proposition**: Zachman ensures complete coverage (no "agujeros"/gaps); TOGAF provides process; combined = comprehensive architecture

### Practical Workflow

When documenting class content:

1. **Identify the framework** being covered (TOGAF, Zachman, or both)
2. **Define use case**: Map to real examples (Smart Cities, contingency banking, Cambridge Analytica case)
3. **Fill Zachman matrix** if analyzing an organization (What data? How processes? Who responsible?)
4. **Document gaps**: Highlight missing elements between business and technology layers
5. **Connect theory to practice**: Always include a concrete, sector-specific example

### Language & Tone

- **Spanish**: All documentation in Spanish (curso dictado por Prof. Richard Anthony Romero Mori)
- **Technical but accessible**: Explain EA concepts to professionals with technical background (developers, network engineers, security specialists)
- **Business-aligned**: Emphasize strategic alignment over pure technical implementation

## Arquitectura de Carpetas (OBLIGATORIA)

```txt
.github/
└── copilot-instructions.md
2026-1/
└── arq-empresarial/
  ├── clase-1/
  ├── clase-2/
  │   ├── arquitectura-empresarial-zachman-togaf-clase-2.md
  │   ├── arquitectura-empresarial-fundamentos-clase-2.png
  │   ├── zachman-togaf-relacion-clase-2.png
  │   └── zachman-matriz-cobertura-6x6-clase-2.png
  └── clase-N/
README.md
```

**REGLAS ESTRICTAS:**

- Cada clase tiene su propia carpeta: `clase-1/`, `clase-2/`, etc.
- Los archivos van DENTRO de la carpeta de su clase, no en raíz
- Nombres de archivo SIEMPRE semánticos: `{tema}-{descriptor}-clase-N.{ext}`
- NO crear subcarpetas adicionales dentro de `clase-X/`

## Órdenes Estrictas para el Agente

**Al agregar nueva clase:**

1. ✅ Crear carpeta: `2026-1/arq-empresarial/clase-X/`
2. ✅ Crear markdown: `{tema}-{descriptor}-clase-X.md` dentro de `clase-X/`
3. ✅ Guardar imágenes: `{concepto}-{descriptor}-clase-X.png` dentro de `clase-X/`
4. ✅ Nombrar TODO semánticamente (NO: `image.png`, `clase-3.md`)
5. ✅ Actualizar README.md con enlace a nueva clase
6. ✅ NO mover archivos después de crearlos
7. ✅ Usar solo estas extensiones: `.md`, `.png`, `.jpg`, `.gif`

**Al documentar contenido:**

- Estructura: `##` para títulos, `###` para subsecciones (Imagen X, Conceptos, etc.)
- Imágenes: referenciar dentro del markdown con `### Imagen X: {nombre-archivo}.png`
- Ejemplos: siempre incluir casos de sectores reales (banca, Smart Cities, etc.)
- Idioma: 100% español, sin excepciones
- Framework names: TOGAF, Zachman, ADM (en negrita)

## Common Tasks REVISADO

- **Adding new class notes**: `2026-1/arq-empresarial/clase-X/` → crear `.md` con nombre semántico
- **Documenting diagrams**: `{concepto}-clase-X.png` → guardar en `clase-X/` → referenciar en markdown
- **Updating README**: Agregar enlace a clase nueva DESPUÉS de crear la carpeta
- **Linking frameworks**: Siempre anotar complementariedad TOGAF + Zachman

## Key Files to Reference

- `2026-1/arq-empresarial/clase-2/arquitectura-empresarial-zachman-togaf-clase-2.md`: Main class 2 notes with complete framework definitions and practical workflows
- `2026-1/arq-empresarial/clase-2/zachman-matriz-cobertura-6x6-clase-2.png`: 6×6 matrix structure reference for ensuring EA coverage

---

**Last Updated**: April 14, 2026 | **Scope**: Clase 2 documentation
