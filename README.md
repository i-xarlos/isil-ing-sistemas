# ISIL - Arquitectura Empresarial (2026-1)

## Propósito

Repositorio de **resúmenes accesibles y entendibles** de los conceptos clave cubiertos en cada clase del programa de Arquitectura Empresarial en ISIL.

Este repositorio se enfoca en capturar lo más importante de cada sesión de forma organizada, permitiendo revisión rápida y referencia futura.

## Estructura

```txt
2026-1/
└── arq-empresarial/
    ├── clase-1/
    │   └── (resúmenes y materiales)
    ├── clase-2/
    │   ├── arquitectura-empresarial-zachman-togaf.md
    │   ├── ae-fundamentos-clase-2.png
    │   ├── zachman-togaf-diagrama-clase-2.png
    │   └── zachman-cobertura-matriz-6x6.png
    ├── clase-3/
    │   └── (próximas clases)
    └── ...
README.md
```

**Organización por:**

- **Curso**: `2026-1/arq-empresarial/` (programa y cohorte)
- **Semana de clase**: `clase-1/`, `clase-2/`, etc.
- **Contenido dentro**: notas markdown + diagramas/imágenes clave

## Convenciones

### Nombres de archivos

- **Markdown**: descriptivo del tema → `arquitectura-empresarial-zachman-togaf.md`
- **Imágenes**: `{concepto}-{descriptor}-clase-N.png` → `ae-fundamentos-clase-2.png`

### Contenido esperado por clase

Cada carpeta de clase incluye:

1. **Markdown principal**: resumen de conceptos clave con ejemplos prácticos
2. **Diagramas**: imágenes que ilustran frameworks y relaciones
3. **Casos reales**: conexiones con sectores (banca, Smart Cities, etc.)

### Ejemplo: Clase 2 (Arquitectura Empresarial - TOGAF & Zachman)

- ✅ Definición de AE como disciplina estratégica
- ✅ Frameworks TOGAF (ADM) y Zachman (matriz 6×6)
- ✅ Complementariedad entre ambos
- ✅ Aplicación práctica con casos reales
- ✅ 4 pilares: Negocio, Datos, Aplicaciones, Tecnología

## Cómo usar este repositorio

1. **Buscar tema específico**: navega por semana de clase → abre el markdown
2. **Revisar rápido**: cada clase resume lo esencial sin jerga innecesaria
3. **Casos prácticos**: busca ejemplos de sectores en los que trabajas
4. **Conectar conceptos**: ve las relaciones entre clases con cross-references

## Skill de documentación humana

Este repositorio incluye un skill reusable para que los agentes redacten documentos más claros y fáciles de leer para humanos.

- Archivo: `.github/instructions/documentacion-humana.instructions.md`
- Alcance: todos los archivos Markdown del repositorio
- Enfoque: claridad, estructura escaneable, ejemplos concretos y lenguaje simple

## Guía para nuevas clases

## Guía ESTRICTA para nuevas clases

### PASO 1: Crear estructura de carpeta

```bash
2026-1/arq-empresarial/clase-X/
```

### PASO 2: Crear archivo principal

- Nombre: `{tema}-{descriptor}-clase-X.md`
- Ejemplo: `arquitectura-empresarial-zachman-togaf.md` (para clase-2)
- Ubicación: DENTRO de `clase-X/`
- Contenido: contexto → conceptos → ejemplos → aplicación

### PASO 3: Guardar imágenes/diagramas

- Nombre: `{concepto}-{descriptor}-clase-X.png`
- Ejemplos: `ae-fundamentos-clase-2.png`, `zachman-cobertura-matriz-6x6.png`
- Ubicación: DENTRO de `clase-X/`
- Referenciar en markdown con: `### Imagen X: {nombre-archivo}`

### PASO 4: Actualizar README.md

- Agregar enlace a clase en tabla de contenidos
- Formato: `- **Clase X**: tema principal | fecha`

### PASO 5: Formato markdown

- Negrita para: **TOGAF**, **Zachman**, **ADM**, **AE**
- Listas numeradas para procesos; puntos para conceptos
- Máximo una imagen por sección temática
- Español 100%

### NO HAGAS

- ❌ Crear subcarpetas dentro de `clase-X/`
- ❌ Archivos con nombres genéricos (`image.png`, `notes.md`)
- ❌ Mezclar clases en una carpeta
- ❌ Guardar archivos fuera de `clase-X/`
- ❌ Cambiar nombres después de crear

---

**Programa**: Arquitectura Empresarial | **Profesor**: Richard Anthony Romero Mori | **Cohorte**: 2026-1

