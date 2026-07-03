# Diseño del Proyecto Integrador (Clase 13)

**Curso:** Análisis Estadístico y Data Mining (ISIL, 2026-1)  
**Docente:** [pendiente]  
**Fecha:** 02/07/2026

---

## Introducción

**Gancho humano:** Llevas 12 clases aprendiendo estadística, R, Python y minería de datos. Ahora viene la pregunta: ¿cómo juntar todo eso en un proyecto que realmente demuestre lo que sabes? La respuesta está en el diseño.

**Pregunta guía:** ¿Cómo convertir una idea vaga en un proyecto de análisis de datos estructurado, factible y con impacto?

**Objetivos de aprendizaje:**
- Seleccionar un dataset adecuado según criterios de calidad y relevancia
- Formular objetivos claros usando el marco SMART
- Delimitar el alcance del proyecto para hacerlo realista
- Planificar etapas y entregables en 3 semanas

---

## 1. Selección de Datos: Fuentes Relevantes y Criterios

### ¿Por qué empezar por los datos?

**Analogía simple:** Seleccionar datos es como elegir el terreno antes de construir una casa. Si el terreno es inestable, todo lo que construyas se caerá. Si es sólido y del tamaño correcto, el proyecto será viable.

### Los 5 criterios de selección

| # | Criterio | Qué evaluar | Preguntas guía |
|---|----------|-------------|----------------|
| 01 | **Relevancia** | ¿El dataset está alineado con tu tema? | ¿Este dataset permite responder mi pregunta de investigación? |
| 02 | **Calidad y estructura** | Número de registros, tipos de variables, limpieza | ¿Necesitaré mucha limpieza para poder usarlo? |
| 03 | **Accesibilidad y confiabilidad** | Fuente pública, verificable, documentada | ¿La fuente es pública, confiable y verificable? |
| 04 | **Potencial analítico** | Variables numéricas y categóricas suficientes | ¿Podré aplicar clustering o clasificación? |
| 05 | **Autenticidad y representatividad** | Valores coherentes, rangos posibles | ¿Los valores parecen reales y creíbles? |

### Fuentes válidas

- **Kaggle** — Miles de datasets documentados
- **Data.gov / Data.gov.pe** — Datos abiertos del gobierno
- **INEI** — Estadísticas nacionales de Perú
- **APIs públicas** — Twitter, Spotify, OpenStreetMap
- **Datos propios** — De tu trabajo o emprendimiento (con aprobación)

### Fuentes no recomendadas

- ❌ Datos inventados
- ❌ Bases mal documentadas
- ❌ Datasets con menos de 200 registros

### Pasos concretos

```
┌─────────────────────────────────────────────┐
│   PROCESO DE SELECCIÓN DE DATOS             │
├─────────────────────────────────────────────┤
│  1. Elegir tema: clientes, ventas, salud,   │
│     educación, transporte, etc.             │
│     ↓                                       │
│  2. Buscar datasets alineados (mínimo 2)    │
│     ↓                                       │
│  3. Evaluar los 5 criterios y justificar    │
│     ↓                                       │
│  4. Describir el dataset final: fuente,     │
│     observaciones, variables, tipos,        │
│     relevancia                              │
└─────────────────────────────────────────────┘
```

---

## 2. Objetivos: Definición de Metas SMART

### ¿Por qué usar SMART?

**Analogía simple:** Un objetivo sin SMART es como decir "quiero estar en forma". Un objetivo SMART es decir "quiero poder correr 5K en 30 minutos para el 15 de julio". La diferencia es que el segundo es medible, alcanzable y tiene fecha.

### Las 5 letras de SMART

| Letra | Significado | Ejemplo malo | Ejemplo bueno |
|-------|------------|--------------|---------------|
| **S** | Específico | "Analizar los datos" | "Calcular estadísticas descriptivas de consumo y perfil demográfico" |
| **M** | Medible | "Comprender el comportamiento" | "Analizar mediante estadísticas descriptivas y visualizaciones" |
| **A** | Alcanzable | "Crear 10 modelos avanzados" | "Realizar limpieza y estandarización de variables numéricas" |
| **R** | Relevante | "Analizar migración (con dataset de ventas)" | "Determinar qué variables influyen en el comportamiento de compra" |
| **T** | Temporal | "Hacer análisis" | "Durante la fase de análisis del proyecto, aplicar pruebas estadísticas" |

### Estructura recomendada

- **1 objetivo general** — Describe la finalidad global del proyecto
- **2 a 4 objetivos específicos SMART** — Detallan los pasos concretos

### Ejemplo de objetivo general

> "Identificar patrones y segmentos de comportamiento entre los clientes de un negocio de consumo mediante análisis estadístico y técnicas de minería de datos"

---

## 3. Alcance: Delimitación del Proyecto

### ¿Por qué delimitar?

Un proyecto sin alcance definido es como un viaje sin mapa: puedes terminar en cualquier lugar, o no llegar a ningún lado. Delimitar permite enfocar, priorizar y garantizar que sea realista en el tiempo.

### Las 5 dimensiones del alcance

| Dimensión | Qué define | Ejemplo |
|-----------|-----------|---------|
| **Temático** | ¿Qué se analizará? | "Patrones de compra de clientes" |
| **Estadístico/Metodológico** | ¿Qué técnicas se aplicarán? | "Estadística descriptiva + clustering" |
| **Poblacional** | ¿A quién se refiere? | "Clientes que compraron en los últimos 6 meses" |
| **Temporal** | ¿Qué periodo abarcan los datos? | "Ventas entre enero y diciembre de 2025" |
| **Límites y exclusiones** | ¿Qué NO se hará? | "No se realizarán modelos predictivos supervisados" |

