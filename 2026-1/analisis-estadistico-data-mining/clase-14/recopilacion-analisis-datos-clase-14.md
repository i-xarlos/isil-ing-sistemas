# Recopilación y Análisis de Datos (Clase 14)

**Curso:** Análisis Estadístico y Data Mining (ISIL, 2026-1)  
**Docente:** [pendiente]  
**Fecha:** DD/MM/AAAA

---

## Introducción

**Gancho humano:** ¿Alguna vez has tenido un dataset completo pero no sabías por dónde empezar a analizarlo?

**Pregunta guía:** ¿Cómo convertir datos crudos en información accionable para un proyecto?

**Objetivos de aprendizaje:**
- Obtener datos de fuentes confiables y alineadas con los objetivos del proyecto
- Limpiar y preprocesar datos para análisis estadístico
- Aplicar métodos estadísticos y algoritmos de minería de datos

---

## 1. Obtención de Datos Relevantes

### Fuentes de datos

Los datos pueden provenir de múltiples fuentes:

| Fuente | Ejemplo | Uso típico |
|--------|---------|------------|
| **Datasets abiertos** | Kaggle, OpenData | Análisis exploratorio |
| **APIs** | Twitter, Spotify | Datos en tiempo real |
| **Bases internas** | CRM, ERP | Análisis empresarial |
| **Gubernamentales** | Datos abiertos Perú | Investigación pública |

### Aplicación al Proyecto

```
┌─────────────────────────────────────┐
│   FLUJO DE OBTENCIÓN DE DATOS       │
├─────────────────────────────────────┤
│  1. Definir fuente según objetivo    │
│     ↓                               │
│  2. Descargar o conectar API        │
│     ↓                               │
│  3. Revisar estructura inicial      │
│     ↓                               │
│  4. Identificar variables clave     │
└─────────────────────────────────────┘
```

**Ejemplo:** Un dataset sobre compras online puede contener columnas como edad, monto gastado, frecuencia de compra y categoría de producto.

---

## 2. Limpieza: Manejo de Datos Faltantes y Outliers

### Datos faltantes

Los datos faltantes pueden generar sesgos o impedir el funcionamiento de modelos.

**Estrategias de tratamiento:**
- **Eliminación:** Cuando el porcentaje es bajo (<5%)
- **Imputación por media:** Para variables numéricas normales
- **Imputación por mediana:** Para variables con sesgo
- **Imputación por moda:** Para variables categóricas

### Outliers (valores extremos)

Los outliers pueden distorsionar análisis estadísticos y modelos predictivos.

**Detección:**
- Boxplots
- Z-score
- Rango intercuartílico (IQR)

**Ejemplo:** Si la variable "ingreso" contiene un valor de 3,000,000 cuando la mayoría está entre 800 y 4,000, debes evaluar si es error o caso válido.

---

## 3. Preprocesamiento: Normalización y Transformación

### Normalización

Algunos algoritmos requieren que las variables estén en la misma escala:

| Técnica | Fórmula | Cuándo usarla |
|---------|---------|---------------|
| **Min-Max** | (x - min) / (max - min) | Cuando necesitas rango [0,1] |
| **Z-score** | (x - μ) / σ | Cuando los datos son normales |

### Transformación de variables categóricas

Las variables categóricas deben convertirse en valores numéricos:

- **One-hot encoding:** Crea columnas binarias por cada categoría
- **Label encoding:** Asigna un número a cada categoría

**Ejemplo:** Si el dataset tiene la columna "género", debe convertirse en variables como `genero_femenino` y `genero_masculino`.

---

## 4. Métodos Estadísticos: Pruebas y Correlaciones

### Correlaciones

Ayudan a entender si dos variables se mueven juntas.

**Tipos:**
- **Pearson:** Relación lineal entre variables numéricas
- **Spearman:** Relación monotónica
- **Chi-cuadrado:** Asociación entre categóricas

### Pruebas estadísticas

Sirven para contrastar hipótesis planteadas en el proyecto:

| Prueba | Uso | Ejemplo |
|--------|-----|---------|
| **t-test** | Comparar dos grupos | Gasto promedio hombres vs mujeres |
| **ANOVA** | Comparar tres o más grupos | Satisfacción por región |
| **Chi-cuadrado** | Variables categóricas | Relación género-categoría compra |

---

## 5. Minería de Datos: Aplicación de Algoritmos

### Tipos de algoritmos

| Objetivo | Algoritmo | Ejemplo de uso |
|----------|-----------|----------------|
| **Clustering** | K-means, DBSCAN | Segmentar clientes |
| **Clasificación** | Árbol de decisión, Random Forest | Predecir si compra |
| **Regresión** | Lineal, Logística | Estimar ventas |

### Aplicación al Proyecto

1. **Elegir algoritmo** adecuado al objetivo
2. **Entrenar** el modelo con parte de los datos
3. **Validar** resultados con métricas simples
4. **Interpretar** hallazgos en lenguaje claro

**Métricas de evaluación:**
- **Accuracy:** Porcentaje de predicciones correctas
- **RMSE:** Error cuadrático medio (regresión)
- **Silhouette:** Calidad de clusters (clustering)

---

## Conclusiones

1. La obtención de datos confiables es el primer paso crítico del análisis
2. La limpieza y preprocesamiento determinan la calidad de los resultados
3. Los métodos estadísticos permiten validar hipótesis de negocio
4. La minería de datos revela patrones ocultos en los datos

**Frase clave:**
> "Los datos sin análisis son como un libro cerrado: tienen potencial, pero nadie lo aprovecha."

---

## Glosario

| Término | Definición | Ejemplo |
|---------|------------|---------|
| **Dataset** | Conjunto de datos estructurados | Archivo CSV con ventas |
| **Outlier** | Valor extremo que se desvía del patrón | Un ingreso de 1M cuando el promedio es 3K |
| **Normalización** | Escalar datos a un rango común | Convertir edades y montos a [0,1] |
| **Clustering** | Agrupar datos similares sin etiquetas | Segmentar clientes por comportamiento |
| **Accuracy** | Precisión del modelo en predicciones | 85% de predicciones correctas |

---

## Preguntas de Reflexión

1. **Pregunta aplicada:** Si tuvieras un dataset de ventas de una tienda online, ¿qué variables considerarías más importantes para el análisis?

2. **Pregunta comparativa:** ¿Cuándo elegirías normalización Min-Max vs Z-score para tu proyecto?

3. **Pregunta crítica:** ¿Qué consecuencias podría tener no manejar datos faltantes en un análisis de clientes?

---

## Fuentes

| # | Fuente | Tipo | URL |
|---|--------|------|-----|
| 1 | Bruce, P., Bruce, A., & Gedeck, P. (2022). *Estadística práctica para ciencia de datos con R y Python* | Libro | Marcombo |
| 2 | Caballero, R., Martín, E., & Riesco, A. (2023). *Análisis y minería de textos con Python* | Libro | RC Libros |
| 3 | Fernández-Avilés, G., & Montero, J. M. (2024). *Fundamentos de ciencia de datos con R* | Libro | Editorial Universidad de Granada |
