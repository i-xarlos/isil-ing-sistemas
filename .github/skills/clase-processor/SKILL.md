---
name: clase-processor
description: "Use when: processing a new class (PPTX to PDF conversion + optional enriched Markdown summary with analogies, real-world examples, industry cases, step-by-step flows, common mistakes, and reflection questions). Specializes in ISIL course documentation. Handles file conversion, renaming, and cleanup automatically."
---

# Clase Processor Skill

Automatiza el procesamiento completo de archivos de clase: conversión PPTX → PDF, renombrado semántico, limpieza de archivos, y opcionalmente generación de resúmenes estructurados.

---

## Acciones Disponibles

### 1. Convertir PPTX a PDF

Convierte presentación PowerPoint a PDF con nombre semántico automático.

**Entrada:**

- Ruta al archivo PPTX
- Ejemplo: `/Users/carlosgil/isil/{year-semestre}/direccion-estrategica-de-datos/clase-10/40062-S10-PPT.pptx`

**Salida:**

- PDF renombrado: `tema-descriptor-clase-N.pdf`
- PPTX original eliminado automáticamente
- Archivo ubicado en carpeta correcta: `{year-semestre}/{curso}/clase-N/`

**Ejemplo de uso:**

```
"Convierte el PPTX de clase 10 de Dirección Estratégica de Datos"
```

---

### 2. Generar Resumen Markdown (Opcional)

Crea documento estructurado y **enriquecido** con:

- Encabezado con metadatos (Código, Curso, Clase, Tema)
- **Gancho humano** (pregunta o situación cotidiana que conecte con el estudiante)
- **Analogías simples** para explicar conceptos complejos
- **Ejemplos reales** de empresas reconocidas (Netflix, Amazon, Google, Uber, etc.)
- **Casos de uso por industria** con tablas detalladas
- **Diagramas paso a paso** que muestren flujos de procesos
- **Errores comunes** y sus consecuencias reales
- **Preguntas de reflexión** al cierre
- **Glosario** con definiciones + ejemplos

**Entrada:**

- Ruta al PPTX o contenido extraído
- Solicitud explícita de "con resumen" o "con análisis"

**Salida:**

- Markdown: `tema-descriptor-clase-N.md`
- PDF del resumen (opcional)
- Ambos en carpeta correcta

**Ejemplo de uso:**

```
"Procesa clase 8 de Diseño de Soluciones con IA con resumen completo"
```

---

## Scripts Disponibles

### `read_ppt.swift` — Extraer contenido del PPTX

Extrae texto del PPTX usando pandoc. Útil antes de generar el resumen.

```bash
swift scripts/read_ppt.swift ruta/al/archivo.pptx
```

**Requisito:** pandoc instalado (`brew install pandoc`)

**Salida:** Texto plano del contenido de todas las diapositivas.

### `convert_ppt_to_pdf.swift` — Convertir PPTX a PDF

Busca todos los PPTX en el workspace y los convierte a PDF con LibreOffice.

```bash
swift scripts/convert_ppt_to_pdf.swift
```

**Nota:** Este script escanea todo el workspace. No acepta rutas individuales. Si necesitas convertir un solo archivo, usa directamente:

```bash
soffice --headless --convert-to pdf --outdir . "archivo.pptx"
```

**Requisito:** LibreOffice instalado (`/opt/homebrew/bin/soffice`)

### `remove_converted_pptx.swift` — Limpiar PPTX convertidos

Elimina PPTX que ya tienen PDF correspondiente.

```bash
swift scripts/remove_converted_pptx.swift
```

**Comportamiento:** Solo elimina si existe el PDF con el mismo nombre base.

---

## Flujo Típico

### Conversión simple (solo PDF)

```
1. Usuario: "Convierte clase 5 de Análisis Estadístico"
   ↓
2. soffice convierte PPTX → PDF
   ↓
3. Renombrar PDF: tema-descriptor-clase-5.pdf
   ↓
4. Eliminar PPTX original
   ↓
✅ Resultado: PDF listo en carpeta correcta
```

