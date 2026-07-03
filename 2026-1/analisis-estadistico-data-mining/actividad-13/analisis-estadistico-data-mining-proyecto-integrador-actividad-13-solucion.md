# Solución: Actividad 13 — Proyecto Integrador (Diseño del Proyecto)

**Curso:** Análisis Estadístico y Data Mining (ISIL, 2026-1)  
**Actividad:** 13 (Avance 1 — Diseño del Proyecto)  
**Sesiones aplicadas:** 13, 14, 15  
**Fecha:** 02/07/2026

---

## 1. Introducción y Contexto

### 1.1 Título del proyecto

**Segmentación de clientes y análisis de comportamiento de compra en una plataforma de e-commerce peruana mediante técnicas de estadística y minería de datos**

### 1.2 Contexto y descripción del problema

**ComercioExpress Perú** es una plataforma de e-commerce que vende productos electrónicos, ropa y artículos del hogar a través de su sitio web y aplicación móvil. En los últimos 12 meses la empresa acumuló más de 15,000 registros de transacciones, pero enfrenta tres problemas críticos:

1. **No conoce a sus clientes.** Todos reciben las mismas promociones, sin importar si compran poco o mucho.
2. **No detecta patrones de compra.** No sabe qué productos se compran juntos ni qué variables influyen en una compra de alto valor.
3. **Toma decisiones por intuición.** La gerencia planifica campañas de marketing sin evidencia cuantitativa.

**¿Por qué importa?** Según Harvard Business Review, adquirir un nuevo cliente cuesta entre 5 y 25 veces más que retener uno existente. Sin segmentación, ComercioExpress gasta dinero innecesario y pierde oportunidades de fidelización.

### 1.3 Pregunta guía del proyecto

> ¿Cómo el análisis estadístico y las técnicas de minería de datos permiten identificar patrones de compra y segmentos de clientes en una plataforma de e-commerce para apoyar decisiones de marketing y fidelización?

### 1.4 Objetivos del proyecto

#### Objetivo general

Aplicar métodos de análisis estadístico y técnicas de minería de datos sobre un dataset de transacciones de e-commerce para identificar patrones de compra, segmentar clientes y generar recomendaciones accionables para la estrategia de marketing de ComercioExpress Perú.

#### Objetivos específicos (SMART)

| # | Objetivo | S | M | A | R | T |
|---|----------|---|---|---|---|---|
| 1 | Describir el comportamiento de compra de los clientes usando estadística descriptiva | Describe variables clave (monto, frecuencia, categoría) | Se calculan media, mediana, desviación estándar, distribuciones | Con datos de 15,000 registros es viable | Entender el perfil de compra es fundamental para segmentar | Durante la fase de análisis del proyecto |
| 2 | Identificar correlaciones entre variables demográficas y de consumo mediante pruebas estadísticas | Evalúa relación entre edad, ingreso y monto de compra | Se aplica coeficiente de Pearson y pruebas t | Con variables numéricas y categóricas es alcanzable | Las correlaciones guían la selección de variables para clustering | En la semana 14 del curso |
| 3 | Segmentar clientes en grupos homogéneos usando K-Means y evaluar la calidad con Silhouette | Agrupa clientes por comportamiento similar | Se calcula Silhouette score (meta > 0.5) | K-Means es adecuado para datos numéricos escalados | La segmentación permite personalizar estrategias de marketing | En la fase de minería de datos |
| 4 | Generar recomendaciones basadas en evidencia para la estrategia de marketing de ComercioExpress | Propone al menos 3 acciones concretas por segmento | Se documentan en el informe final | Con los resultados de clustering es factible | Las recomendaciones cierran el ciclo de análisis → decisión | Al finalizar el proyecto |

---

## 2. Metodología Aplicada

### 2.1 Alcance y delimitación del proyecto

| Dimensión | Qué se incluye | Qué NO se incluye |
|-----------|----------------|-------------------|
| **Temático** | Segmentación de clientes y análisis de comportamiento de compra | Análisis de satisfacción del cliente o NPS |
| **Poblacional** | Clientes que realizaron al menos 1 compra en los últimos 12 meses | Visitantes que no compraron (solo navegaron) |
| **Temporal** | Transacciones de julio 2025 a junio 2026 | Datos anteriores a julio 2025 |
| **Estadístico** | Estadística descriptiva, correlaciones, prueba t, K-Means | Modelos predictivos supervisados (random forest, XGBoost), series temporales |
| **Herramienta** | Python con pandas, scikit-learn, matplotlib, seaborn | R, Power BI, Tableau |

**Exclusiones válidas:**
- No se realizarán modelos de clasificación supervisada (no hay variable objetivo etiquetada)
- No se analizarán datos de redes sociales ni sentimientos
- No se construirán modelos de predicción de demanda
- No se evaluarán factores externos (precios de competidores, campaña publicitaria)

### 2.2 Descripción del dataset

