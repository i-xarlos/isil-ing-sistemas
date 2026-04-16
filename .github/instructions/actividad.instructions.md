---
applyTo: "2026-1/**/actividad-*/**/*.md"
---

# Skill: actividades académicas

Cuando crees o edites un archivo Markdown dentro de una carpeta `actividad-X/`, aplica estas reglas para garantizar claridad, trazabilidad y utilidad académica, sin importar el tipo de actividad.

---

## 1. Encabezado obligatorio

Todo documento de actividad debe comenzar así:

```md
# {Título de la actividad} (Actividad N)

**Curso:** {Nombre del curso} (ISIL, 2026-1)  
**Docente:** {Nombre del docente}  
**Fecha:** DD/MM/AAAA
```

Reglas:
- El número de actividad en el título debe coincidir con la carpeta `actividad-N/`.
- Usa fechas en formato `DD/MM/AAAA`.
- Si falta la fecha y no se puede inferir, escribe `**Fecha:** [pendiente]`.

---

## 2. Estructura del documento

Adapta las secciones al tipo de actividad. Las secciones marcadas con `*` son **obligatorias** en todos los casos.

### Para actividades de análisis o investigación

```
## 1. Contexto o problema
## 2. Desarrollo / análisis
## 3. Resultados o hallazgos
## 4. Conclusiones *
## 5. Fuentes *
```

### Para actividades de diseño o propuesta

```
## 1. Descripción del problema
## 2. Solución propuesta
## 3. Diagrama o esquema  ← si aplica
## 4. Justificación
## 5. Conclusiones *
## 6. Fuentes *
```

### Para actividades de comparación o benchmark

```
## 1. ¿Qué es {criterio de comparación}?
## 2. Elementos comparados
## 3. Tabla comparativa — {nombre del criterio}
## 4. Gráfico comparativo
## 5. Interpretación rápida
## 6. Entregable del estudiante   ← solo si aplica
## 7. Recursos adicionales
## 8. Fuentes *
```

Puedes ajustar los títulos al tema real. **No omitas las secciones marcadas con `*`.**

---

## 3. Reglas de escritura

- Escribe en español claro y directo.
- Una idea principal por sección; si una sección mezcla ideas, divídela.
- Usa listas con viñetas para conceptos y listas numeradas para pasos.
- Usa **negrita** solo para términos clave que ayuden a escanear.
- Incluye al menos un ejemplo real cuando el concepto sea abstracto.

---

## 4. Tablas con datos

Cuando la actividad incluya una tabla con cifras, métricas o comparaciones:

- Agrega siempre una columna `Fuente` con un enlace clickeable `[texto](url)`.
- Si la cifra proviene de un tercero (prensa, tracker, fuente secundaria), márcala con `*(tercero)*`.
- Agrega una nota al pie de tabla explicando qué significa `*(tercero)*`.
- Si hay múltiples fuentes para un dato, sepáralas con `·` dentro de la celda.
- Si no encuentras el dato oficial, escribe `[pendiente]` y explica por qué en notas.

Ejemplo de columnas mínimas para tabla comparativa:

| Elemento | Métrica | Fuente | Notas |
|---|---|---|---|

---

## 5. Imágenes y gráficos

Cuando la actividad incluya un diagrama, gráfico o captura:

- Guarda el archivo en la misma carpeta que el `.md`.
- Usa nombres semánticos: `{tema}-{descriptor}-actividad-{N}.{ext}`
  - Ejemplo: `swe-bench-comparacion-modelos-actividad-1.png`
- Embebe la imagen en el cuerpo del documento, en la sección que corresponda.
- Usa solo las extensiones `.png`, `.jpg` o `.gif`.

### Gráfico de barras comparativo (matplotlib)

Cuando la actividad sea de comparación y necesites generar un gráfico, usa este esquema como base:

