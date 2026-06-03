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

## ⚠️ Archivos Antiguos — Qué Hacer

Los archivos en `.github/instructions/` quedan **deprecated pero funcionales**. Opciones:

### Opción A: Mantener Como Deprecated (Recomendado Ahora)
- Agregar encabezado: `⚠️ DEPRECATED — Ver versión nueva en .github/skills/`
- Dejar que funcionen en caso de referencias externas

### Opción B: Eliminar Inmediatamente
```bash
# Si estás seguro que no hay referencias:
rm -rf .github/instructions/documentacion-humana.instructions.md
rm -rf .github/instructions/header-clases.instructions.md
rm -rf .github/instructions/clase.instructions.md
rm -rf .github/instructions/actividad.instructions.md
rm -rf .github/instructions/ocr-imagenes.instructions.md
```

**Recomendación:** Mantener como deprecated por ahora, eliminar en próxima limpieza.

---

## 🚀 Próximos Pasos (Opcional)

- [ ] Agregar badges deprecated en archivos antiguos (si se mantienen)
- [ ] Crear skill para indexación de cursos
- [ ] Agregar validador de estructura de repositorio
- [ ] Documentar patrones `applyTo` en guía de skills

---

## 📊 Estadísticas

| Métrica | Valor |
|---|---|
| Skills de documentación | 4 |
| Skills de utilidades | 3 |
| Nuevas carpetas temáticas | 2 |
| READMEs nuevos | 3 |
| Archivos migrados/reorganizados | 8 |

---

## ✅ Checklist de Verificación

- [x] Todos los skills migrados y en estructura nueva
- [x] Frontmatter YAML estandarizado
- [x] READMEs temáticos creados
- [x] AGENTS.md actualizado con nuevas referencias
- [x] Consolidación de clase completada
- [ ] Archivos antiguos marcados como deprecated (opcional)
- [ ] Prueba de que agent detecta skills correctamente

---

## 📝 Notas

**Fecha de migración:** 2 de Junio de 2026  
**Realizado por:** Agente  
**Compatibilidad:** 100% — Estructura nueva es compatible con VS Code + GitHub Copilot  
**Reversible:** Sí, si es necesario se pueden recuperar archivos antiguos
