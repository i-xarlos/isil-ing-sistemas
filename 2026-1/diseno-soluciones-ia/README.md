# Diseño de Soluciones con IA (ISIL 2026-1)

**Curso:** Diseño de Soluciones con IA  
**Programa:** Ingeniería de Sistemas  
**Período:** 2026-1

---

## Propósito del Curso

Diseñar soluciones empresariales usando IA (Narrow, Generativa, ML, Deep Learning). Cobertura: tipología, riesgos éticos, priorizacion, 8 fases de desarrollo, casos reales.

---

## Contenido por Clase/Actividad

| # | Tipo | Tema | Descripción | Recurso |
|---|------|------|-------------|----------|
| 1 | Clase | **Introducción a IA** | Definición, contexto empresarial, tendencias 2026 | [📄](./clase-1/diseno-soluciones-ia-introduccion-clase-1.md) |
| 2 | Clase | **Tipos de IA y Ramas** | Narrow, Generativa, ML, Deep Learning | [📄](./clase-2/diseno-soluciones-ia-inteligencia-artificial-y-ramas-clase-2.md) |
| 3 | Clase | **IA: Tipos, Riesgos y Desarrollo** | 4 tipos IA, 5 riesgos éticos, 8 fases, valor estratégico | [📄](./clase-3/diseno-soluciones-ia-inteligencia-artificial-tema-02-clase-3.md) |
| 4 | Clase | **Integración Estratégica y Ética de IA** | EDA, estadística descriptiva, correlaciones, visualización, Design Thinking, ética y sesgos | [📄](./clase-4/diseno-soluciones-ia-integracion-etica-clase-4.md) |
| 5 | Clase | **Calidad de Datos** | Datos nulos, outliers, formatos incorrectos, normalización | [📄](./clase-5/diseno-soluciones-ia-calidad-datos-clase-5.md) |
| 6 | Clase | **Insights: Análisis Univariado, Bivariado y Multivariado** | Correlaciones, técnicas de dimensionalidad (PCA, LDA), generación de insights | [📄](./clase-6/diseno-soluciones-ia-insights-analisis-datos-clase-6.md) |
| 1 | Actividad | **SWE-Bench: Comparación de Modelos** | Análisis de frontier models en benchmark | [📄](./actividad-1/swe-bench-comparacion-modelos-actividad-1.md) |
| PA01 | Evaluación | **Formulación de Problemas y Viabilidad IA** | 2 casos: clasificación incidencias + diagnóstico médico sesgado | [📄](./actividad-1-eval/diseno-soluciones-ia-pa01-solucion.md) |

---

## Índice Completo de Recursos

### Clase 1: Introducción a IA
- 📄 [diseno-soluciones-ia-introduccion-clase-1.md](./clase-1/diseno-soluciones-ia-introduccion-clase-1.md)

### Clase 2: Tipos de IA y Ramas
- 📄 [diseno-soluciones-ia-inteligencia-artificial-y-ramas-clase-2.md](./clase-2/diseno-soluciones-ia-inteligencia-artificial-y-ramas-clase-2.md)
- 🖼️ Gráficos: `inteligencia-artificial-capacidades-clave-clase-2.png`, `inteligencia-artificial-datos-y-valor-clase-2.png`

### Clase 3: IA — Tipos, Riesgos y Desarrollo
- 📄 [diseno-soluciones-ia-inteligencia-artificial-tema-02-clase-3.md](./clase-3/diseno-soluciones-ia-inteligencia-artificial-tema-02-clase-3.md)
- 🖼️ 8 Gráficos integrados: tipos IA, priorizacion, riesgos éticos, valor estratégico, fases 1-4, fases 5-8, preparación datos, recolección etiquetado

### Clase 4: Integración Estratégica y Ética de IA
- 📄 [diseno-soluciones-ia-integracion-etica-clase-4.md](./clase-4/diseno-soluciones-ia-integracion-etica-clase-4.md)
- 📋 Temas:
  - **Análisis de contexto:** Cadena de valor, gestión de datos, soluciones operacionales
  - **Análisis Exploratorio de Datos (EDA):** Herramientas Python (Pandas, NumPy, Matplotlib, Seaborn) vs. Excel
  - **Estadística Descriptiva:** Media, mediana, desviación estándar, cuartiles, IQR, detección de outliers
  - **Distribuciones:** Gaussiana, sesgada, uniforme, exponencial con ejemplos visuales
  - **Correlaciones:** Pearson r, interpretación de correlaciones lineales, casos prácticos
  - **Visualización:** Histogramas, densidad, box plots, scatter plots, matrices de correlación (heatmaps), pairplots
  - **Modelos propios vs. de mercado:** Criterios de selección, análisis de viabilidad
  - **Fases de desarrollo:** Selección, entrenamiento, tuning, ajuste fino
  - **Técnicas:** Regresión, clasificación, vectorización
  - **Design Thinking:** Empatía, definición, ideación, prototipado, testing con MVP
  - **Ética:** Transparencia, sesgos (bias), supervisión humana, regulación
  - **Checklist:** Implementación responsable de IA
- 🖼️ Imagen: `image-1.png`
- 📊 Contenido: 17 secciones con ejemplos prácticos, código Python, casos reales

