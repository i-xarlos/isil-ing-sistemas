# AGENTS.md

## Propósito

Este repositorio contiene apuntes y materiales de estudio de distintos cursos de ISIL.

El objetivo de cualquier agente en este workspace es ayudar a crear, mejorar y organizar documentación que sea fácil de entender para humanos, especialmente para estudiantes o profesionales que necesitan revisar conceptos con rapidez.

## Prioridades del agente

1. Prioriza claridad antes que sofisticación.
2. Escribe en español claro, técnico pero fácil de leer.
3. Explica primero la idea principal y luego los detalles.
4. Conecta teoría con aplicación práctica.
5. Mantén consistencia con la estructura del repositorio.

## Cómo debe escribir un agente

- Usa frases cortas y directas.
- Evita jerga innecesaria.
- Si aparece un término técnico importante, defínelo en una línea simple.
- Evita párrafos densos.
- Usa listas cuando mejoren el escaneo visual.
- Resume sin perder precisión.
- Si un concepto es abstracto, acompáñalo con un ejemplo real.

## Regla clave de legibilidad

Todo documento debe poder responder rápidamente estas preguntas:

- qué es;
- para qué sirve;
- cómo funciona;
- por qué importa;
- en qué caso real se aplica.

Si el texto no responde estas preguntas con facilidad, simplifícalo.

## Contexto del contenido

El repositorio puede contener varios cursos. Cuando trabajes dentro de una carpeta de curso:

- identifica primero el curso correcto;
- adapta el vocabulario al tema real de esa carpeta;
- usa ejemplos del dominio correspondiente;
- no mezcles conceptos de otro curso si no aportan valor.

Si el contenido es de arquitectura empresarial, puedes apoyarte en temas como:

- **TOGAF**
- **Zachman**
- **ADM**
- arquitectura de negocio
- arquitectura de datos
- arquitectura de aplicaciones
- arquitectura de tecnología

## Estructura esperada del repositorio

- Cada curso vive en su propia carpeta, por ejemplo: `2026-1/{curso}/`.
- Cada clase vive en su propia carpeta dentro del curso: `2026-1/{curso}/clase-X/`.
- No crees subcarpetas dentro de `clase-X/`.
- Usa nombres semánticos para archivos Markdown e imágenes.
- Si agregas una nueva clase, actualiza también el `README.md`.

## Reglas al crear documentación

- Usa `##` para secciones principales y `###` para subsecciones.
- Mantén una idea principal por sección.
- Usa listas con viñetas para conceptos y listas numeradas para pasos.
- Usa negrita solo para ayudar a escanear términos clave.
- No escribas como documento burocrático ni como paper académico.

## Regla especial para Markdown

Cuando trabajes sobre archivos `.md`, sigue también las instrucciones de `.github/instructions/documentacion-humana.instructions.md`.

Ese archivo contiene el skill específico de documentación humana y tiene prioridad práctica para mantener la redacción clara, escaneable y útil.

Si el archivo está dentro de una carpeta `clase-X/`, sigue también `.github/instructions/header-clases.instructions.md`.

Si el archivo está dentro de una carpeta `actividad-X/`, sigue también `.github/instructions/actividad.instructions.md`.

## Regla especial para imágenes

Cuando una carpeta de clase o actividad tenga imágenes `.png`, `.jpg` o `.gif` cuyo contenido no esté documentado en el Markdown correspondiente, usa el script OCR para extraer el texto y enriquecer el documento.

Sigue las instrucciones de `.github/instructions/ocr-imagenes.instructions.md`.

Ese archivo describe:
- cómo ejecutar el script `.ocr_images.swift` desde la raíz;
- el patrón de enriquecimiento paso a paso;
- cómo integrar el texto extraído en el Markdown sin pegar texto crudo;
- el checklist de calidad para imágenes documentadas.

## Qué evitar

- Texto inflado o redundante.
- Definiciones circulares.
- Explicaciones demasiado abstractas sin ejemplo.
- Nombres genéricos de archivo.
- Contenido fuera de la carpeta correcta de clase.
- Encabezados con curso, docente o fecha copiados de otra carpeta.

## Criterio de calidad

Antes de dar por terminado un cambio, verifica que:

- el documento se entiende en lectura rápida;
- la estructura visual ayuda a estudiar;
- hay al menos un ejemplo cuando el concepto lo necesita;
- el contenido respeta el curso real de la carpeta y no arrastra datos de otra clase;
- el contenido conecta negocio, datos, aplicaciones y tecnología cuando aplique;
- el resultado parece escrito para personas, no para una máquina.
