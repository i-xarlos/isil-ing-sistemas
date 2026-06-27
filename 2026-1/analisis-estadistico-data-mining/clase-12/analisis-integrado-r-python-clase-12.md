# Análisis Integrado en R y Python (Clase 12)

**Curso:** Análisis Estadístico y Data Mining (ISIL, 2026-1)  
**Docente:** [pendiente]  
**Fecha:** 24/06/2026

---

## Introducción

**Gancho humano:** ¿Alguna vez te has preguntado por qué algunas empresas toman decisiones basadas en datos y otras siguen adivinando? La diferencia está en saber combinar las herramientas correctas.

**Pregunta guía:** ¿Cómo aprovechar lo mejor de R y Python en un solo flujo de trabajo analítico?

**Objetivos de aprendizaje:**
- Comparar las fortalezas de R y Python para análisis estadístico
- Comprender cómo integrar ambas herramientas en un mismo flujo
- Aplicar algoritmos de minería de datos en ambos lenguajes
- Diseñar pipelines de datos eficientes y reproducibles

---

## 1. Comparación de Herramientas: R vs. Python

### ¿Qué son R y Python?

**Analogía simple:** R es como un microscopio de alta precisión para estadística, mientras que Python es como una navaja suiza que hace de todo bien.

| Aspecto | R | Python |
|---------|---|--------|
| **Origen** | Investigación académica | Lenguaje de propósito general |
| **Fortaleza** | Estadística, visualización, econometría | Versatilidad, escalabilidad, automatización |
| **Uso principal** | Análisis exploratorio, pruebas estadísticas | Pipelines productivos, machine learning |
| **Comunidad** | Académica, investigadores | Empresarial, desarrolladores |

### Ejemplo real: Netflix

Netflix utiliza Python para sus sistemas de recomendación y procesamiento de millones de vistas diarias. R se usa en equipos de investigación para validar modelos estadísticos antes de implementarlos en producción.

---

## 2. Integración de Flujos de Trabajo

### ¿Qué es la integración R-Python?

**Analogía simple:** Es como tener un traductor que conecta a dos expertos que hablan idiomas distintos pero complementarios.

```
┌─────────────────────────────────────────────────────┐
│          FLUJO INTEGRADO R-PYTHON                   │
├─────────────────────────────────────────────────────┤
│  1. Python prepara y procesa los datos              │
│     ↓                                               │
│  2. Python ejecuta análisis descriptivo inicial      │
│     ↓                                               │
│  3. R valida o profundiza el análisis estadístico    │
│     ↓                                               │
│  4. Python consolida resultados y comunica           │
└─────────────────────────────────────────────────────┘
```

### ¿Por qué integrar?

| Beneficio | Descripción | Ejemplo Real |
|-----------|-------------|--------------|
| **Eficiencia** | Reducir tiempos de análisis | Netflix optimiza pipelines para procesar billones de eventos diarios |
| **Validez estadística** | Validar resultados con rigor | Bancos usan R para validar modelos de scoring crediticio |
| **Escalabilidad** | Automatizar procesos | Amazon integra Python en sistemas de recomendación |
| **Colaboración** | Equipos multidisciplinarios | Spotify combina ambos lenguajes en análisis de usuarios |

### Ejemplo práctico: Retail

Una empresa retail quiere saber si el gasto promedio difiere entre hombres y mujeres:

**Python (análisis descriptivo):**
```python
import pandas as pd
from scipy import stats

clientes = pd.DataFrame({
    "genero": ["Hombre", "Hombre", "Mujer", "Mujer", "Hombre", "Mujer"],
    "gasto": [450, 520, 600, 580, 480, 610]
})

promedios = clientes.groupby("genero")["gasto"].mean()
print(promedios)
# Hombre    483.33
# Mujer     596.67
```

**R (validación estadística):**
```r
clientes <- data.frame(
  genero = c("Hombre", "Hombre", "Mujer", "Mujer", "Hombre", "Mujer"),
  gasto = c(450, 520, 600, 580, 480, 610)
)

t.test(gasto ~ genero, data = clientes)
# p-value = 0.018 (estadísticamente significativo)
```

**Resultado:** Las mujeres gastan significativamente más (S/596.67 vs S/483.33), permitiendo diseñar campañas segmentadas.

