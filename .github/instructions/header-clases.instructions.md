---
applyTo: "2026-1/**/clase-*/**/*.md"
---

# Skill: encabezado estándar para documentos de clase

Cuando crees o edites un archivo Markdown dentro de una carpeta `clase-X/`, revisa siempre que el encabezado del documento siga esta estructura al inicio del archivo.

## Formato obligatorio

```md
# {Tema de la sesión} (Clase X)

**Curso:** {Nombre del curso} (ISIL, 2026-1)  
**Docente:** {Nombre del docente}  
**Fecha:** DD/MM/AAAA
```

## Reglas

- La primera línea debe ser un título `#` con el tema y el número de clase entre paréntesis.
- Después del título debe haber una línea en blanco.
- Luego deben aparecer estas tres líneas de metadatos, en este orden:
  1. `**Curso:** {Nombre del curso} (ISIL, 2026-1)`
  2. `**Docente:** {Nombre del docente}`
  3. `**Fecha:** DD/MM/AAAA`
- Mantén dos espacios al final de las dos primeras líneas de metadatos para respetar el salto de línea en Markdown.
- Usa fechas en formato `DD/MM/AAAA`.
- El número de clase del título debe coincidir con la carpeta `clase-X/`.
- La clase también es dinámica: usa el número real de la carpeta o sesión, no un valor fijo como `Clase 1`.
- El nombre del curso y la fecha deben corresponder a la carpeta o al material fuente con el que se está trabajando.
- Si el tema cambia, solo cambia la parte temática del título; conserva la estructura general.
- No fijes el curso, el docente ni la fecha con valores globales si la carpeta pertenece a otro curso.

## Qué revisar

Antes de dar por válido un Markdown de clase, confirma que:

- existe un único título `#` al inicio;
- el título incluye `(Clase X)`;
- el curso coincide con el curso real de esa carpeta;
- el docente coincide con el material de esa carpeta o clase;
- la fecha existe y usa el formato correcto.

## Corrección automática esperada

Si el encabezado no cumple el formato:

- corrígelo antes de continuar con el resto del documento;
- conserva el curso, docente y fecha correctos de esa carpeta si ya están disponibles;
- no inventes una fecha si no existe en el material fuente;
- si falta la fecha y no se puede inferir con seguridad, deja `**Fecha:** [pendiente]` y señala que requiere confirmación;
- si falta el nombre del curso o del docente y no se puede inferir con seguridad, deja `**Curso:** [pendiente]` o `**Docente:** [pendiente]`;
- no cambies el contenido del cuerpo si solo el encabezado necesita ajuste.

## Alcance

Estas reglas aplican a apuntes y resúmenes de clase dentro de carpetas como `2026-1/{curso}/clase-X/`.
No fuerces este encabezado en archivos como `README.md`, `AGENTS.md` o archivos de instrucciones.
