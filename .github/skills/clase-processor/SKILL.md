---
name: clase-processor
description: "Use when: processing a new class (PPTX to PDF conversion + optional Markdown summary with concepts, examples, Mermaid diagrams, and glossary). Specializes in ISIL course documentation. Handles file conversion, renaming, and cleanup automatically."
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

Crea documento estructurado con:

- Encabezado con metadatos (Código, Curso, Clase, Tema)
- Conceptos fundamentales
- Ejemplos gráficos (elegir formato según complejidad):
  - **Tablas Markdown**: matrices, comparativas, datos estructurados
  - **Diagramas ASCII art**: arquitecturas, flujos complejos
  - **Mermaid simple**: solo flujos lineales (sin subgraphs)
- Tablas comparativas
- Casos de uso por industria
- Glosario de términos

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
✅ Quieres un resumen estructurado con conceptos y diagramas  
✅ Necesitas limpiar archivos PPTX después de procesarlos  
✅ Trabajas con cursos ISIL {year-semestre}

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

**Última actualización:** 16 de junio de 2026 (Estrategia de visualización actualizada: Mermaid simple + Tablas + ASCII art)  
**Alcance:** ISIL {year-semestre} - Procesamiento de clases