---

## 3. Análisis Estadístico en Ambas Herramientas

### ¿Qué es el análisis estadístico?

**Analogía simple:** Es como un detective que busca pistas en los datos para descubrir verdades ocultas.

### Pruebas estadísticas comunes

| Prueba | Para qué sirve | R | Python |
|--------|----------------|---|--------|
| **t de Student** | Comparar promedios de 2 grupos | `t.test()` | `scipy.stats.ttest_ind()` |
| **ANOVA** | Comparar promedios de 3+ grupos | `aov()` | `scipy.stats.f_oneway()` |
| **Correlación** | Medir relación entre 2 variables | `cor.test()` | `scipy.stats.pearsonr()` |
| **Regresión** | Analizar efecto de variable sobre otra | `lm()` | `statsmodels.OLS()` |

### Ejemplo: Sector Financiero

Una entidad financiera evalúa si el ingreso promedio difiere entre cuentas básicas y premium:

```python
# Python: Análisis descriptivo
clientes = pd.DataFrame({
    "cuenta": ["Basica", "Basica", "Premium", "Premium", "Basica", "Premium"],
    "ingreso": [2500, 2700, 4200, 4000, 2600, 4500]
})

promedios = clientes.groupby("cuenta")["ingreso"].mean()
# Basica     2600.00
# Premium    4233.33
```

```r
# R: Validación estadística
t.test(ingreso ~ cuenta, data = clientes)
# p-value = 0.004 (estadísticamente significativo)
```

**Interpretación:** Los clientes premium tienen mayor capacidad económica → productos exclusivos y ofertas diferenciadas.

---

## 4. Minería de Datos: Algoritmos en R y Python

### ¿Qué es la minería de datos?

**Analogía simple:** Es como excavar en una mina de oro: los datos están ahí, pero necesitas las herramientas correctas para extraer el valor.

### Algoritmos principales

| Tipo | Para qué sirve | Ejemplo de uso |
|------|----------------|----------------|
| **Clasificación** | Asignar categorías a datos | Clasificar clientes como "riesgosos" o "no riesgosos" |
| **Clustering** | Agrupar datos similares | Segmentar clientes por comportamiento de compra |
| **Regresión** | Predecir valores numéricos | Predecir ventas futuras |

### Sectores que usan minería de datos

| Industria | Aplicación | Beneficio |
|-----------|------------|-----------|
| **Marketing** | Segmentación de clientes | Campañas personalizadas |
| **Finanzas** | Detección de fraudes | Reducción de pérdidas |
| **Logística** | Optimización de rutas | Ahorro en costos de envío |
| **Salud** | Diagnóstico asistido | Precisión médica |
| **Retail** | Recomendación de productos | Mayor ticket promedio |

### Proceso de minería de datos

```
┌─────────────────────────────────────────────────────┐
│          PROCESO DE MINERÍA DE DATOS                │
├─────────────────────────────────────────────────────┤
│  1. Comprensión del problema                        │
│     ↓                                               │
│  2. Preparación de los datos                        │
│     ↓                                               │
│  3. Selección del algoritmo                         │
│     ↓                                               │
│  4. Entrenamiento del modelo                        │
│     ↓                                               │
│  5. Evaluación de resultados                        │
│     ↓                                               │
│  6. Interpretación y uso del modelo                 │
└─────────────────────────────────────────────────────┘
```

---

## 5. Optimización de Pipelines de Datos

### ¿Qué es un pipeline de datos?

**Analogía simple:** Es como una línea de ensamblaje en una fábrica: cada estación transforma el producto hasta tener el resultado final.

### Etapas del pipeline

| Etapa | Descripción | Herramientas R | Herramientas Python |
|-------|-------------|----------------|---------------------|
| **1. Ingesta** | Obtener datos de fuentes | readr, readxl, DBI | pandas, sqlalchemy |
| **2. Limpieza** | Corregir errores, eliminar nulos | dplyr, tidyr | pandas |
| **3. Transformación** | Reorganizar y preparar datos | dplyr (%>%) | pandas (encadenamiento) |
| **4. Análisis** | Aplicar pruebas estadísticas | Paquetes estadísticos | scikit-learn, statsmodels |
| **5. Automatización** | Programar ejecución | .R, R Markdown | .py, Jupyter Notebooks |
| **6. Visualización** | Reportar resultados | ggplot2, flexdashboard | matplotlib, seaborn, dash |

