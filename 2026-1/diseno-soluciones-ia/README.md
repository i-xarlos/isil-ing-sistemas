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
| --- | ------ | ------ | ------------- | ---------- |
| 1 | Clase | **Introducción a IA** | Definición, contexto empresarial, tendencias 2026 | [📄](./clase-1/diseno-soluciones-ia-introduccion-clase-1.md) |
| 2 | Clase | **Tipos de IA y Ramas** | Narrow, Generativa, ML, Deep Learning | [📄](./clase-2/diseno-soluciones-ia-inteligencia-artificial-y-ramas-clase-2.md) |
| 3 | Clase | **IA: Tipos, Riesgos y Desarrollo** | 4 tipos IA, 5 riesgos éticos, 8 fases, valor estratégico | [📄](./clase-3/diseno-soluciones-ia-inteligencia-artificial-tema-02-clase-3.md) |
| 4 | Clase | **Integración Estratégica y Ética de IA** | EDA, estadística descriptiva, correlaciones, visualización, Design Thinking, ética y sesgos | [📄](./clase-4/diseno-soluciones-ia-integracion-etica-clase-4.md) |
| 5 | Clase | **Calidad de Datos** | Datos nulos, outliers, formatos incorrectos, normalización | [📄](./clase-5/diseno-soluciones-ia-calidad-datos-clase-5.md) |
| 6 | Clase | **Insights: Análisis Univariado, Bivariado y Multivariado** | Correlaciones, técnicas de dimensionalidad (PCA, LDA), generación de insights | [📄](./clase-6/diseno-soluciones-ia-insights-analisis-datos-clase-6.md) |
| 8 | Clase | **Análisis y calidad de datos** | Limpieza, normalización, outliers, insights, KPIs y storytelling | [📄](./clase-8/diseno-soluciones-ia-analisis-calidad-datos-clase-8.md) |
| 10 | Clase | **Elección del Modelo Correcto** | Clasificación de modelos, regresión, árboles, redes neuronales, criterios de selección, evaluación | [📄](./clase-10/eleccion-modelo-correcto-clase-10.md) |
| 11 | Clase | **Métricas de Evaluación de Modelos** | Precisión, exactitud, error promedio e interpretación práctica para validar desempeño | [📄](./clase-11/diseno-soluciones-ia-metricas-evaluacion-modelos-clase-11.md) · [📊](./clase-11/diseno-soluciones-ia-metricas-evaluacion-modelos-clase-11.pdf) |
| 12 | Clase | **Modelo IA: Integración, Interfaces y Técnicas ML** | Integración en apps, diseño UI, técnicas de ML (supervisado, no supervisado, refuerzo, deep learning) | [📄](./clase-12/diseno-soluciones-ia-tecnicas-machine-learning-clase-12.md) · [📊](./clase-12/40098-S12-PRESENTACION.pdf) |
| 1 | Actividad | **SWE-Bench: Comparación de Modelos** | Análisis de frontier models en benchmark | [📄](./actividad-1/swe-bench-comparacion-modelos-actividad-1.md) |
| 2 | Actividad | **Calidad de Datos y Reducción de Dimensionalidad** | Evaluación de problemas de calidad, PCA y relación vs causalidad | [📄](./actividad-2/diseno-soluciones-ia-actividad-2-solucion.md) |
| 8 | Actividad | **EDA, limpieza e insights con Python** | Dataset sintético, imputación, outliers, correlaciones y storytelling de negocio | [📄](./actividad-8/diseno-soluciones-ia-eda-marketing-solucion-actividad-sesion-8.md) |
| 12 | Actividad | **Alerta Académica ML** | Prototipo app web con ML para clasificar nivel de riesgo académico de estudiantes | [📄](./actividad-12/solucion-actividad-12-alerta-academica-ml.md) |
| PA01 | Evaluación | **Formulación de Problemas y Viabilidad IA** | 2 casos: clasificación incidencias + diagnóstico médico sesgado | [pendiente] |

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

### Clase 8: Análisis y calidad de datos

