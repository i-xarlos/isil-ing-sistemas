# 📋 Migración de Skills — 2 de Junio de 2026

## 🎯 Resumen

Se reorganizaron todos los skills personalizados bajo una estructura jerárquica clara en `.github/skills/`. Los archivos antiguos en `.github/instructions/` están **deprecated pero funcionales**.

---

## 📦 Mapeo de Archivos Antiguos → Nuevos

| Archivo Antiguo | Ubicación Nueva | Estado |
|---|---|---|
| `.github/instructions/documentacion-humana.instructions.md` | `.github/skills/documentation/writing/SKILL.md` | ✅ Migrado |
| `.github/instructions/header-clases.instructions.md` | `.github/skills/documentation/clase/SKILL.md` | ✅ Consolidado |
| `.github/instructions/clase.instructions.md` | `.github/skills/documentation/clase/SKILL.md` | ✅ Consolidado |
| `.github/instructions/actividad.instructions.md` | `.github/skills/documentation/actividad/SKILL.md` | ✅ Migrado |
| `.github/instructions/ocr-imagenes.instructions.md` | `.github/skills/documentation/images/SKILL.md` | ✅ Migrado |
| `scripts/READ_EXCEL.skill.md` | `.github/skills/utilities/excel-reader/SKILL.md` | ✅ Movido |
| `.github/skills/write-a-skill/SKILL.md` | `.github/skills/utilities/write-a-skill/SKILL.md` | ✅ Reorganizado |
| `.github/skills/handoff/handoff.instructions.md` | `.github/skills/utilities/handoff/SKILL.md` | ✅ Reorganizado |

---

## 🆕 Estructura Nueva

```
.github/skills/
├── README.md                    ← Índice central (NUEVO)
├── documentation/               ← Skills de documentación (NUEVO)
│   ├── README.md
│   ├── clase/SKILL.md           ← Consolidado: header + workflow
│   ├── actividad/SKILL.md
│   ├── writing/SKILL.md
│   └── images/SKILL.md
└── utilities/                   ← Skills de herramientas (NUEVO)
    ├── README.md
    ├── write-a-skill/SKILL.md
    ├── handoff/SKILL.md
    └── excel-reader/SKILL.md
```

---

## ✨ Cambios Principales

### 1. **Consolidación de Clase**
- **Antes:** 2 archivos separados
  - `header-clases.instructions.md` (solo encabezado)
  - `clase.instructions.md` (workflow completo)
- **Ahora:** 1 skill unificado
  - `.github/skills/documentation/clase/SKILL.md` (ambos contenidos)

**Ventaja:** No hay redundancia; el skill cubre desde formato hasta workflow.

### 2. **Organización por Dominio**
- **documentation/** → Skills para crear y mejorar documentación
- **utilities/** → Skills para herramientas y procesos transversales

**Ventaja:** Más fácil de navegar y mantener.

### 3. **Estandarización de Nombres**
- Todos los skills ahora son `SKILL.md` (no `.instructions.md`)
- Frontmatter YAML estandarizado en todos

**Ventaja:** Consistencia; agent puede descubrir skills de forma predecible.

### 4. **READMEs Temáticos**
- `.github/skills/README.md` — Índice general
- `.github/skills/documentation/README.md` — Cómo usar skills de documentación
- `.github/skills/utilities/README.md` — Cómo usar herramientas

**Ventaja:** Documentación autodescubridora.

---

## 🔄 Actualización de Referencias

Los archivos que hacían referencia a los skills antiguos fueron actualizados:

| Archivo | Cambio |
|---|---|
| `AGENTS.md` | ✅ Actualizado con nuevas rutas |
| `copilot-instructions.md` | ✅ Sin cambios (no hacía referencias específicas) |
| `README.md` (raíz) | ⚠️ Revisar si tiene referencias |

---

## 📌 Decisión: Migración No Completada

Tras revisión, se decidió **no migrar** los archivos de `.github/instructions/` a `.github/skills/documentation/`.

**Motivo:** Las instructions (`writing`, `clase`, `actividad`, `images`) son conceptualmente **reglas de estructura y formato**, no metodologías o herramientas. Su lugar natural es `.github/instructions/`.

**Estado actual:**
- `.github/instructions/` — **Canonical**: contiene las reglas de estructura activas
- `.github/skills/` — Solo skills metodológicos (`mermaid-analysis`, `clase-processor`, utilidades)
- No existe ni se creará la carpeta `.github/skills/documentation/`

---

## 🔄 Referencias Actualizadas (17/06/2026)

Todos los archivos que referenciaban rutas inexistentes fueron corregidos:

| Archivo | Referencia antigua | Referencia nueva |
|---|---|---|
| `copilot-instructions.md` | `header-clases.instructions.md` | `clase.instructions.md` |
| `copilot-instructions.md` | `documentacion-humana.instructions.md` | `writing.instructions.md` |
| `copilot-instructions.md` | `ocr-imagenes.instructions.md` | `images.instructions.md` |
| `copilot-instructions.md` | `AGENTS.md` (raíz) | `.github/agents/AGENTS.md` |
| `AGENTS.md` (agents) | `.github/skills/documentation/writing/SKILL.md` | `.github/instructions/writing.instructions.md` |
| `AGENTS.md` (agents) | `.github/skills/documentation/clase/SKILL.md` | `.github/instructions/clase.instructions.md` |
| `AGENTS.md` (agents) | `.github/skills/documentation/actividad/SKILL.md` | `.github/instructions/actividad.instructions.md` |
| `AGENTS.md` (agents) | `.github/skills/documentation/images/SKILL.md` | `.github/instructions/images.instructions.md` |
| `scripts/README.md` | `../.github/skills/documentation/` | `../.github/instructions/` |
| `scripts/README.md` | `../AGENTS.md` (raíz) | `../.github/agents/AGENTS.md` |

---

## 📝 Notas

**Fecha de migración:** 2 de Junio de 2026  
**Realizado por:** Agente  
**Compatibilidad:** 100% — Estructura nueva es compatible con VS Code + GitHub Copilot  
**Reversible:** Sí, si es necesario se pueden recuperar archivos antiguos
