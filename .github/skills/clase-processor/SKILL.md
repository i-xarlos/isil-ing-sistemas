---
name: clase-processor
description: "Use when: processing a new class (PPTX to PDF conversion + optional enriched Markdown summary with analogies, real-world examples, industry cases, step-by-step flows, common mistakes, and reflection questions). Specializes in ISIL course documentation. Handles file conversion, renaming, and cleanup automatically."
---

# Clase Processor Skill

Automatiza el procesamiento completo de archivos de clase: conversión PPTX → PDF, renombrado semántico, limpieza de archivos, y opcionalmente generación de resúmenes estructurados.

## Acciones Disponibles

### 🎬 Convertir PPTX a PDF

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

### 📝 Generar Resumen Markdown (Opcional)

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

**⚠️ Estrategia de enriquecimiento:**

1. **Gancho humano:** Abrir con una pregunta o situación cotidiana
   - Ejemplo: "¿Alguna vez te has preguntado por qué Netflix te recomienda exactamente la serie que querías ver?"
   
2. **Analogías simples:** Comparar conceptos abstractos con situaciones diarias
   - Ejemplo: "Los datos sin análisis son como un libro cerrado"
   - Ejemplo: "La gobernanza de datos es como las reglas de una casa: ¿quién tiene llaves?"

3. **Ejemplos reales:** Usar empresas conocidas para cada concepto
   - Siempre incluir: empresa, problema, solución, resultado
   - Ejemplo: "Spotify usa datos para crear playlists personalizadas que aumentan el tiempo de escucha"

4. **Casos por industria:** Tablas que muestren datos específicos por sector
   - Columnas: Dato recopilado | Uso | Beneficio
   - Incluir: Banca, Retail, Salud, Educación, Tech

5. **Flujos paso a paso:** Diagramas ASCII que muestren procesos
   - Usar caracteres Unicode: `↓`, `├──`, `└──`
   - Máximo 5-7 pasos por flujo

6. **Errores comunes:** Tabla con errores reales y consecuencias
   - Columnas: Error | Ejemplo real | Consecuencia
   - Incluir multas, escándalos, pérdidas reales

7. **Preguntas de reflexión:** 2-3 preguntas al cierre
   - Tipo: "Si tuvieras una tienda online, ¿qué datos recopilarías?"

**⚠️ Estrategia de visualización:**

- ❌ Evitar: Mermaid con subgraphs complejos, emojis en nodos, etiquetas largas
- ✅ Usar: Tablas para comparativas, ASCII art para arquitectura, Mermaid solo para flujos simples
- ✅ Validar: Que todos los gráficos se rendericen correctamente antes de finalizar

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

## 📋 Plantilla de Resumen Enriquecido

Usa esta estructura para crear resúmenes que sean fáciles de entender y retener:

### Estructura obligatoria

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
| Aspecto 2 | Descripción | Empresa + resultado |

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
| Error 2 | Empresa que lo hizo | Multa/pérdida |

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

### Reglas de enriquecimiento

| Regla | Ejemplo correcto | Ejemplo incorrecto |
|-------|------------------|-------------------|
| **Gancho** | "¿Sabías que Netflix gana dinero con tus datos de visualización?" | "Este tema trata sobre monetización de datos" |
| **Analogía** | "La gobernanza es como las reglas de una casa" | "La gobernanza implica políticas y procedimientos" |
| **Ejemplo real** | "Spotify usa datos para crear playlists que aumentan el tiempo de escucha" | "Las empresas usan datos para personalizar" |
| **Consecuencia** | "Facebook multado $5B por uso indebido de datos" | "El incumplimiento tiene consecuencias legales" |

---

## 📊 Estrategia de Visualización (NEW - 2026-06-16)

**Problema:** Mermaid falla con gráficos complejos (renderización lenta, sobreposición, emojis problemáticos).

**Solución:** Evaluar complejidad y elegir formato de visualización adecuado.

### Matriz de decisión

| Caso de uso              | Formato        | Ventajas                                 | Limitaciones                   |
| ------------------------ | -------------- | ---------------------------------------- | ------------------------------ |
| Matriz 4 cuadrantes      | Tabla Markdown | Siempre legible, Universal               | No es "gráfico" visual         |
| Comparativa 3+ elementos | Tabla Markdown | Datos estructurados, Excel-compatible    | Requiere headers claros        |
| Flujo simple (3-4 pasos) | Mermaid TD/TB  | Visual, mantenible                       | Emojis + subgraphs = problemas |
| Arquitectura compleja    | ASCII art      | Legible en texto plano, sin dependencias | Requiere Unicode               |
| Casos especiales         | Combinación    | Máxima flexibilidad                      | Requiere criterio              |

