# .github — Configuración, Reglas y Automatización

Directorio central que contiene toda la configuración de automatización, reglas de estructura y definiciones de agentes para el repositorio ISIL {year-semestre}.

---

## 📁 Estructura

```
.github/
├── README.md                    ← Archivo actual
├── copilot-instructions.md      # Instrucciones globales para Copilot
├── instructions/                # Reglas de estructura y formato
│   ├── README.md
│   ├── writing.instructions.md         # Estándares de escritura
│   ├── clase.instructions.md           # Reglas para clases
│   ├── actividad.instructions.md       # Reglas para actividades
│   ├── images.instructions.md          # Reglas para procesamiento de imágenes
│   └── mermaid-analysis.instructions.md # Reglas para análisis de Mermaid
├── agents/                      # Agentes personalizados
│   ├── README.md
│   └── AGENTS.md                # Definiciones de agentes
└── skills/                      # Metodologías y herramientas
    ├── README.md
    ├── mermaid-analysis/        # Skill: análisis de Mermaid
    │   ├── SKILL.md             # Metodología
    │   ├── README.md
    │   └── EJEMPLO-ANALISIS-REPOSITORIO-COMPLETO.md
    └── utilities/               # Herramientas varias
        ├── README.md
        ├── write-a-skill/
        ├── handoff/
        ├── excel-reader/
        └── caveman/
```

---

## 🎯 Capas de Configuración

### 1️⃣ **copilot-instructions.md** — Global
Define instrucciones **globales** que aplican a TODO el repositorio:
- Propósito y estructura general
- Convenciones de nombres
- Organizaciones de carpetas (OBLIGATORIO)
- Cursos activos
- Idioma y tono

**Ubicación:** `.github/copilot-instructions.md`

### 2️⃣ **Instructions** — Por Tipo de Documento
Define **reglas específicas** para documentos de cierto tipo:
- **writing.instructions.md:** Cómo escribir cualquier `.md` (Base)
- **clase.instructions.md:** Cómo estructurar documentos de clase
- **actividad.instructions.md:** Cómo estructurar documentos de actividad
- **images.instructions.md:** Cómo procesar y embeber imágenes
- **mermaid-analysis.instructions.md:** Cómo documentar análisis de Mermaid

**Ubicación:** `.github/instructions/`

### 3️⃣ **Skills** — Metodologías y Herramientas
Define **cómo hacer ciertas tareas** usando análisis sistemático:
- **mermaid-analysis:** Metodología para analizar dónde agregar diagramas
- **write-a-skill:** Cómo crear nuevos skills
- **handoff:** Cómo transferir conversación entre agentes
- **excel-reader:** Cómo extraer datos de Excel
- **caveman:** Cómo explicar sin jerga

**Ubicación:** `.github/skills/`

### 4️⃣ **Agents** — Configuración de Agentes
Define **agentes personalizados** con instrucciones y restricciones:
- Agentes especializados por dominio o tarea
- Herramientas disponibles para cada agente
- Instrucciones personalizadas

**Ubicación:** `.github/agents/AGENTS.md`

---

## 🔄 Cómo Interactúan

```
Usuario solicita tarea
    ↓
Copilot consulta: copilot-instructions.md (contexto global)
    ↓
Si es crear documento → Aplica instruction específica (clase/actividad/etc)
Si es analizar → Invoca skill (mermaid-analysis, etc)
Si es tarea especial → Activa agent personalizado
    ↓
Resultado cumple estándares globales + específicos + metodología
```

---

## 📚 Guía de Navegación

### Si quiero crear/editar documentación

1. **Comprende estándares globales:** Lee `copilot-instructions.md`
2. **Aplica reglas por tipo:** Consulta `instructions/` según documento
3. **Escribe claro:** Sigue `writing.instructions.md` como base

### Si necesito una herramienta o metodología

1. **Busca en skills:** `.github/skills/`
2. **Ejemplo:** Para analizar dónde agregar Mermaid, usa `mermaid-analysis/SKILL.md`

### Si trabajo con tareas especializadas

1. **Consulta agentes:** `.github/agents/AGENTS.md`
2. **Activa agente:** `@agent-name /comando`

---

## 🔍 Estructura Completa en Contexto

```
Repositorio ISIL
├── .github/                         ← TÚ ESTÁS AQUÍ
│   ├── copilot-instructions.md      (Global)
│   ├── instructions/                (Por tipo de doc)
│   ├── agents/                      (Agentes personalizados)
│   └── skills/                      (Metodologías)
├── {year-semestre}/                         ← Contenido de cursos (ej: 2026-1, 2026-2, 2027-1)
│   ├── arq-empresarial/
│   ├── direccion-estrategica-de-datos/
│   ├── analisis-estadistico-data-mining/
│   ├── customer-centricity-ti/
│   └── diseno-soluciones-ia/
├── _meta/                           ← Meta-documentación transversal
├── scripts/                         ← Herramientas (OCR, conversión, etc)
└── README.md                        ← Entrada principal
```

---

## 🔗 Referencias Rápidas

| Necesito... | Ir a... |
|---|---|
| Entender estructura global | [copilot-instructions.md](./copilot-instructions.md) |
| Escribir un `.md` claro | [instructions/writing.instructions.md](./instructions/writing.instructions.md) |
| Documentar una clase | [instructions/clase.instructions.md](./instructions/clase.instructions.md) |
| Documentar una actividad | [instructions/actividad.instructions.md](./instructions/actividad.instructions.md) |
| Procesar imágenes | [instructions/images.instructions.md](./instructions/images.instructions.md) |
| Analizar oportunidades de Mermaid | [skills/mermaid-analysis/SKILL.md](./skills/mermaid-analysis/SKILL.md) |
| Ver todos los skills | [skills/README.md](./skills/README.md) |
| Ver todas las instructions | [instructions/README.md](./instructions/README.md) |
| Configurar agentes | [agents/AGENTS.md](./agents/AGENTS.md) |

---

## 📝 Última Actualización

**Restructuración:** 10/06/2026  
**Cambios principales:**
- ✅ Creadas carpetas: `instructions/`, `agents/`
- ✅ Skill de documentación → Instructions (reglas)
- ✅ Nuevo skill: mermaid-analysis
- ✅ Migrado: AGENTS.md → `.github/agents/AGENTS.md`

**Compatibilidad:** VS Code + GitHub Copilot  
**Versión:** 1.0
