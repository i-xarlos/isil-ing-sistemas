---
applyTo: "2026-1/**/actividad-*/**/*.md"
---

# Skill: actividades de benchmark y comparación de modelos / tecnologías

Cuando crees o edites un archivo Markdown dentro de una carpeta `actividad-X/`, y el contenido sea una **comparación o ranking** de modelos, frameworks, herramientas o tecnologías, sigue estas reglas para garantizar trazabilidad, claridad y utilidad académica.

---

## Estructura obligatoria del documento

Usa exactamente este orden de secciones:

```
## 1. ¿Qué es {benchmark o criterio de comparación}?
## 2. Elementos comparados
## 3. Tabla comparativa — {nombre del benchmark}
## 4. Gráfico comparativo
## 5. Interpretación rápida
## 6. Entregable del estudiante   ← solo si aplica
## 7. Recursos adicionales
## 8. Fuentes
```

Puedes ajustar los títulos al tema real, pero **mantén el orden** y no omitas las secciones 3, 4 y 8.

---

## Sección 3 — Tabla comparativa

La tabla **siempre** debe tener una columna `Fuente` por fila, enlazando directamente a la fuente de cada cifra.

Columnas mínimas obligatorias:

| Proveedor / Autor | Elemento comparado | Métrica principal | Fuente | Notas |
|---|---|---|---|---|

Reglas:
- La columna `Fuente` debe tener un enlace clickeable `[texto](url)`.
- Si la cifra proviene de un **medio de prensa o tercero** (no del creador oficial), añade `*(tercero)*` junto al valor.
- Agrega una nota al pie de tabla explicando qué significa `*(tercero)*`.
- Si hay múltiples fuentes para un mismo dato, sepáralas con `·` dentro de la celda.

---

## Sección 4 — Gráfico comparativo

Genera siempre una imagen de comparación y embébela en el documento.

### Nombre del archivo

Sigue el patrón: `{benchmark}-comparacion-{descriptor}-actividad-{N}.png`

Ejemplo: `swe-bench-comparacion-modelos-actividad-1.png`

### Código de referencia (matplotlib / Python)

Usa este esquema como base para generar el gráfico de barras:

```python
import matplotlib.pyplot as plt
import matplotlib.patches as mpatches
import numpy as np

# --- Datos ---
labels  = ["Elemento A", "Elemento B", "Elemento C"]
scores  = [49.0, 80.9, 71.7]
groups  = ["GrupoX", "GrupoX", "GrupoY"]      # para colorear por proveedor/categoría
third   = [False, True, False]                  # True = cifra de fuente tercera

# --- Colores por grupo ---
color_map = {"GrupoX": "#c97d2d", "GrupoY": "#10a37f"}  # ajusta según el contexto
colors = [color_map[g] for g in groups]

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

# Leyenda
patches = [mpatches.Patch(color=v, label=k) for k, v in color_map.items()]
patches.append(mpatches.Patch(color="none", label="* cifra de fuente tercera"))
ax.legend(handles=patches, loc="upper left", fontsize=10, framealpha=0.7)

# Línea de referencia opcional
ax.axhline(50, color="#888888", linewidth=0.8, linestyle="--", zorder=2)

ax.spines["top"].set_visible(False)
ax.spines["right"].set_visible(False)
plt.tight_layout()
plt.savefig("nombre-del-archivo.png", dpi=150, bbox_inches="tight")
```

### Cómo embeber la imagen en el Markdown

```md
## 4. Gráfico comparativo

![{descripción del gráfico}](./{nombre-del-archivo}.png)

> El asterisco (`*`) indica que la cifra proviene de una fuente de terceros (ver sección Fuentes).
```

---

## Sección 8 — Fuentes

Esta sección es **obligatoria** en toda actividad de tipo benchmark o comparación.

### Estructura

```md
## 8. Fuentes

Las cifras y afirmaciones de este documento provienen de las siguientes fuentes.
Se indica el tipo: **oficial** = publicado por el creador del elemento evaluado;
**tercero** = medio de prensa, tracker o fuente secundaria.

### {Benchmark o criterio de comparación}

| # | Fuente | Tipo | URL |
|---|---|---|---|
| 1 | Apellido, N. (año). *Título*. ... | Académica | https://... |
| 2 | Nombre del sitio — sección | Oficial (benchmark) | https://... |

### {Elemento A} — {valor}

| # | Fuente | Tipo | URL |
|---|---|---|---|
| 3 | Organización. *Título del anuncio* (mes año) | Oficial (anuncio) | https://... |

### {Elemento B} — {valor} *(cifra de tercero)*

| # | Fuente | Tipo | URL |
|---|---|---|---|
| 4 | Organización. *Anuncio oficial* | Oficial (anuncio del modelo) | https://... |
| 5 | Autor, N. (año). *Título del artículo*. Medio | Tercero (prensa especializada) | https://... |

> Nota aclaratoria sobre por qué se usa la fuente tercera.

---

*Última verificación de fuentes: DD/MM/AAAA.*
```

### Reglas para las fuentes

1. **Una subsección por elemento comparado**, con el valor anotado en el título.
2. **Siempre indica el tipo**: `Oficial`, `Académica`, `Tercero`, `Tracker`.
3. Si la cifra exacta **no está en el anuncio oficial**, documenta la fuente tercera Y el anuncio oficial por separado.
4. Usa el formato de cita: `Apellido, N. (año). *Título*. Revista/Medio` para artículos; `Organización. *Título del documento* (mes año)` para anuncios corporativos.
5. Añade una nota al final de la subsección cuando uses una fuente tercera explicando por qué.
6. Cierra la sección con `*Última verificación de fuentes: DD/MM/AAAA.*`

---

## Reglas generales para actividades de comparación

- **Nunca presentes una cifra sin su fuente** en la tabla comparativa.
- **Distingue siempre** entre fuente oficial y fuente tercera; no las mezcles sin aviso.
- Si no encuentras la cifra oficial, deja el valor como `[pendiente]` y explica por qué en notas.
- El gráfico debe generarse con Python/matplotlib y guardarse como `.png` en la misma carpeta de la actividad.
- El nombre del archivo `.png` debe ser semántico y seguir el patrón del repositorio.
- La imagen siempre va embebida en la sección 4, no en otra sección.
- Colorea los elementos del gráfico por grupo/proveedor/categoría para facilitar la comparación visual.

---

## Checklist antes de finalizar una actividad de benchmark

- [ ] Tabla comparativa tiene columna `Fuente` con enlaces por fila.
- [ ] Valores de terceros están marcados con `*(tercero)*`.
- [ ] Sección `## 4. Gráfico comparativo` existe con imagen embebida.
- [ ] Archivo `.png` está en la misma carpeta que el `.md`.
- [ ] Nombre del `.png` sigue el patrón `{benchmark}-comparacion-{descriptor}-actividad-{N}.png`.
- [ ] Sección `## 8. Fuentes` existe con subsecciones por cada elemento comparado.
- [ ] Cada fuente tiene columnas `#`, `Fuente`, `Tipo`, `URL`.
- [ ] Hay una nota aclaratoria donde se usa fuente tercera.
- [ ] El documento cierra con `*Última verificación de fuentes: DD/MM/AAAA.*`
