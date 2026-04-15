# Copilot Instructions for ISIL Course Notes

## Project Purpose
This repository contains course notes and study materials for the **Arquitectura Empresarial (Enterprise Architecture)** program at ISIL (2026-1 cohort). It's a learning workspace focused on enterprise architecture frameworks like TOGAF and Zachman, with Spanish language documentation.

## Repository Structure
```
isil/
├── 2026-1/
│   └── arq-empresarial/
│       └── clase-2/
│           ├── arquitectura-empresarial-zachman-togaf.md (main course notes)
│           ├── ae-fundamentos-clase-2.png (fundamentals diagram)
│           ├── zachman-togaf-diagrama-clase-2.png (framework comparison)
│           └── zachman-cobertura-matriz-6x6.png (6x6 matrix reference)
└── README.md (empty, to be populated)
```

## Key Patterns & Conventions

### File Naming
- **Semantic filenames**: Use descriptive names that indicate content scope
  - Good: `arquitectura-empresarial-zachman-togaf.md`
  - Bad: `clase-2.md` (non-descriptive)
- **Image naming**: Follow format `{concept}-{descriptor}-clase-N.png`
  - Example: `zachman-cobertura-matriz-6x6.png`

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
- **TOGAF (ADM)**: Structured methodology for designing EA; guides *as-is* → *to-be* evolution
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

## Common Tasks
- **Adding new class notes**: Create `{framework}-{topic}.md` in `2026-1/arq-empresarial/clase-X/` directory
- **Documenting diagrams**: Save images with semantic names; add `### Imagen X:` section referencing the file
- **Updating README**: Build index of all class materials organized by module (Frameworks, TOGAF, Zachman, practical cases)
- **Linking frameworks**: Always note when TOGAF and Zachman are complementary, not competing

## Key Files to Reference
- `2026-1/arq-empresarial/clase-2/arquitectura-empresarial-zachman-togaf.md`: Main class 2 notes with complete framework definitions and practical workflows
- `2026-1/arq-empresarial/clase-2/zachman-cobertura-matriz-6x6.png`: 6×6 matrix structure reference for ensuring EA coverage

---
**Last Updated**: April 14, 2026 | **Scope**: Clase 2 documentation
