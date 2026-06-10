# Agents — Configuración de Agentes Personalizados

Este directorio contiene la configuración de agentes personalizados para GitHub Copilot en el repositorio ISIL 2026-1.

---

## 📋 Estructura

```
.github/agents/
├── README.md            ← Archivo actual
└── AGENTS.md            # Definición de agentes personalizados
```

---

## 🤖 AGENTS.md

Define **agentes personalizados** que pueden ejecutar tareas específicas en el contexto del repositorio.

### Propósito

Cada agente es una configuración especializada que:
- Tiene **instrucciones personalizadas** para su dominio
- Puede **activarse automáticamente** o por solicitud del usuario
- Tiene **restricciones de herramientas** (qué puede y no puede hacer)
- Puede **invocar otros agentes** para tareas complejas

### Ejemplos de Agentes

En VS Code + GitHub Copilot, puedes encontrar agentes configurados como:

```
@agent-name /comando   ← Invoca el agente con comando específico
```

---

## 🔗 Referencias

- [AGENTS.md](./AGENTS.md) — Definiciones completas de agentes
- [`.github/instructions/`](../instructions/) — Reglas de estructura (instructions)
- [`.github/skills/`](../skills/) — Metodologías y herramientas (skills)
- [Root `README.md`](../../README.md) — Visión general del repositorio

---

## 📝 Estructura de un Agente

Cada agente definido en `AGENTS.md` incluye:

```
name: agent-name              # Identificador único
description: Descripción      # Visible en UI
instructions: "..."           # Instrucciones específicas
tools: [list]                 # Herramientas permitidas
```

---

**Versión:** 1.0  
**Última actualización:** 10/06/2026  
**Compatibilidad:** VS Code + GitHub Copilot