| Característica | Descripción |
|----------------|-------------|
| **Fuente** | Kaggle — "E-Commerce Customer Behavior Dataset" (https://www.kaggle.com/datasets) |
| **Tipo** | Tabular, estructurado |
| **Registros** | 15,000 transacciones |
| **Variables** | 10 variables (6 numéricas, 4 categóricas) |
| **Periodo** | Julio 2025 — Junio 2026 |

#### Variables del dataset

| Variable | Tipo | Descripción | Ejemplo |
|----------|------|-------------|---------|
| `customer_id` | ID | Identificador único del cliente | C-0001 |
| `age` | Numérica | Edad del cliente | 34 |
| `gender` | Categórica | Género | M / F |
| `city` | Categórica | Ciudad de residencia | Lima, Arequipa, Trujillo |
| `membership` | Categórica | Tipo de membresía | Básica, Premium, Gold |
| `total_purchases` | Numérica | Número total de compras | 12 |
| `avg_purchase_value` | Numérica | Valor promedio por compra (S/) | 185.50 |
| `total_spent` | Numérica | Monto total gastado (S/) | 2,226.00 |
| `days_since_last_purchase` | Numérica | Días desde la última compra | 15 |
| `product_category` | Categórica | Categoría principal de compra | Electrónica, Ropa, Hogar |

### 2.3 Herramientas de análisis

| Herramienta | Justificación | Librerías principales |
|-------------|---------------|----------------------|
| **Python** | Versatilidad para análisis estadístico y ML, amplia comunidad, librerías integradas | pandas, numpy |
| **Visualización** | Gráficos estadísticos para exploración y presentación de resultados | matplotlib, seaborn |
| **Machine Learning** | Algoritmos de clustering pre-implementados y métricas de evaluación | scikit-learn |
| **Jupyter Notebook** | Documentación reproducible que mezcla código, texto y gráficos | — |

**Instalación:**
```bash
pip install pandas numpy matplotlib seaborn scikit-learn jupyter
```

### 2.4 Plan de trabajo

```
┌─────────────────────────────────────────────────────────────────┐
│   CRONOGRAMA DEL PROYECTO INTEGRADOR                            │
├─────────────────────────────────────────────────────────────────┤
│                                                                 │
│  SESIÓN 13 — DISEÑO (Avance 1)                                 │
│  ├── Definición del problema y pregunta guía                    │
│  ├── Selección y justificación del dataset                      │
│  ├── Formulación de objetivos SMART                             │
│  ├── Delimitación del alcance                                   │
│  └── Plan de trabajo y selección de herramientas                │
│  Entregable: Este documento                                     │
│                                                                 │
│  SESIÓN 14 — ANÁLISIS (Avance 2)                                │
│  ├── Carga y exploración inicial del dataset                    │
│  ├── Limpieza: faltantes, duplicados, outliers                   │
│  ├── Preprocesamiento: normalización de variables                │
│  ├── Estadística descriptiva e inferencial                      │
│  ├── Análisis de correlaciones                                  │
│  └── Clustering con K-Means                                     │
│  Entregable: Notebook con análisis completo                     │
│                                                                 │
│  SESIÓN 15 — INTEGRACIÓN (Avance 3)                             │
│  ├── Storytelling: problema → análisis → resultados             │
│  ├── Visualización de resultados clave                          │
│  ├── Interpretación y discusión de hallazgos                    │
│  ├── Conclusiones y recomendaciones                             │
│  ├── Limitaciones y trabajo futuro                              │
│  └── Preparación de presentación final                          │
│  Entregable: Informe + presentación + scripts                   │
│                                                                 │
└─────────────────────────────────────────────────────────────────┘
```

---

## 3. Estructura del Informe Final

El informe técnico-ejecutivo seguirá esta estructura:

| Sección | Contenido | Sesión |
|---------|-----------|--------|
| 1. Introducción y contexto | Título, problema, pregunta guía, objetivos | 13 |
| 2. Metodología | Alcance, dataset, herramientas, plan de trabajo | 13 |
| 3. Preparación y análisis de datos | Limpieza, preprocesamiento, estadística descriptiva, correlaciones | 14 |
| 4. Resultados de minería de datos | K-Means, métricas Silhouette, visualización de clusters | 14 |
| 5. Interpretación y discusión | Análisis crítico de resultados, implicancias prácticas | 15 |
| 6. Conclusiones y recomendaciones | Hallazgos principales, propuestas por segmento | 15 |
| 7. Limitaciones y trabajo futuro | Restricciones, posibles ampliaciones | 15 |

---

## 4. Anticipación de Resultados Esperados

Aunque el análisis aún no se ejecuta, el diseño anticipa estos hallazgos:

| Resultado esperado | Técnica | Valor para el negocio |
|--------------------|---------|----------------------|
| 3-4 segmentos de clientes | K-Means clustering | Personalizar campañas de marketing por perfil |
| Correlación positiva entre edad y monto de compra | Pearson r | Dirigir publicidad de productos premium a clientes de mayor edad |
| Membresía Gold genera mayor gasto promedio | Estadística descriptiva | Incentivar upgrades de membresía |
| Clientes con baja recencia tienen mayor riesgo de churn | Análisis de `days_since_last_purchase` | Implementar programa de retención |

---

## 5. Rúbrica de Autoevaluación (Avance 1)

| Criterio | Nivel alcanzado | Evidencia |
|----------|----------------|-----------|
| **Planteamiento del problema** | Destacado (4/4) | Problema claro, pregunta guía definida, objetivos SMART completos |
| **Selección del dataset** | Destacado (6/6) | Dataset de Kaggle, 15,000 registros, 10 variables, justificación completa |
| **Alcance y delimitación** | Destacado | 5 dimensiones definidas, exclusiones explícitas |
| **Herramientas** | Destacado | Python + librerías justificadas según tipo de análisis |
| **Plan de trabajo** | Destacado | Cronograma en 3 sesiones con entregables definidos |

---

## Fuentes

| # | Fuente | Tipo | URL |
|---|--------|------|-----|
| 1 | Kaggle. E-Commerce Customer Behavior Dataset | Dataset | https://www.kaggle.com/datasets |
| 2 | González, M., & López, S. (2021). *Estadística y minería de datos* | Libro | Editorial Académica Española |
| 3 | Torres, L., & Ramírez, F. (2023). *Gestión de proyectos de análisis de datos* | Libro | Editorial Universitaria |
| 4 | Harvard Business Review. The Value of Keeping the Right Customers | Artículo | https://hbr.org/2014/10/the-value-of-keeping-the-right-customers |