### Clase 5: Calidad de Datos
- 📄 [diseno-soluciones-ia-calidad-datos-clase-5.md](./clase-5/diseno-soluciones-ia-calidad-datos-clase-5.md)
- 📋 Temas: 
  - **Datos nulos:** Definición, causas, estrategias (eliminación vs. imputación), patrones (MCAR, MAR, MNAR), código con Pandas y KNN
  - **Outliers:** Detección (3-sigma, IQR, Z-score, Isolation Forest), tipos (global, local, collective), decisiones (eliminar, transformar, investigar)
  - **Formatos incorrectos:** Type casting, limpieza de texto, validación de rangos, estandarización
  - **Normalización:** Min-Max scaling, Z-score standardization, ejemplos con Sklearn
- 📊 Contenido: 4 secciones principales + código práctico en Python para cada técnica

### Clase 6: Insights — Análisis Univariado, Bivariado y Multivariado
- 📄 [diseno-soluciones-ia-insights-analisis-datos-clase-6.md](./clase-6/diseno-soluciones-ia-insights-analisis-datos-clase-6.md)
- 📊 PDF: `40098-S06-PRESENTACION.pdf`
- 📋 Temas:
  - **Análisis Univariado:** Distribuciones, medidas de tendencia central, outliers, histogramas y boxplots
  - **Análisis Bivariado:** Scatter plots, tablas cruzadas, correlación (Pearson, Spearman)
  - **Análisis Multivariado:** Patrones complejos, reducción de dimensionalidad
  - **Relación vs. Causalidad:** Errores comunes, variables ocultas
  - **Reducción de Dimensionalidad:** PCA vs. LDA, casos prácticos, cuándo usar cada técnica
  - **Matriz de Correlación:** Multicolinealidad, redundancia, selección de variables
  - **Generación de Insights:** De análisis a conclusiones accionables, storytelling con datos
  - **Errores Comunes:** Falacia de causalidad, ceguera del entorno, sobreingeniería
  - **Principios de Calidad:** Análisis integral, síntesis eficiente, accionabilidad
- 📊 Contenido: 10 secciones con ejemplos reales, diagramas ASCII, tablas comparativas, casos de negocio

### Actividad 1: SWE-Bench Verified
- 📄 [swe-bench-comparacion-modelos-actividad-1.md](./actividad-1/swe-bench-comparacion-modelos-actividad-1.md)
- 🖼️ Gráficos: `mrcrv2-benchmark-actividad-1.png`, `modelos-claude-3-5-comparativa-actividad-1.png`

### Evaluación PA01: Formación de Problemas y Viabilidad de IA
- 📋 [diseno-soluciones-ia-pa01-solucion.md](./actividad-1-eval/diseno-soluciones-ia-pa01-solucion.md) — Solución completa:
  - **P1 (8pts):** Formulación SMART de problema + Evaluación de viabilidad para IA
  - **P2 (12pts):** Riesgos en datos deficientes + Expectativas irreales + Plan de acción pre-implementación

---

## Estructura de la Carpeta

```
diseno-soluciones-ia/
├── clase-1/
│   ├── README.md
│   └── diseno-soluciones-ia-introduccion-clase-1.md
├── clase-2/
│   ├── README.md
│   ├── diseno-soluciones-ia-inteligencia-artificial-y-ramas-clase-2.md
│   └── [gráficos]
├── clase-3/
│   ├── README.md
│   ├── diseno-soluciones-ia-inteligencia-artificial-tema-02-clase-3.md
│   └── [8 gráficos integrados]
├── clase-4/
│   ├── diseno-soluciones-ia-integracion-etica-clase-4.md
│   ├── image-1.png
│   └── 40098-S04-PRESENTACION.pdf
├── clase-5/
│   ├── diseno-soluciones-ia-calidad-datos-clase-5.md
│   ├── 40098-S05-PRESENTACION.pptx
│   └── 40098-S05-PRESENTACION.pdf
├── clase-6/
│   ├── diseno-soluciones-ia-insights-analisis-datos-clase-6.md
│   ├── 40098-S06-PRESENTACION.pptx
│   └── 40098-S06-PRESENTACION.pdf
├── actividad-1/
│   ├── README.md
│   ├── swe-bench-comparacion-modelos-actividad-1.md
│   └── [gráficos]
└── README.md (este archivo)
```

---

## Últimas Actualizaciones

- **13/05/2026:** Clase 6 documentada: Insights, análisis univariado, bivariado y multivariado, reducción de dimensionalidad (PCA/LDA), storytelling con datos
- **06/05/2026:** Clase 4 enriquecida: Análisis Exploratorio de Datos (EDA), estadística descriptiva, correlaciones, visualización con Python y Excel
- **06/05/2026:** Clase 5 documentada: Calidad de Datos (nulos, outliers, formatos, normalización) con código Python completo
- **30/04/2026:** Clase 4 documentada: Integración estratégica y ética de IA, Design Thinking, sesgos
- **22/04/2026:** Clase 3 enriquecida con 8 gráficos, tablas, checklist y glosario
- **22/04/2026:** Preparacion-datos gráfico integrado en Fase 3
- **22/04/2026:** Actividad 1 completada con análisis SWE-Bench Verified

---

## Recursos Transversales

Consulta también:
- [INDICE-CONCEPTOS](../../_meta/INDICE-CONCEPTOS.md) — Términos clave de la cohorte
- [README Principal](../../README.md) — Índice general del repositorio