### Guía de implementación

**Para Mermaid (si lo usas):**

1. ✅ Solo flujos simples lineales (TD o TB)
2. ✅ Sin emojis en nodos (causa errores de renderización)
3. ✅ Sin `<br/>` múltiples (simplificar a 1-2 líneas máximo)
4. ✅ Sin subgraphs complejos (convertir a tabla)
5. ✅ Nombres cortos de nodos (15-20 caracteres máximo)
6. ✅ Validar que se renderice en GitHub antes de finalizar

**Para Tablas Markdown:**

- Usar para: datos, comparativas, matrices de decisión
- Headers claros: `| Concepto | Descripción | Ejemplo |`
- Separador: `|---|---|---|`

**Para ASCII art:**

- Usar para: flujos verticales, arquitecturas, roadmaps
- Usar caracteres Unicode: `┌┐└┘─│┼├┤`
- Respetar alineación columnar

### Problemas comunes y soluciones

| Problema                  | Causa                        | Solución                                         |
| ------------------------- | ---------------------------- | ------------------------------------------------ |
| Gráfico no se ve          | Mermaid sintaxis inválida    | Convertir a tabla o ASCII art                    |
| Se ve montado/superpuesto | Subgraphs complejos          | Dividir en múltiples gráficos simples            |
| Emojis no se renderizan   | Caracteres no-ASCII en nodos | Remover emojis, usar texto plano                 |
| Tabla no formatea         | Falta separador `\|---`      | Verificar estructura: headers + separator + rows |

---

Verifica que los archivos generados cumplan convenciones del repositorio.

**Validaciones:**

- ✅ Nombres semánticos (sin genéricos como `clase-3.md`)
- ✅ Ubicación correcta en `{year-semestre}/{curso}/clase-X/`
- ✅ Sin carpetas adicionales bajo `clase-X/`
- ✅ Metadatos completados
- ✅ Enlaces relativos funcionan
- ✅ Sin archivos PPTX residuales
- ✅ **Gráficos se renderizan correctamente** (tablas bien formateadas, ASCII legible, Mermaid simple)

---

## Cuándo Usar Este Skill

✅ Tienes un nuevo PPTX de clase y necesitas convertirlo a PDF  
✅ Quieres un resumen **enriquecido** con analogías, ejemplos reales y casos por industria  
✅ Necesitas limpiar archivos PPTX después de procesarlos  
✅ Trabajas con cursos ISIL {year-semestre}  
✅ Necesitas preguntas de reflexión y glosario para facilitar el aprendizaje

❌ NO usar para: editar archivos existentes, crear estructuras de proyecto, debugging

---

## Flujo Típico

```
1. Usuario: "Convierte clase 5 de Análisis Estadístico"
   ↓
2. Skill extrae contenido del PPTX
   ↓
3. Convierte PPTX → PDF (Swift)
   ↓
4. Renombra PDF: tema-descriptor-clase-5.pdf
   ↓
5. Elimina PPTX original
   ↓
6. [OPCIONAL] Genera Markdown con resumen estructurado
   ↓
7. Valida estructura y convenciones
   ↓
✅ Resultado: archivos listos en carpeta correcta
```

---

## Recursos Utilizados

- **Script Swift:** `/Users/carlosgil/isil/scripts/convert_ppt_to_pdf.swift`
- **Convenciones:** `/Users/carlosgil/isil/.github/copilot-instructions.md`
- **Estructura:** `{year-semestre}/{curso}/clase-X/`

---

## Ejemplos de Entrada

```
1. "Procesa clase 10 de Dirección Estratégica de Datos"
2. "Convierte el PPTX de arquitectura empresarial con resumen"
3. "Genera PDF y resumen de clase 7 de IA"
4. "Ruta: /Users/carlosgil/isil/{year-semestre}/diseno-soluciones-ia/clase-9/archivo.pptx"
```

---

**Última actualización:** 23 de junio 2026 (Estructura de resumen enriquecido agregada: analogías, ejemplos reales, casos por industria, preguntas de reflexión)  
**Alcance:** ISIL {year-semestre} - Procesamiento de clases
