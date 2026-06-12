---
name: clase-processor
description: "Use when: processing a new class (PPTX to PDF conversion + optional Markdown summary with concepts, examples, Mermaid diagrams, and glossary). Specializes in ISIL 2026-1 course documentation. Handles file conversion, renaming, and cleanup automatically."
---

# Clase Processor Skill

Automatiza el procesamiento completo de archivos de clase: conversión PPTX → PDF, renombrado semántico, limpieza de archivos, y opcionalmente generación de resúmenes estructurados.

## Acciones Disponibles

### 🎬 Convertir PPTX a PDF

Convierte presentación PowerPoint a PDF con nombre semántico automático.

**Entrada:**

- Ruta al archivo PPTX
- Ejemplo: `/Users/carlosgil/isil/2026-1/direccion-estrategica-de-datos/clase-10/40062-S10-PPT.pptx`

**Salida:**

- PDF renombrado: `tema-descriptor-clase-N.pdf`
- PPTX original eliminado automáticamente
- Archivo ubicado en carpeta correcta: `2026-1/{curso}/clase-N/`

**Ejemplo de uso:**

```
"Convierte el PPTX de clase 10 de Dirección Estratégica de Datos"
```

---

### 📝 Generar Resumen Markdown (Opcional)

Crea documento estructurado con:

- Encabezado con metadatos (Código, Curso, Clase, Tema)
- Conceptos fundamentales
- Ejemplos gráficos con diagramas Mermaid
- Tablas comparativas
- Casos de uso por industria
- Glosario de términos

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

### 🔗 Validar Estructura

Verifica que los archivos generados cumplan convenciones del repositorio.

**Validaciones:**

- ✅ Nombres semánticos (sin genéricos como `clase-3.md`)
- ✅ Ubicación correcta en `2026-1/{curso}/clase-X/`
- ✅ Sin carpetas adicionales bajo `clase-X/`
- ✅ Metadatos completados
- ✅ Enlaces relativos funcionan
- ✅ Sin archivos PPTX residuales

---

## Cuándo Usar Este Skill

✅ Tienes un nuevo PPTX de clase y necesitas convertirlo a PDF  
✅ Quieres un resumen estructurado con conceptos y diagramas  
✅ Necesitas limpiar archivos PPTX después de procesarlos  
✅ Trabajas con cursos ISIL 2026-1

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
- **Estructura:** `2026-1/{curso}/clase-X/`

---

## Ejemplos de Entrada

```
1. "Procesa clase 10 de Dirección Estratégica de Datos"
2. "Convierte el PPTX de arquitectura empresarial con resumen"
3. "Genera PDF y resumen de clase 7 de IA"
4. "Ruta: /Users/carlosgil/isil/2026-1/diseno-soluciones-ia/clase-9/archivo.pptx"
```

---

**Última actualización:** 11 de junio de 2026  
**Alcance:** ISIL 2026-1 - Procesamiento de clases