### Ejemplo de exclusiones válidas

- "No se evaluarán factores externos no incluidos en las variables"
- "No se analizarán datos faltantes de forma avanzada (solo limpieza básica)"
- "No se compararán múltiples algoritmos, solo k-means"

---

## 4. Estructura: Planificación de Etapas y Entregables

### ¿Por qué planificar?

La planificación evita improvisaciones, atrasos y análisis incompletos. Distribuye el trabajo en semanas y asegura que los resultados se construyan de forma progresiva.

### Cronograma del proyecto (3 semanas)

```
┌─────────────────────────────────────────────┐
│   CRONOGRAMA PROYECTO INTEGRADOR            │
├─────────────────────────────────────────────┤
│                                             │
│  SEMANA 13: DISEÑO                          │
│  ├── Selección del dataset                  │
│  ├── Descripción de variables               │
│  ├── Formulación de objetivos SMART         │
│  ├── Delimitación del alcance               │
│  └── Plan de trabajo                        │
│  Entregable: documento de diseño            │
│                                             │
│  SEMANA 14: ANÁLISIS                        │
│  ├── Limpieza de datos                      │
│  ├── Preprocesamiento                       │
│  ├── Estadística descriptiva e inferencial  │
│  ├── Minería de datos (clustering/clasif.)  │
│  └── Gráficos y hallazgos preliminares      │
│  Entregable: reporte de análisis            │
│                                             │
│  SEMANA 15: INTEGRACIÓN                     │
│  ├── Storytelling del proyecto              │
│  ├── Visualización de resultados            │
│  ├── Conclusiones basadas en evidencia      │
│  ├── Recomendaciones y limitaciones         │
│  └── Preparación de presentación            │
│  Entregable: borrador del informe           │
│                                             │
│  SEMANA 16: ENTREGA FINAL                   │
│  ├── Informe completo                       │
│  ├── Presentación oral                      │
│  └── Scripts en R y/o Python                │
└─────────────────────────────────────────────┘
```

---

## 5. Herramientas: Selección de R o Python

### ¿Cómo elegir?

La elección depende del tipo de análisis, tus habilidades y los objetivos del proyecto.

### Comparación rápida

| Criterio | R | Python |
|----------|---|--------|
| **Mejor para** | Estadística descriptiva e inferencial | Minería de datos y machine learning |
| **Visualización** | ggplot2 (limpio y rápido) | matplotlib, seaborn, plotly |
| **Librerías clave** | tidyverse, caret, stats | scikit-learn, pandas, numpy |
| **Ideal cuando** | El análisis es centrado en estadísticas | Se necesita escalabilidad y ML robusto |

### Cuándo elegir R

- Análisis de encuestas
- Comparación de grupos (t-test, ANOVA)
- Identificación de patrones con gráficos
- Estadística tradicional

### Cuándo elegir Python

- Segmentación con k-means
- Clasificación (árboles, regresión logística)
- Análisis de comportamiento por patrones
- Datasets grandes que requieren escalabilidad

---

## Errores Comunes a Evitar

| Error | Ejemplo | Consecuencia |
|-------|---------|--------------|
| Dataset demasiado pequeño | 30 registros para clustering | Resultados no confiables |
| Objetivos vagos | "Analizar todo sobre los clientes" | Proyecto infinito e imposible |
| Sin delimitar exclusiones | No decir qué NO se hará | Expectativas irreales |
| Elegir herramienta por tendencia | Usar Python cuando R es más adecuado | Tiempo perdido, código innecesario |

---

## Conclusiones

1. La selección del dataset es la base: debe ser relevante, confiable y con potencial analítico
2. Los objetivos SMART dan un rumbo claro, medible y evaluable
3. Delimitar el alcance facilita mantener el proyecto dentro de límites realistas
4. La planificación en etapas asegura cumplimiento progresivo de entregables

**Frase clave:**
> "Un buen diseño de proyecto no garantiza el éxito, pero un mal diseño garantiza el fracaso."

---

## Glosario

| Término | Definición | Ejemplo |
|---------|------------|---------|
| **SMART** | Framework para objetivos: Specific, Measurable, Achievable, Relevant, Time-bound | "Reducir churn 10% en 3 meses" |
| **Dataset** | Conjunto de datos estructurado para análisis | Archivo CSV con ventas de 2025 |
| **Clustering** | Técnica de minería para agrupar registros similares | Segmentar clientes por comportamiento de compra |
| **Outliers** | Valores atípicos fuera del rango esperado | Un cliente con 200 años de edad |
| **Storytelling** | Narrativa basada en datos para comunicar resultados | Presentar hallazgos con contexto y Impacto |
| **Alcance** | Límites y exclusiones del proyecto | "No se evaluarán factores externos" |

---

## Preguntas de Reflexión

1. **Pregunta aplicada:** "Si tuvieras que elegir un dataset para analizar el rendimiento de una universidad, ¿qué variables incluirías y por qué?"
2. **Pregunta comparativa:** "¿Cuál de los 5 criterios de selección de datos crees que es el más importante y por qué?"
3. **Pregunta crítica:** "¿Qué pasaría si un proyecto de análisis de datos no tiene objetivos SMART definidos desde el inicio?"

---

## Fuentes

| # | Fuente | Tipo | URL |
|---|--------|------|-----|
| 1 | González, M., & López, S. (2021). *Estadística y minería de datos para la toma de decisiones empresariales* | Libro | Editorial Académica Española |
| 2 | Martínez, J., & Pérez, A. (2022). *Data Science y análisis de datos con Python* | Libro | Editorial Profesional |
| 3 | Torres, L., & Ramírez, F. (2023). *Gestión de proyectos de análisis de datos* | Libro | Editorial Universitaria |