### Ejemplo: Pipeline en acción

```
┌─────────────────────────────────────────────────────┐
│          PIPELINE DE DATOS                          │
├─────────────────────────────────────────────────────┤
│  Fuente: CSV de ventas                              │
│     ↓                                               │
│  Python: Limpieza y preparación                     │
│     ↓                                               │
│  Python: Análisis descriptivo                       │
│     ↓                                               │
│  R: Prueba estadística (t-test, ANOVA)              │
│     ↓                                               │
│  Python: Consolidación y reporte                    │
│     ↓                                               │
│  Resultado: Dashboard ejecutivo                     │
└─────────────────────────────────────────────────────┘
```

---

## 6. Errores Comunes a Evitar

| Error | Ejemplo real | Consecuencia |
|-------|--------------|--------------|
| **No integrar herramientas** | Usar solo Python sin validar estadísticamente | Modelos con sesgo no detectado |
| **Ignorar limpieza de datos** | Procesar datos con nulos o duplicados | Conclusiones incorrectas |
| **No documentar procesos** | Scripts sin comentarios ni versionado | Imposible reproducir resultados |
| **Usar solo R para producción** | Modelos que no escalan en sistemas empresariales | Cuellos de botella en procesamiento |

---

## Conclusiones

1. **R y Python son complementarias, no competidoras:** R destaca en estadística pura, Python en automatización y escalabilidad
2. **La integración es estratégica:** Combinar ambos lenguajes permite análisis más completos y confiables
3. **Los pipelines son esenciales:** Diseñar flujos ordenados reduce errores y mejora la eficiencia
4. **La validación estadística es clave:** Python ejecuta, R valida → decisiones basadas en datos confiables

**Frase clave:**
> "La integración de R y Python no es redundante, es estratégica. Python construye el proceso; R fortalece el análisis."

---

## Glosario

| Término | Definición | Ejemplo |
|---------|------------|---------|
| **Pipeline** | Secuencia ordenada de procesos de datos | Ingesta → Limpieza → Análisis → Reporte |
| **Prueba t de Student** | Compara promedios de dos grupos | Hombres vs. Mujeres en gasto promedio |
| **ANOVA** | Compara promedios de tres o más grupos | Ventas por región (Norte, Sur, Centro) |
| **Clustering** | Agrupa datos similares sin categorías predefinidas | Segmentar clientes por comportamiento |
| **Scoring** | Modelo que asigna puntuación de riesgo o valor | Score crediticio de clientes |
| **Reproducibilidad** | Capacidad de repetir un análisis con los mismos resultados | Ejecutar el mismo script y obtener iguales resultados |

---

## Preguntas de Reflexión

1. **Pregunta aplicada:** Si tuvieras una tienda online, ¿qué datos recopilarías y qué herramienta usarías para analizarlos?

2. **Pregunta comparativa:** ¿En qué situaciones del mundo real verías más útil usar R en lugar de Python?

3. **Pregunta crítica:** ¿Cómo afectaría a tu negocio usar solo una herramienta (solo R o solo Python) en lugar de integrar ambas?

---

## Fuentes

| # | Fuente | Tipo | URL |
|---|--------|------|-----|
| 1 | Betancourt, D. (2025). *Análisis de datos con Python: Data Science Nivel 1* | Libro | [Amazon](https://www.amazon.com) |
| 2 | Bruce, P., Bruce, A., & Gedeck, P. (2022). *Estadística práctica para ciencia de datos con R y Python* | Libro | [Marcombo](https://www.marcombo.com) |
| 3 | Fernández-Avilés, G., & Montero, J. M. (2024). *Fundamentos de ciencia de datos con R* | Libro | [datos.gob.es](https://www.datos.gob.es) |
| 4 | Padilla Beltrán, J. E., & Contreras Bravo, L. E. (2024). *Ciencia de datos con Python* | Libro | [Ediciones de la U](https://edicionesdelau.com) |

---

**Última verificación:** 24/06/2026
