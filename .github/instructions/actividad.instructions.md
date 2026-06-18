---
name: actividad-documentation
description: Document academic activities with structured templates, metadata, and source tracking. Use when creating assignment solutions or activity deliverables.
applyTo: "**/actividad-*/**/*.md"
---

# Actividad — Documentación Académica

Cuando crees o edites un archivo Markdown dentro de una carpeta `actividad-X/`, aplica estas reglas para garantizar claridad, trazabilidad y utilidad académica.

---

## 1. Encabezado Obligatorio

Todo documento de actividad debe comenzar así:

```md
# {Título de la actividad} (Actividad N)

**Curso:** {Nombre del curso} (ISIL, {year-semestre})  
**Docente:** {Nombre del docente}  
**Fecha:** DD/MM/AAAA
```

### Reglas
- El número de actividad en el título debe coincidir con la carpeta `actividad-N/`
- Usa fechas en formato `DD/MM/AAAA`
- Si falta la fecha, escribe `**Fecha:** [pendiente]`

---

## 2. Estructura del Documento

Adapta las secciones al tipo de actividad. Las secciones marcadas con `*` son **obligatorias**.

### Para Actividades de Análisis o Investigación

```
## 1. Contexto o Problema
## 2. Desarrollo / Análisis
## 3. Resultados o Hallazgos
## 4. Conclusiones *
## 5. Fuentes *
```

### Para Actividades de Diseño o Propuesta

```
## 1. Descripción del Problema
## 2. Solución Propuesta
## 3. Diagrama o Esquema  ← si aplica
## 4. Justificación
## 5. Conclusiones *
## 6. Fuentes *
```

### Para Actividades de Comparación o Benchmark

```
## 1. ¿Qué es {criterio de comparación}?
## 2. Elementos Comparados
## 3. Tabla Comparativa — {nombre del criterio}
## 4. Gráfico Comparativo
## 5. Interpretación Rápida
## 6. Entregable del Estudiante   ← solo si aplica
## 7. Recursos Adicionales
## 8. Fuentes *
```

Puedes ajustar los títulos. **No omitas las secciones marcadas con `*`.**

---

## 3. Reglas de Escritura

- Escribe en español claro y directo
- Una idea principal por sección; si mezcla ideas, divídela
- Usa listas viñetadas para conceptos y numeradas para pasos
- Usa **negrita** solo para términos clave que ayuden a escanear
- Incluye al menos un ejemplo real cuando el concepto sea abstracto

---

## 4. Tablas con Datos

Cuando incluyas tabla con cifras, métricas o comparaciones:

- Agrega siempre una columna `Fuente` con enlaces clickeables `[texto](url)`
- Si la cifra proviene de tercero, márcala con `*(tercero)*`
- Agrega nota al pie explicando `*(tercero)*`
- Separa múltiples fuentes con `·`
- Si no encuentras dato oficial, escribe `[pendiente]` con explicación

**Columnas mínimas para tabla comparativa:**

| Elemento | Métrica | Fuente | Notas |
|---|---|---|---|

---

## 5. Imágenes y Gráficos

Cuando incluyas diagrama, gráfico o captura:

- Guarda archivo en la misma carpeta que el `.md`
- Usa nombres semánticos: `{tema}-{descriptor}-actividad-{N}.{ext}`
  - Ejemplo: `swe-bench-comparacion-modelos-actividad-1.png`
- Embebe imagen en el cuerpo, en la sección que corresponda
- Usa solo `.png`, `.jpg` o `.gif`

### Gráfico Comparativo (matplotlib)

Esquema base para gráficos de comparación:

```python
import matplotlib.pyplot as plt
import matplotlib.patches as mpatches
import numpy as np

# --- Datos ---
labels    = ["Elemento A", "Elemento B", "Elemento C"]
scores    = [49.0, 80.9, 71.7]
groups    = ["GrupoX", "GrupoX", "GrupoY"]
third     = [False, True, False]

# --- Colores ---
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
            label, ha="center", va="bottom", fontsize=12, fontweight="bold")

ax.set_xticks(x)
ax.set_xticklabels(labels, fontsize=11)
ax.set_ylim(0, 100)
ax.set_ylabel("{Métrica} (%)", fontsize=12)
ax.set_title("{Título del gráfico}", fontsize=13, fontweight="bold", pad=14)

patches = [mpatches.Patch(color=v, label=k) for k, v in color_map.items()]
patches.append(mpatches.Patch(color="none", label="* cifra de fuente tercera"))
ax.legend(handles=patches, loc="upper left", fontsize=10, framealpha=0.7)

ax.spines["top"].set_visible(False)
ax.spines["right"].set_visible(False)
plt.tight_layout()
plt.savefig("archivo.png", dpi=150, bbox_inches="tight")
```

---

## 6. Sección de Fuentes (Obligatoria)

Todo documento debe cerrar con sección `## Fuentes`.

### Estructura

```md
## Fuentes

Las afirmaciones y datos provienen de estas fuentes.  
Tipo: **oficial** = autor/creador; **tercero** = prensa o fuente secundaria.

### {Tema o Elemento A}

| # | Fuente | Tipo | URL |
|---|---|---|---|
| 1 | Apellido, N. (año). *Título*. Revista | Académica | https://... |
| 2 | Organización. *Título* (mes año) | Oficial | https://... |

### {Tema o Elemento B} *(tercero)*

| # | Fuente | Tipo | URL |
|---|---|---|---|
| 3 | Organización. *Anuncio* | Oficial | https://... |

> Nota: explica por qué se usa fuente tercera.

---

*Última verificación: DD/MM/AAAA.*
```

### Reglas para Fuentes

1. Agrupa por tema o elemento — una subsección por cada uno
2. Indica siempre el tipo: `Oficial`, `Académica`, `Tercero`, `Tracker`
3. Si cifra exacta no está en fuente oficial, documenta ambas por separado
4. Cita artículos: `Apellido, N. (año). *Título*. Revista`
5. Anuncios: `Organización. *Título* (mes año)`