### Con resumen enriquecido

```
1. Usuario: "Procesa clase 10 de Dirección Estratégica de Datos con resumen"
   ↓
2. read_ppt.swift extrae contenido del PPTX
   ↓
3. soffice convierte PPTX → PDF
   ↓
4. Renombrar PDF: tema-descriptor-clase-10.pdf
   ↓
5. Generar Markdown con resumen enriquecido
   ↓
6. Eliminar PPTX original
   ↓
✅ Resultado: PDF + Markdown listos en carpeta correcta
```

---

## Estrategia de Enriquecimiento del Resumen

### Elementos obligatorios

| Elemento | Descripción | Ejemplo |
|----------|-------------|---------|
| **Gancho humano** | Pregunta o situación cotidiana | "¿Alguna vez te has preguntado por qué Netflix te recomienda esa serie?" |
| **Analogía simple** | Comparar con algo cotidiano | "Los datos sin análisis son como un libro cerrado" |
| **Ejemplo real** | Empresa + problema + solución + resultado | "Spotify usa datos para crear playlists que aumentan el tiempo de escucha" |
| **Casos por industria** | Tabla con datos específicos por sector | Banca, Retail, Salud, Educación, Tech |
| **Flujos paso a paso** | Diagramas ASCII con Unicode | `↓`, `├──`, `└──` (máximo 5-7 pasos) |
| **Errores comunes** | Tabla con errores reales y consecuencias | Multas, escándalos, pérdidas documentadas |
| **Preguntas de reflexión** | 2-3 preguntas al cierre | "Si tuvieras una tienda online, ¿qué datos recopilarías?" |

### Reglas de escritura

| Regla | Ejemplo correcto | Ejemplo incorrecto |
|-------|------------------|-------------------|
| **Gancho** | "¿Sabías que Netflix gana dinero con tus datos de visualización?" | "Este tema trata sobre monetización de datos" |
| **Analogía** | "La gobernanza es como las reglas de una casa" | "La gobernanza implica políticas y procedimientos" |
| **Ejemplo real** | "Spotify usa datos para crear playlists que aumentan el tiempo de escucha" | "Las empresas usan datos para personalizar" |
| **Consecuencia** | "Facebook multado $5B por uso indebido de datos" | "El incumplimiento tiene consecuencias legales" |

---

## Plantilla de Resumen

Usa la plantilla estándar de `clase.instructions.md` para el encabezado. Aquí la estructura de contenido enriquecido:

```md
# {Tema de la sesión} (Clase X)

**Curso:** {Nombre del curso} (ISIL, {year-semestre})
**Docente:** {Nombre del docente}
**Fecha:** DD/MM/AAAA

---

## Introducción

**Gancho humano:** Pregunta o situación cotidiana que conecte con el estudiante.

**Pregunta guía:** ¿Qué problema resuelve este tema?

**Objetivos de aprendizaje:**
- Objetivo 1
- Objetivo 2
- Objetivo 3

---

## 1. {Concepto Principal 1}

### ¿Qué es {concepto}?

**Analogía simple:** Comparar con algo cotidiano.

| Aspecto | Descripción | Ejemplo Real |
|---------|-------------|--------------|
| Aspecto 1 | Descripción | Empresa + resultado |

### Ejemplo detallado: {Empresa}

```
┌─────────────────────────────────────┐
│   FLUJO PASO A PASO                 │
├─────────────────────────────────────┤
│  1. Acción inicial                  │
│     ↓                               │
│  2. Proceso                        │
│     ↓                               │
│  3. Resultado                      │
└─────────────────────────────────────┘
```

---

## 2. {Concepto Principal 2}

### Casos por industria

| Industria | Dato recopilado | Uso | Beneficio |
|-----------|-----------------|-----|-----------|
| Banca | Datos de transacciones | Scoring crediticio | Préstamos precisos |
| Retail | Historial de compras | Recomendaciones | Mayor ticket promedio |
| Salud | Historial médico | Diagnóstico asistido | Precisión médica |

---

## N. Errores Comunes a Evitar

| Error | Ejemplo real | Consecuencia |
|-------|--------------|--------------|
| Error 1 | Empresa que lo hizo | Multa/pérdida |

---

## Conclusiones

1. Conclusión clave 1
2. Conclusión clave 2
3. Conclusión clave 3

**Frase clave:**
> "Frase memorable que resuma la idea principal"

---

## Glosario

| Término | Definición | Ejemplo |
|---------|------------|---------|
| Término 1 | Definición simple | Ejemplo cotidiano |

---

## Preguntas de Reflexión

1. **Pregunta aplicada** — "Si tuvieras X, ¿cómo harías Y?"
2. **Pregunta comparativa** — "¿Cuál de las estrategias ves más en tu vida diaria?"
3. **Pregunta crítica** — "¿Algún dato tuyo se está usando sin que lo sepas?"

---

## Fuentes

| # | Fuente | Tipo | URL |
|---|--------|------|-----|
| 1 | Autor. *Título* | Libro/Artículo | [URL](url) |
```