- 📄 [diseno-soluciones-ia-analisis-calidad-datos-clase-8.md](./clase-8/diseno-soluciones-ia-analisis-calidad-datos-clase-8.md)
- 📋 Temas:
  - **Importancia del análisis y la calidad de los datos** como fase previa a la IA
  - **Limpieza y transformación:** nulos, outliers, normalización, librerías Python
  - **Generación de insights:** análisis univariado, bivariado y multivariado
  - **Diseño de datasets y KPIs:** medición de objetivos y storytelling
  - **Laboratorio:** actividad sesión 8 en Google Colab

### Clase 10: Elección del Modelo Correcto

- 📄 [eleccion-modelo-correcto-clase-10.md](./clase-10/eleccion-modelo-correcto-clase-10.md)
- 📊 PDF: `40098-S10-PRESENTACION.pdf`
- 📋 Temas:
  - **Clasificación de Modelos:** Supervisado, no supervisado, por refuerzo
  - **Tipos de Tareas:** Clasificación, regresión, clustering
  - **Modelos Caja Blanca vs. Caja Negra:** Interpretabilidad vs. Precisión
  - **Modelos Básicos:** Regresión lineal, regresión logística, árboles de decisión, redes neuronales
  - **Otros Modelos:** K-NN, Naive Bayes, SVM, ensambles
  - **Criterios de Selección:** Volumen de datos, tipo de variable, linealidad, sobreajuste, interpretabilidad, recursos computacionales
  - **Sobreajuste y Regularización:** Detección, técnicas de corrección, validación cruzada
  - **Compensación Sesgo-Varianza:** Equilibrio entre rigidez y adaptación
  - **Datos Desbalanceados:** Técnicas de corrección, métricas apropiadas
  - **Evaluación y Métricas:** MSE, Precisión, Recall, F1-Score, AUC, Silhouette
  - **Caso Práctico:** Detección de fraude en transacciones
  - **Diagrama de Decisión:** Árbol de decisión para seleccionar modelo
- 📊 Contenido: 6 secciones con 9 diagramas Mermaid, tablas comparativas, ejemplos reales, checklist de decisión

### Clase 11: Métricas de Evaluación de Modelos

- 📄 [diseno-soluciones-ia-metricas-evaluacion-modelos-clase-11.md](./clase-11/diseno-soluciones-ia-metricas-evaluacion-modelos-clase-11.md)
- 📊 PDF: `diseno-soluciones-ia-metricas-evaluacion-modelos-clase-11.pdf`
- 📋 Temas:
  - **Precisión:** definición formal, cálculo e interpretación
  - **Exactitud:** concepto global de aciertos del modelo
  - **Error promedio:** evaluación cuantitativa del desvío
  - **Discusión práctica:** elección de métricas según contexto
  - **Casos aplicados:** spam, marketing y validación de generalización

### Clase 12: Modelo IA — Integración, Diseño de Interfaces y Técnicas de ML

- 📄 [diseno-soluciones-ia-tecnicas-machine-learning-clase-12.md](./clase-12/diseno-soluciones-ia-tecnicas-machine-learning-clase-12.md)
- 📊 PDF: `40098-S12-PRESENTACION.pdf`
- 📋 Temas:
  - **Integración de modelos IA:** Backend vs Frontend, estrategias de despliegue, TensorFlow.js
  - **Integración vía API:** Patrón estándar, stack tecnológico, caso iADAN
  - **Seguridad y privacidad:** Políticas de gobernanza, control de accesos, auditoría
  - **Diseño de interfaces con IA:** Generar vs evaluar UI, atributos de usabilidad (LUIM)
  - **Evaluación asistida:** Score de calidad y nivel de confianza para prototipos
  - **Ejemplos reales:** iADAN, Polidata, Front-end DL, TripSense
  - **Prototipo:** MVP funcional, flujos, arquitectura, plantilla de prompts
  - **Técnicas de ML supervisado:** Regresión lineal, logística, árboles, random forest, SVM, KNN, Naive Bayes, redes neuronales
  - **Técnicas de ML no supervisado:** K-Means, DBSCAN, PCA
  - **Aprendizaje por refuerzo:** Q-Learning
  - **Deep Learning:** CNN, RNN/LSTM, Transformers
  - **Cómo elegir técnica:** Árbol de decisión, comparativas, ejemplos por industria
  - **Pruebas y métricas:** UX/UI, técnicas, seguridad
