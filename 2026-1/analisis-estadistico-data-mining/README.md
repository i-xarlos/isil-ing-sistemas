# Análisis Estadístico y Data Mining (ISIL 2026-1)

**Curso:** Análisis Estadístico y Data Mining  
**Programa:** Ingeniería de Sistemas  
**Período:** 2026-1

---

## Propósito del Curso

Aplicar técnicas estadísticas y data mining para extraer insights de datos. Estadística descriptiva, análisis exploratorio, patrones.

---

## Contenido por Clase

| # | Tema | Descripción | Recurso |
|---|------|-------------|----------|
| 1 | **Presentación y Cronograma** | Objetivos del curso, agenda, expectativas | [📄](./clase-1/analisis-estadistico-data-mining-presentacion-y-cronograma-clase-1.md) |
| 2 | **Estadística Descriptiva: Medidas de Resumen** | Media, mediana, desviación estándar, distribuciones | [📄](./clase-2/estadistica-descriptiva-medidas-resumen-clase-2.md) |
| 3 | **Estadística Inferencial** | Probabilidad, pruebas de hipótesis, p-valores, intervalos de confianza | 📄 [analisis-estadistico-data-mining-estadistica-inferencial-clase-3.md](./clase-3/analisis-estadistico-data-mining-estadistica-inferencial-clase-3.md) |
| 4 | **Análisis Exploratorio de Datos (EDA)** | Tendencias, estacionalidad, detección de anomalías, correlaciones, visualización | [📄](./clase-4/analisis-exploratorio-datos-eda-clase-4.md) |
| 5 | **Minería de Datos** | Definición, aplicaciones (comercio, medicina, redes sociales), tipos (clasificación, clustering, asociación, predicción), ética, desafíos, herramientas | [📄](./clase-5/analisis-estadistico-data-mining-mineria-datos-clase-5.md) |
| 6 | **Preparación de Datos** | Limpieza, transformación, manejo de faltantes, normalización (z-score, min-max), estandarización, casos prácticos en R y Python | [📄](./clase-6/analisis-estadistico-data-mining-preparacion-datos-clase-6.md) |

---

## Índice Completo de Recursos

### Clase 1: Presentación y Cronograma
- 📄 [analisis-estadistico-data-mining-presentacion-y-cronograma-clase-1.md](./clase-1/analisis-estadistico-data-mining-presentacion-y-cronograma-clase-1.md)

### Clase 2: Estadística Descriptiva — Medidas de Resumen
- 📄 [estadistica-descriptiva-medidas-resumen-clase-2.md](./clase-2/estadistica-descriptiva-medidas-resumen-clase-2.md)

### Clase 3: Estadística Inferencial
- 📄 [analisis-estadistico-data-mining-estadistica-inferencial-clase-3.md](./clase-3/analisis-estadistico-data-mining-estadistica-inferencial-clase-3.md)
- 🖼️ Gráfico: `estadistica-inferencial-conceptos-probabilidad-hipotesis-clase-3.png`

### Clase 4: Análisis Exploratorio de Datos (EDA)
- 📄 [analisis-exploratorio-datos-eda-clase-4.md](./clase-4/analisis-exploratorio-datos-eda-clase-4.md)
- 📊 **Temas:** Tendencias vs. estacionalidad, regresión lineal, promedio móvil, detección de outliers (IQR, Z-score), correlación (Pearson, Spearman), visualización
- 🖼️ Gráfico: `analisis-exploratorio-datos-eda-clase-4.png`
- 📑 Recursos: [40097-S04-PRESENTACION.pdf](./clase-4/40097-S04-PRESENTACION.pdf)

### Clase 5: Minería de Datos
- 📄 [analisis-estadistico-data-mining-mineria-datos-clase-5.md](./clase-5/analisis-estadistico-data-mining-mineria-datos-clase-5.md)
- 📊 **Temas principales:**
  - **Definición y objetivos:** Qué es data mining, rol estratégico, fases del proceso
  - **Aplicaciones por sector:** Comercio (market basket, predicción de demanda), Medicina (predicción, anomalías), Redes Sociales (sentimientos, tendencias)
  - **Tipos de minería:** Clasificación, Clustering, Asociación, Predicción
  - **Ética en data mining:** Privacidad, uso responsable, caso Cambridge Analytica
  - **Desafíos:** Escalabilidad, calidad de datos
  - **Herramientas:** R, Python, Hadoop, Spark, RapidMiner, KNIME, Tableau, Power BI
- 📑 PDF: [40097-S05-PRESENTACION.pdf](./clase-5/40097-S05-PRESENTACION.pdf)
- 🔧 **Herramientas asociadas:** Python (pandas, scikit-learn), R, Apache Spark

### Clase 6: Preparación de Datos
- 📄 [analisis-estadistico-data-mining-preparacion-datos-clase-6.md](./clase-6/analisis-estadistico-data-mining-preparacion-datos-clase-6.md)
- 📊 **Temas principales:**
  - **Limpieza de datos:** Eliminación de ruido, detección y corrección de errores, identificación de outliers con IQR, boxplots
  - **Transformación:** Codificación y escalado de variables
  - **Manejo de datos faltantes:** Imputación (media, moda, KNN), eliminación selectiva
  - **Normalización:** Z-score (estandarización estadística), Min-Max scaling, casos de uso
  - **Estandarización:** Formatos consistentes, unidades, nomenclaturas, integración de datos
- 📑 PDF: [40097-S06-PRESENTACION.pdf](./clase-6/40097-S06-PRESENTACION.pdf)
- 🔧 **Implementación:** Ejemplos completos en R y Python para cada técnica

### Actividades

#### Actividad 1: Proceso de Aprendizaje 01
- 📄 [analisis-estadistico-data-mining-pa01-respuestas.md](./actividad-1/analisis-estadistico-data-mining-pa01-respuestas.md)
- **Contenido:** Estadística Descriptiva y Pruebas de Hipótesis aplicadas a casos reales
- **Temas:** Medidas de resumen, mediana vs media, valores atípicos, hipótesis nula, nivel de confianza, p-valores

---

## Estructura de la Carpeta

```
analisis-estadistico-data-mining/
├── clase-1/
│   ├── README.md
│   └── analisis-estadistico-data-mining-presentacion-y-cronograma-clase-1.md
├── clase-2/
│   ├── README.md
│   └── estadistica-descriptiva-medidas-resumen-clase-2.md
├── clase-3/
│   ├── README.md
│   └── analisis-estadistico-data-mining-estadistica-inferencial-clase-3.md
├── clase-4/
│   ├── analisis-exploratorio-datos-eda-clase-4.md
│   ├── analisis-exploratorio-datos-eda-clase-4.png
│   ├── 40097-S04-PRESENTACION.pdf
│   └── 40097-S04-PRESENTACION.pptx
├── clase-5/
│   ├── analisis-estadistico-data-mining-mineria-datos-clase-5.md
│   ├── 40097-S05-PRESENTACION.pdf
│   └── [PPTX eliminado tras conversión]
├── clase-6/
│   ├── analisis-estadistico-data-mining-preparacion-datos-clase-6.md
│   ├── 40097-S06-PRESENTACION.pdf
│   └── [PPTX convertido a PDF]
├── actividad-1/
│   └── analisis-estadistico-data-mining-pa01-respuestas.md
└── README.md (este archivo)
```

---

## Recursos Transversales

Consulta también:
- [INDICE-CONCEPTOS](../../_meta/INDICE-CONCEPTOS.md) — Términos clave de la cohorte
- [README Principal](../../README.md) — Índice general del repositorio
