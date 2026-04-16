---
applyTo: "2026-1/**/*.{png,jpg,gif}"
---

# Skill: lectura y documentación de imágenes

Cuando encuentres imágenes en carpetas de clase o actividad, sigue este skill completo:

1. Renombra la imagen con un nombre semántico si el actual no lo es.
2. Ejecuta OCR para extraer su texto.
3. Enriquece el documento Markdown de la carpeta con el contenido extraído.
4. Embebe la imagen en la sección correcta del Markdown.

---

## Qué es el script OCR

`scripts/ocr_images.swift` está en la carpeta `scripts/` del repositorio.  
Usa el framework **Vision** de macOS con precisión alta.  
Soporta español (`es-ES`) e inglés (`en-US`).

---

## Cuándo aplicar este skill

Aplícalo cuando:

- Hay imágenes en una carpeta `clase-X/` o `actividad-X/`.
- El nombre del archivo no describe su contenido (`image.png`, `foto1.png`, `Slide3.png`).
- El documento `.md` de esa carpeta no embebe o no describe la imagen.
- Se pide enriquecer o completar los apuntes de una clase o actividad.

No apliques si:

- La imagen es solo decorativa y no tiene texto relevante.
- El nombre ya es semántico y la imagen ya está embebida y documentada en el `.md`.

---

## Paso 1 — Renombrar la imagen

Antes de cualquier otra acción, verifica que el nombre del archivo sea semántico.

### Patrón de nombre obligatorio

Para clases:
```
{tema}-{descriptor}-clase-{N}.{ext}
```

Para actividades:
```
{tema}-{descriptor}-actividad-{N}.{ext}
```

### Ejemplos

| Nombre original | Nombre correcto |
|---|---|
| `image.png` | `zachman-matriz-cobertura-6x6-clase-2.png` |
| `Slide3.png` | `togaf-adm-fases-clase-3.png` |
| `foto_diagrama.jpg` | `arquitectura-negocio-capas-clase-1.jpg` |
| `captura.png` | `swe-bench-comparacion-modelos-actividad-1.png` |
| `IMG_0042.png` | `diseno-ia-pipeline-datos-clase-2.png` |

### Reglas de nombre

- Usa solo minúsculas y guiones (`-`), sin espacios ni guiones bajos.
- Usa el concepto principal de la imagen como prefijo.
- El número de clase o actividad debe coincidir con la carpeta contenedora.
- Usa la extensión original sin cambiarla.

### Cómo renombrar

```bash
mv ruta/original/nombre-viejo.png ruta/original/nombre-nuevo.png
```

Ejemplo real:

```bash
mv 2026-1/arq-empresarial/clase-2/Slide3.png \
   2026-1/arq-empresarial/clase-2/togaf-adm-fases-clase-2.png
```

Si la imagen ya estaba referenciada en algún `.md` con el nombre viejo, actualiza todas las referencias antes de continuar.

---

## Paso 2 — Ejecutar OCR

Desde la raíz del repositorio:

```bash
swift scripts/ocr_images.swift ruta/imagen.png
```

Puedes pasar varias imágenes en un solo comando:

```bash
swift scripts/ocr_images.swift 2026-1/arq-empresarial/clase-2/togaf-adm-fases-clase-2.png \
                               2026-1/arq-empresarial/clase-2/zachman-matriz-clase-2.png
```

El script imprime el texto extraído separado con `=== nombre-del-archivo.png ===`.

---

## Paso 3 — Analizar el texto extraído

Antes de escribir en el Markdown, responde estas preguntas:

- ¿Qué concepto principal muestra la imagen?
- ¿Hay términos técnicos, pasos, matrices, tablas, listas?
- ¿El texto extraído conecta con alguna sección ya existente en el `.md`?
- ¿Está en inglés y debe traducirse?

---

## Paso 4 — Enriquecer el Markdown

Integra el contenido extraído según el tipo de imagen:

| Tipo de imagen | Cómo integrarlo |
|---|---|
| Diapositiva de concepto | Agrega `###` con el concepto y explícalo en 2-4 líneas |
| Tabla o matriz | Reconstruye la tabla en Markdown con los datos del OCR |
| Diagrama con etiquetas | Lista los elementos como viñetas y describe su relación |
| Lista de pasos o proceso | Conviértela en lista numerada |
| Gráfico comparativo | Describe los valores clave e interpreta la tendencia |

Reglas de escritura:

- No pegues el texto crudo del OCR. Siempre reescribe.
- Condensa: si el OCR captura 50 líneas, extrae los 3-5 puntos clave.
- Escribe en español claro siguiendo el skill de documentación humana.
- Si el OCR produce errores parciales, completa con lo visible o marca como `[verificar]`.

---

## Paso 5 — Embeber la imagen en el Markdown

Después del texto enriquecido, agrega la referencia visual en la sección temática correcta:

```md
### Imagen: {descripción del contenido}

![{texto alternativo descriptivo}](./{nombre-semantico-clase-N}.png)
```

Ejemplo:

```md
### Imagen: TOGAF ADM — fases del ciclo

![Diagrama de las fases del ciclo ADM de TOGAF](./togaf-adm-fases-clase-2.png)
```

Reglas de embedding:

- Usa ruta relativa con `./` para que funcione en cualquier entorno.
- El texto alternativo (`alt text`) describe lo que muestra la imagen, no su nombre de archivo.
- Embebe la imagen en la sección donde el contenido sea relevante, no al final del documento como apéndice.
- Si el `.md` ya tiene una sección de "Gráficos" o "Imágenes", agrégala ahí y asegúrate de que tenga texto descriptivo antes del `![]()`.

---

## Paso 6 — Verificar consistencia

Antes de terminar, confirma:

- El nombre del archivo es semántico y sigue el patrón de la carpeta.
- No quedan referencias rotas al nombre anterior en ningún `.md` de la carpeta.
- La imagen está embebida con `![]()` en la sección correcta del `.md`.
- El texto enriquecido fluye naturalmente con el resto del documento.
- El encabezado del `.md` cumple el skill de header-clases o actividades según corresponda.

---

## Manejo de errores del OCR

| Error en consola | Qué hacer |
|---|---|
| `No se pudo abrir imagen` | Verifica que la ruta sea correcta y el archivo exista |
| `No se pudo convertir a CGImage` | El archivo puede estar corrupto; revisa con otro visualizador |
| `OCR error: ...` | Error de Vision API; verifica que sea una imagen válida |
| Texto vacío o sin sentido | La imagen no tiene texto legible; documenta visualmente con un párrafo descriptivo |

---

## Checklist antes de terminar

- [ ] El nombre del archivo es semántico y sigue el patrón `{tema}-{descriptor}-clase-N.ext`.
- [ ] No hay referencias rotas en el `.md` por el renombrado.
- [ ] La imagen está embebida con `![]()` en la sección temática correcta.
- [ ] Hay texto descriptivo antes de la imagen (no es un `![]()` solitario).
- [ ] El texto extraído fue reescrito y condensado (no pegado en crudo).
- [ ] El documento sigue el skill de documentación humana.
- [ ] Si la carpeta es `clase-X/`, el encabezado cumple el skill de header-clases.
- [ ] Si la carpeta es `actividad-X/`, el documento cumple el skill de `actividad` (`.github/instructions/actividad.instructions.md`).