---

## Estrategia de Visualización

**Problema:** Mermaid falla con gráficos complejos (renderización lenta, sobreposición, emojis problemáticos).

**Regla general:** Evaluar complejidad y elegir el formato más simple que funcione.

| Caso de uso | Formato | Cuándo usarlo |
|-------------|---------|---------------|
| Matriz o comparativa | Tabla Markdown | Siempre funciona, datos estructurados |
| Flujo simple (3-4 pasos) | Mermaid TD/TB | Solo lineal, sin subgraphs |
| Arquitectura compleja | ASCII art | Legible en texto plano, sin dependencias |

**Para Mermaid:** Sin emojis en nodos, sin subgraphs complejos, nombres cortos (15-20 chars máx). Si no renderiza, convertir a tabla.

---

## Errores Comunes y Soluciones

| Error | Causa | Solución |
|-------|-------|----------|
| `soffice` no encontrado | LibreOffice no instalado o ruta incorrecta | Verificar `/opt/homebrew/bin/soffice` o instalar LibreOffice |
| Pandoc no disponible | No instalado | `brew install pandoc` |
| PDF no se genera | PPTX corrupto o permisos | Abrir PPTX manualmente, verificar permisos |
| Mermaid no renderiza | Sintaxis inválida o emojis | Convertir a tabla Markdown o ASCII art |
| PPTX no se elimina | PDF no existe | Verificar conversión exitosa antes de limpiar |

---

## Validaciones Finales

Verificar antes de entregar:

- [ ] Nombres semánticos (sin genéricos como `clase-3.md`)
- [ ] Ubicación correcta en `{year-semestre}/{curso}/clase-X/`
- [ ] Sin carpetas adicionales bajo `clase-X/`
- [ ] Metadatos completados
- [ ] Enlaces relativos funcionan
- [ ] Sin archivos PPTX residuales
- [ ] Gráficos se renderizan correctamente

---

## Cuándo Usar Este Skill

- Tienes un nuevo PPTX de clase y necesitas convertirlo a PDF
- Quieres un resumen **enriquecido** con analogías, ejemplos reales y casos por industria
- Necesitas limpiar archivos PPTX después de procesarlos
- Trabajas con cursos ISIL {year-semestre}
- Necesitas preguntas de reflexión y glosario para facilitar el aprendizaje

**NO usar para:** editar archivos existentes, crear estructuras de proyecto, debugging

---

## Recursos

- **Scripts:** `scripts/read_ppt.swift`, `scripts/convert_ppt_to_pdf.swift`, `scripts/remove_converted_pptx.swift`
- **Convenciones:** `.github/copilot-instructions.md`
- **Plantilla de clase:** `.github/instructions/clase.instructions.md`
- **Estructura:** `{year-semestre}/{curso}/clase-X/`

---

**Última actualización:** 24/06/2026
**Alcance:** ISIL {year-semestre} - Procesamiento de clases
