# Skills — Índice y Estructura

Este directorio contiene todos los **skills personalizados** para el repositorio ISIL 2026-1. Los skills se organizan por dominio para facilitar descubrimiento y mantenimiento.

---

## 📁 Estructura Jerárquica

```
.github/skills/
├── README.md                 ← Archivo actual
├── documentation/            ← Skills para documentación
│   ├── README.md
│   ├── clase/
│   │   └── SKILL.md          # Documentación completa de clases
│   ├── actividad/
│   │   └── SKILL.md          # Estructura de actividades académicas
│   ├── writing/
│   │   └── SKILL.md          # Estándares de escritura clara
│   └── images/
│       └── SKILL.md          # OCR y procesamiento de imágenes
├── utilities/                ← Skills de herramientas
│   ├── README.md
│   ├── write-a-skill/
│   │   └── SKILL.md          # Crear nuevos skills
│   ├── handoff/
│   │   └── SKILL.md          # Transferencia de contexto entre agentes
│   └── excel-reader/
│       └── SKILL.md          # Lectura de archivos Excel
```

---

## 🎯 Cómo Usar Esta Estructura

### Para Crear o Editar Documentación

Consulta la carpeta `documentation/`:

| Skill | Cuándo Usarlo | Archivo |
|---|---|---|
| **Clase** | Generar resúmenes detallados de sesiones de clase | [documentation/clase/SKILL.md](documentation/clase/SKILL.md) |
| **Actividad** | Crear documentación académica de actividades | [documentation/actividad/SKILL.md](documentation/actividad/SKILL.md) |
| **Escritura** | Aplicar estándares de claridad y legibilidad | [documentation/writing/SKILL.md](documentation/writing/SKILL.md) |
| **Imágenes** | Procesar imágenes con OCR y enriquecerlas | [documentation/images/SKILL.md](documentation/images/SKILL.md) |

### Para Usar Herramientas y Utilidades

Consulta la carpeta `utilities/`:

| Skill | Cuándo Usarlo | Archivo |
|---|---|---|
| **Write-a-Skill** | Crear nuevos skills personalizados | [utilities/write-a-skill/SKILL.md](utilities/write-a-skill/SKILL.md) |
| **Handoff** | Transferir conversación a otro agente | [utilities/handoff/SKILL.md](utilities/handoff/SKILL.md) |
| **Excel Reader** | Extraer contenido de archivos Excel | [utilities/excel-reader/SKILL.md](utilities/excel-reader/SKILL.md) |

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
applyTo: "2026-1/**/*.md"  # Activar para archivos Markdown en 2026-1
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

- [AGENTS.md](../../../AGENTS.md) — Instrucciones globales del agente para este repositorio
- [copilot-instructions.md](../copilot-instructions.md) — Instrucciones globales de Copilot
- [SKILL.md de ejemplo](utilities/write-a-skill/SKILL.md) — Plantilla de skill completa

---

## 📝 Última Actualización

**Estructura reorganizada:** 2026-06-02  
**Skills activos:** 7 (4 de documentación, 3 de utilidades)  
**Compatibilidad:** VS Code + GitHub Copilot
