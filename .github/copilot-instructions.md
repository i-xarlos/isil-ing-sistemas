# Instrucciones para Copilot — ISIL Ingeniería de Sistemas (2026-1)

## Propósito del repositorio

Este repositorio contiene apuntes y materiales de estudio de **múltiples cursos** de la carrera en ISIL, cohorte 2026-1.

Cursos activos:
- **Arquitectura Empresarial** (`arq-empresarial`)
- **Dirección Estratégica de Datos** (`direccion-estrategica-de-datos`)
- **Análisis Estadístico y Data Mining** (`analisis-estadistico-data-mining`)
- **Diseño de Soluciones con IA** (`diseno-soluciones-ia`)

Toda la documentación está en **español**. La claridad y utilidad práctica tienen prioridad sobre la formalidad académica.

---

## Arquitectura de Carpetas (OBLIGATORIA)

```txt
.github/
└── copilot-instructions.md
_meta/                              ← archivos transversales de la cohorte
├── INDICE-CONCEPTOS.md
├── PLANTILLA-NUEVAS-CLASES.md
└── PR-INFO.md
2026-1/
├── arq-empresarial/
│   ├── clase-1/
│   ├── clase-2/
│   │   ├── arquitectura-empresarial-zachman-togaf-clase-2.md
│   │   ├── arquitectura-empresarial-fundamentos-clase-2.png
│   │   ├── zachman-togaf-relacion-clase-2.png
│   │   └── zachman-matriz-cobertura-6x6-clase-2.png
│   └── clase-N/
├── direccion-estrategica-de-datos/
│   ├── clase-1/
│   └── clase-N/
├── analisis-estadistico-data-mining/
│   ├── clase-1/
│   ├── clase-2/
│   └── clase-N/
└── diseno-soluciones-ia/
    ├── clase-1/
    ├── clase-2/
    ├── actividad-1/
    └── clase-N/
AGENTS.md
README.md
```

---

## Reglas estrictas de estructura

### Archivos en la raíz

Solo estos archivos pueden vivir en la raíz del repositorio:

- `README.md` — entrada principal del repositorio
- `AGENTS.md` — instrucciones de control para agentes
- `_meta/` — carpeta de documentación transversal de la cohorte

**NO crear ningún otro `.md` suelto en la raíz.** Cualquier documento transversal va en `_meta/`.

### Archivos meta (transversales de la cohorte)

Los archivos que no pertenecen a un curso específico van en `_meta/`:

- Índice de conceptos
- Plantillas reutilizables
- Documentación de PR o decisiones de cohorte

### Carpetas de clase

- Cada clase tiene su propia carpeta: `clase-1/`, `clase-2/`, etc.
- Los archivos van DENTRO de la carpeta de su clase
- NO crear subcarpetas adicionales dentro de `clase-X/`
- Nombres de archivo SIEMPRE semánticos: `{tema}-{descriptor}-clase-N.{ext}`

### Extensiones permitidas

`.md`, `.png`, `.jpg`, `.gif`

### Archivos a ignorar

- `.DS_Store` — ignorado por `.gitignore`, nunca commitear

---

## Convenciones de nombres

| Tipo | Patrón | Ejemplo |
|---|---|---|
| Markdown de clase | `{tema}-{descriptor}-clase-N.md` | `arquitectura-empresarial-zachman-togaf-clase-2.md` |
| Imagen de clase | `{concepto}-{descriptor}-clase-N.png` | `zachman-matriz-cobertura-6x6-clase-2.png` |
| Markdown de actividad | `{tema}-{descriptor}-actividad-N.md` | `swe-bench-comparacion-modelos-actividad-1.md` |
| Imagen de actividad | `{concepto}-{descriptor}-actividad-N.png` | `swe-bench-comparacion-modelos-actividad-1.png` |

**Prohibido:** `image.png`, `clase-3.md`, `Slide3.png`, nombres sin contexto.

---

## Órdenes estrictas para el agente

### Al agregar una nueva clase

1. ✅ Identificar el curso correcto (`arq-empresarial`, `diseno-soluciones-ia`, etc.)
2. ✅ Crear carpeta: `2026-1/{curso}/clase-X/`
3. ✅ Crear markdown: `{tema}-{descriptor}-clase-X.md` dentro de `clase-X/`
4. ✅ Guardar imágenes: `{concepto}-{descriptor}-clase-X.png` dentro de `clase-X/`
5. ✅ Actualizar `README.md` con enlace a la nueva clase
6. ✅ NO mover archivos después de crearlos
7. ✅ NO dejar archivos `.md` sueltos en la raíz

### Al documentar contenido

- Estructura: `##` para secciones, `###` para subsecciones
- Imágenes: referenciar con ruta relativa `./nombre-archivo.png`
- Ejemplos: siempre incluir casos de sectores reales (banca, salud, Smart Cities, etc.)
- Idioma: 100% español, sin excepciones
- Conectar con otros cursos cuando sea relevante

### Al actualizar documentación transversal

- Archivos meta van en `_meta/`, no en la raíz de cursos ni sueltos en el repositorio
- Actualizar `README.md` si se agrega o mueve un archivo meta
- Usar rutas relativas desde la ubicación real del archivo

---

## Estructura de contenido por clase

Cada carpeta de clase debe incluir:

1. **Markdown principal**: resumen de conceptos con ejemplos prácticos
2. **Diagramas** (si aplica): imágenes que ilustran relaciones y frameworks
3. **Encabezado estándar** (ver `.github/instructions/header-clases.instructions.md`)

---

## Idioma y tono

- **Español** en todo el contenido de clase y documentación
- **Claro y escaneable**: frases cortas, listas, sin jerga innecesaria
- **Conectado con la práctica**: cada concepto abstracto necesita un ejemplo real
- **Multi-curso**: no mezcles vocabulario de un curso en la carpeta de otro

---

## Archivos de referencia

| Archivo | Descripción |
|---|---|
| `_meta/INDICE-CONCEPTOS.md` | Índice centralizado de todos los conceptos clave entre cursos |
| `_meta/PLANTILLA-NUEVAS-CLASES.md` | Plantilla para crear nuevas clases con estructura y checklist |
| `.github/instructions/header-clases.instructions.md` | Formato obligatorio de encabezado para documentos de clase |
| `.github/instructions/documentacion-humana.instructions.md` | Reglas de escritura clara y escaneable |
| `.github/instructions/ocr-imagenes.instructions.md` | Instrucciones para documentar imágenes con OCR |

---

**Última actualización**: 16/04/2026 | **Alcance**: Repositorio multi-curso 2026-1