- 📊 Contenido: 12 secciones con diagramas ASCII, tablas comparativas, casos reales, fórmulas explicadas, glosario y preguntas de reflexión

### Actividad 1: SWE-Bench Verified

- 📄 [swe-bench-comparacion-modelos-actividad-1.md](./actividad-1/swe-bench-comparacion-modelos-actividad-1.md)
- 🖼️ Gráficos: `mrcrv2-benchmark-actividad-1.png`, `modelos-claude-3-5-comparativa-actividad-1.png`

### Actividad 8: EDA, limpieza e insights con Python

- 📄 [diseno-soluciones-ia-eda-marketing-solucion-actividad-sesion-8.md](./actividad-8/diseno-soluciones-ia-eda-marketing-solucion-actividad-sesion-8.md)
- 📝 Material base: `ACTIVIDAD SESIÓN 8.docx`
- 📋 Temas: dataset sintético, valores faltantes, imputación, IQR, correlación de Pearson, normalización Min-Max, insights y storytelling

### Actividad 12: Alerta Académica ML

- 📄 [solucion-actividad-12-alerta-academica-ml.md](./actividad-12/solucion-actividad-12-alerta-academica-ml.md)
- 📝 Material base: `ACTIVIDAD SESIÓN 12.docx`
- 📋 Temas: comprensión del problema, variables de entrada, clasificación supervisada, técnica ML, arquitectura frontend-backend, flujo de datos, pantallas, seguridad, métricas de validación

### Evaluación PA01: Formación de Problemas y Viabilidad de IA

- 📋 diseno-soluciones-ia-pa01-solucion.md — [pendiente] (archivo no incluido en el repositorio) — Solución completa:
  - **P1 (8pts):** Formulación SMART de problema + Evaluación de viabilidad para IA
  - **P2 (12pts):** Riesgos en datos deficientes + Expectativas irreales + Plan de acción pre-implementación

---

## Estructura de la Carpeta

```txt
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
├── clase-8/
│   ├── diseno-soluciones-ia-analisis-calidad-datos-clase-8.md
│   ├── 40098-S08-PRESENTACION.pptx
│   └── 40098-S08-PRESENTACION.pdf
├── clase-10/
│   ├── eleccion-modelo-correcto-clase-10.md
│   ├── 40098-S10-PRESENTACION.pptx
│   └── 40098-S10-PRESENTACION.pdf
├── clase-11/
│   ├── diseno-soluciones-ia-metricas-evaluacion-modelos-clase-11.md
│   └── diseno-soluciones-ia-metricas-evaluacion-modelos-clase-11.pdf
├── clase-12/
│   ├── diseno-soluciones-ia-tecnicas-machine-learning-clase-12.md
│   └── 40098-S12-PRESENTACION.pdf
├── actividad-1/
│   ├── README.md
│   ├── swe-bench-comparacion-modelos-actividad-1.md
│   └── [gráficos]
├── actividad-8/
│   ├── ACTIVIDAD SESIÓN 8.docx
│   └── diseno-soluciones-ia-eda-marketing-solucion-actividad-sesion-8.md
├── actividad-12/
│   ├── ACTIVIDAD SESIÓN 12.docx
│   └── solucion-actividad-12-alerta-academica-ml.md
└── README.md (este archivo)
```

---

## Últimas Actualizaciones

- **24/06/2026:** Actividad 12 documentada: Alerta Académica ML — prototipo app web con clasificación supervisada para detectar riesgo académico de estudiantes
- **24/06/2026:** Clase 12 documentada: Integración de modelos IA, diseño de interfaces, técnicas de ML (supervisado, no supervisado, refuerzo, deep learning), cómo elegir técnica, ejemplos por industria, prototipo MVP
- **17/06/2026:** Clase 11 agregada: Métricas de Evaluación de Modelos (precisión, exactitud, error promedio y discusión)
- **10/06/2026:** Clase 10 documentada: Elección del Modelo Correcto con clasificación de modelos, criterios de selección, 9 diagramas Mermaid, ejemplos reales y diagrama de decisión
- **30/05/2026:** Actividad 8 documentada: EDA con Python, imputación, outliers, correlaciones, normalización e insights de negocio
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