```python
import matplotlib.pyplot as plt
import matplotlib.patches as mpatches
import numpy as np

# --- Datos ---
labels    = ["Elemento A", "Elemento B", "Elemento C"]
scores    = [49.0, 80.9, 71.7]
groups    = ["GrupoX", "GrupoX", "GrupoY"]   # colorear por categoría/proveedor
third     = [False, True, False]              # True = cifra de fuente tercera

# --- Colores por grupo ---
color_map = {"GrupoX": "#c97d2d", "GrupoY": "#10a37f"}
colors    = [color_map[g] for g in groups]

fig, ax = plt.subplots(figsize=(10, 6))
fig.patch.set_facecolor("#f7f7f7")
ax.set_facecolor("#f7f7f7")

x    = np.arange(len(labels))
bars = ax.bar(x, scores, width=0.55, color=colors, edgecolor="white", linewidth=1.2, zorder=3)

ax.yaxis.grid(True, color="white", linewidth=1.2, zorder=0)

for bar, score, tp in zip(bars, scores, third):
    label = f"{score} %{'  *' if tp else ''}"
    ax.text(bar.get_x() + bar.get_width() / 2, bar.get_height() + 1.5,
            label, ha="center", va="bottom", fontsize=12, fontweight="bold", color="#222222")

ax.set_xticks(x)
ax.set_xticklabels(labels, fontsize=11)
ax.set_ylim(0, 100)
ax.set_ylabel("{Métrica} (%)", fontsize=12)
ax.set_title("{Título del gráfico}", fontsize=13, fontweight="bold", pad=14)

patches = [mpatches.Patch(color=v, label=k) for k, v in color_map.items()]
patches.append(mpatches.Patch(color="none", label="* cifra de fuente tercera"))
ax.legend(handles=patches, loc="upper left", fontsize=10, framealpha=0.7)

ax.axhline(50, color="#888888", linewidth=0.8, linestyle="--", zorder=2)
ax.spines["top"].set_visible(False)
ax.spines["right"].set_visible(False)
plt.tight_layout()
plt.savefig("nombre-del-archivo.png", dpi=150, bbox_inches="tight")
```

---

## 6. Sección de fuentes (obligatoria)

Todo documento de actividad debe cerrar con una sección `## Fuentes` (o `## N. Fuentes`).

### Estructura

```md
## Fuentes

Las afirmaciones y datos de este documento provienen de las siguientes fuentes.
Tipo: **oficial** = publicado por el autor/creador del elemento; **tercero** = medio de prensa o fuente secundaria.

### {Tema o elemento A}

| # | Fuente | Tipo | URL |
|---|---|---|---|
| 1 | Apellido, N. (año). *Título*. Revista/Medio | Académica | https://... |
| 2 | Organización. *Título del documento* (mes año) | Oficial | https://... |

### {Tema o elemento B} *(cifra de tercero)*

| # | Fuente | Tipo | URL |
|---|---|---|---|
| 3 | Organización. *Anuncio oficial* | Oficial | https://... |
| 4 | Autor, N. (año). *Título*. Medio | Tercero (prensa) | https://... |

> Nota: explica por qué se usa la fuente tercera para este elemento.

---

*Última verificación de fuentes: DD/MM/AAAA.*
```

### Reglas para las fuentes

1. Agrupa las fuentes por tema o elemento analizado — una subsección por cada uno.
2. Indica siempre el tipo: `Oficial`, `Académica`, `Tercero`, `Tracker`.
3. Si la cifra exacta no aparece en la fuente oficial, documenta ambas (oficial y tercero) por separado.
4. Formato de cita para artículos: `Apellido, N. (año). *Título*. Revista/Medio`.
5. Formato para anuncios: `Organización. *Título del documento* (mes año)`.
6. Añade una nota aclaratoria cuando uses una fuente tercera.
7. Cierra siempre con `*Última verificación de fuentes: DD/MM/AAAA.*`

---

## 7. Checklist antes de finalizar cualquier actividad

- [ ] El documento tiene encabezado con título, curso, docente y fecha.
- [ ] Las secciones siguen un orden lógico para el tipo de actividad.
- [ ] Cada afirmación importante tiene una fuente o referencia.
- [ ] Las tablas con datos tienen columna `Fuente` con enlaces.
- [ ] Los valores de terceros están marcados con `*(tercero)*`.
- [ ] Los archivos `.png` o imágenes están en la misma carpeta que el `.md`.
- [ ] Los nombres de archivo son semánticos y siguen el patrón del repositorio.
- [ ] Existe una sección `## Fuentes` con entradas agrupadas por tema.
- [ ] Cada fuente tiene `#`, `Fuente`, `Tipo` y `URL`.
- [ ] El documento cierra con `*Última verificación de fuentes: DD/MM/AAAA.*`
