---
name: image-documentation
description: Process class and activity images with OCR, rename semantically, and embed with descriptive text. Use when documenting images or enriching Markdown with visual content.
applyTo: "*/clase-*/**/*.{png,jpg,gif}"
---

# Imágenes — Lectura y Documentación

Cuando encuentres imágenes en carpetas de clase o actividad, sigue este skill para renombrar, procesar con OCR y enriquecer la documentación.

---

## Qué es el Script OCR

`scripts/ocr_images.swift` está en la carpeta `scripts/` del repositorio.
- Usa el framework **Vision** de macOS con precisión alta
- Soporta español (`es-ES`) e inglés (`en-US`)

---

## Cuándo Aplicar Este Skill

Aplícalo cuando:

- Hay imágenes en una carpeta `clase-X/` o `actividad-X/`
- El nombre no describe el contenido (`image.png`, `foto1.png`, `Slide3.png`)
- El documento `.md` no embebe o no describe la imagen
- Se pide enriquecer o completar los apuntes de una clase o actividad

No apliques si:

- La imagen es solo decorativa y no tiene texto relevante
- El nombre ya es semántico y la imagen está embebida y documentada

---

## Paso 1 — Renombrar la Imagen

Antes de cualquier otra acción, verifica que el nombre sea semántico.

### Patrón Obligatorio

**Para clases:**
```
{tema}-{descriptor}-clase-{N}.{ext}
```

**Para actividades:**
```
{tema}-{descriptor}-actividad-{N}.{ext}
```

### Ejemplos de Transformación

| Nombre Original | Nombre Correcto |
|---|---|
| `image.png` | `zachman-matriz-cobertura-6x6-clase-2.png` |
| `Slide3.png` | `togaf-adm-fases-clase-3.png` |
| `foto_diagrama.jpg` | `arquitectura-negocio-capas-clase-1.jpg` |
| `captura.png` | `swe-bench-comparacion-modelos-actividad-1.png` |
| `IMG_0042.png` | `diseno-ia-pipeline-datos-clase-2.png` |

### Reglas de Nombre

- Usa solo minúsculas y guiones (`-`), sin espacios ni guiones bajos
- Concepto principal como prefijo
- Número de clase o actividad debe coincidir con la carpeta
- Mantén la extensión original

### Cómo Renombrar

```bash
mv ruta/original/nombre-viejo.png ruta/original/nombre-nuevo.png
```

**Ejemplo real:**
```bash
mv {year-semestre}/arq-empresarial/clase-2/Slide3.png \
   {year-semestre}/arq-empresarial/clase-2/togaf-adm-fases-clase-2.png
```

Si estaba referenciada en `.md`, actualiza todas las referencias primero.

---

## Paso 2 — Ejecutar OCR

Desde la raíz del repositorio:

```bash
swift scripts/ocr_images.swift ruta/imagen.png
```

**Procesar varias imágenes:**
```bash
swift scripts/ocr_images.swift {year-semestre}/arq-empresarial/clase-2/togaf-adm-fases-clase-2.png \
                               {year-semestre}/arq-empresarial/clase-2/zachman-matriz-clase-2.png
```

El script imprime texto extraído separado con `=== nombre-del-archivo.png ===`.

---

## Paso 3 — Analizar Texto Extraído

Antes de escribir en Markdown, responde:

- ¿Qué concepto principal muestra?
- ¿Hay términos técnicos, pasos, matrices, tablas, listas?
- ¿El texto conecta con alguna sección existente en el `.md`?
- ¿Está en inglés y debe traducirse?

---

## Paso 4 — Enriquecer el Markdown

Integra el contenido extraído según el tipo de imagen:

| Tipo | Integración |
|---|---|
| Diapositiva de concepto | Agrega `###` con el concepto y explícalo en 2-4 líneas |
| Tabla o matriz | Reconstruye tabla en Markdown con datos del OCR |
| Diagrama con etiquetas | Lista elementos como viñetas y describe relación |
| Lista de pasos | Conviértela en lista numerada |
| Gráfico comparativo | Describe valores clave e interpreta tendencia |

### Reglas de Escritura

- **No pegues crudo:** Reescribe siempre
- **Condensa:** Si OCR captura 50 líneas, extrae 3-5 puntos clave
- **Español claro:** Sigue skill de documentación humana
- **Marca errores:** Si OCR falla parcialmente, escribe `[verificar]`

---

## Paso 5 — Embeber Imagen en Markdown

Después del texto enriquecido, agrega referencia visual en la sección correcta:

```md
### Imagen: {descripción del contenido}

![{texto alternativo descriptivo}](./{nombre-semantico-clase-N}.png)
```

**Ejemplo:**
```md
### Imagen: TOGAF ADM — Fases del Ciclo

![Diagrama de las fases del ciclo ADM de TOGAF](./togaf-adm-fases-clase-2.png)
```

### Reglas de Embedding

- Usa ruta relativa con `./`
- Alt text describe qué muestra, no el nombre del archivo
- Embebe en la sección temática correcta, no al final
- Si hay sección de "Gráficos", agrégala ahí con texto descriptivo antes

---

## Paso 6 — Verificar Consistencia

Antes de terminar:

- [ ] Nombre es semántico y sigue patrón de la carpeta
- [ ] No hay referencias rotas al nombre anterior en `.md`
- [ ] Imagen embebida con `![]()` en sección correcta
- [ ] Texto enriquecido fluye naturalmente
- [ ] Encabezado `.md` cumple skill de header-clases o actividades

---

## Manejo de Errores OCR

| Error | Solución |
|---|---|
| `No se pudo abrir imagen` | Verifica ruta correcta y que archivo exista |
| `No se pudo convertir a CGImage` | Archivo puede estar corrupto; revisa con otro visualizador |
| `OCR error: ...` | Error de Vision API; verifica que sea imagen válida |
| Texto vacío o sin sentido | Imagen no tiene texto legible; documenta visualmente con párrafo descriptivo |

---

## Checklist Final

- [ ] Nombre es semántico y sigue patrón `{tema}-{descriptor}-clase-N.ext`
- [ ] No hay referencias rotas en `.md` por renombrado
- [ ] Imagen embebida con `![]()` en sección temática correcta
- [ ] Hay texto descriptivo antes de la imagen
- [ ] Texto extraído fue reescrito y condensado
- [ ] Documento sigue skill de documentación humana
- [ ] Encabezado `.md` cumple skill de header-clases o actividades
