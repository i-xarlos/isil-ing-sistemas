# Análisis Exploratorio de Datos — EDA (Clase 4)

**Curso:** Análisis Estadístico y Data Mining (ISIL, 2026-1)  
**Docente:** Omar David Visitación Romero  
**Fecha:** 30/04/2026

---

## 1. Introducción al Análisis Exploratorio de Datos (EDA)

> **Objetivo central:** Ir más allá de la estadística descriptiva plana para descubrir el **comportamiento real** de los datos.

La estadística descriptiva tradicional solo muestra números agregados (promedios, desviaciones). El EDA va más profundo: busca identificar **patrones, tendencias, frecuencias y anomalías** que expliquen cómo se comportan realmente los datos.

### ¿Por qué Importa?

**Premisa fundamental:** Los datos no son azarosos. Son producto de actividades humanas con conductas específicas que pueden ser modeladas, predecidas e identificadas.

**Aplicaciones Prácticas:**

| Caso de Uso | Descripción | Impacto |
|---|---|---|
| **Detección de fraudes** | Identificar transacciones anómalas que desviarse del patrón normal | Prevenir pérdidas financieras |
| **Ciberseguridad** | Detectar intentos de hacking o accesos no autorizados | Proteger infraestructura |
| **Optimización de procesos** | Encontrar cuellos de botella y patrones de ineficiencia | Mejorar productividad |
| **Exfiltración de datos** | Identificar cuándo datos están siendo robados indebidamente | Seguridad de información |

### Conexión con Clases Anteriores

- **Clase 2 (Estadística Descriptiva):** Proporcionó las herramientas básicas (media, mediana, desviación estándar)
- **Clase 3 (Estadística Inferencial):** Mostró cómo generalizar desde muestras a poblaciones
- **Clase 4 (EDA):** Integra ambas para **explorar y comprender** los datos antes de modelar

---

## 2. Identificación de Patrones y Tendencias

Es común confundir estos dos conceptos. Aquí está la distinción clara:

### A. Tendencia (Trend)

**Definición:** La dirección persistente en la que se mueven los datos **a lo largo del tiempo**.

**Características:**
- Movimiento constante hacia arriba (alcista) o hacia abajo (bajista)
- Persiste incluso si hay fluctuaciones cortas
- Observable en periodos largos (años)

**Ejemplo Práctico: E-commerce**

```
Ventas mensuales (últimos 5 años):
Año 1: $50K, $52K, $51K, $53K (promedio: $51.5K)
Año 2: $65K, $64K, $66K, $67K (promedio: $65.5K)
Año 3: $82K, $81K, $83K, $85K (promedio: $82.75K)
Año 4: $105K, $103K, $107K, $110K (promedio: $106.25K)
Año 5: $130K, $128K, $132K, $135K (promedio: $131.25K)

Observación: A pesar de pequeñas caídas mensuales,
hay crecimiento constante año a año.
Tendencia: ALCISTA (+155% en 5 años)
```

**Utilidad para Decisiones:**
- Inversión en oro: si la tendencia es alcista, comprar
- Expansión empresarial: si la tendencia de ingresos es positiva, invertir en nuevas sucursales
- Planificación de recursos: anticipar necesidades futuras

---

### B. Patrones Cíclicos o Estacionales

**Definición:** Fluctuaciones que se **repiten en periodos específicos** de tiempo (horas, días, meses, estaciones).

**Características:**
- Repetición predecible
- Duración fija
- Causas identificables (clima, eventos, comportamiento humano)

**Ejemplos Prácticos:**

| Sector | Patrón Estacional | Período |
|---|---|---|
| **Servicios eléctricos** | Pico en verano (aire acondicionado), baja en invierno | Anual |
| **Educación** | Stock de librerías sube antes del año escolar | Anual (agosto-septiembre) |
| **Turismo** | Ocupación hotelera sube en vacaciones | Anual (verano, fiestas) |
| **Telecomunicaciones** | Mayor tráfico en horas pico (19:00-22:00) vs. madrugada | Diario |
| **E-commerce** | Picos en Black Friday, Navidad, Año Nuevo | Anual (específicos) |

**Concepto de Índice Estacional:**

Los datos se agrupan por parámetros de tiempo (meses, trimestres, horas) para encontrar repeticiones y calcular un índice que mida la intensidad del efecto estacional.

**Ejemplo: Índice Estacional de Energía Eléctrica**

```
Consumo promedio = 1,000 kWh

Enero (invierno): 900 kWh → Índice = 0.90 (10% por debajo del promedio)
Julio (verano): 1,350 kWh → Índice = 1.35 (35% por encima del promedio)

Uso: Si esperamos 1,000 kWh en julio sin ajuste,
     subestimaremos 35%, causando desabastecimiento.
```

---

## 3. Herramientas Matemáticas para el Análisis

### A. Regresión Lineal

**Qué es:** Un modelo matemático que traza una línea a través de puntos dispersos para capturar la tendencia general y permitir predicciones.

**Ecuación:**
$$\hat{y} = \beta_1 x + \beta_0$$

Donde:
- **$\hat{y}$:** Valor predicho
- **$\beta_1$:** Pendiente (dirección y fuerza de la tendencia)
- **$\beta_0$:** Intercepto (valor de $y$ cuando $x = 0$)
- **$x$:** Variable independiente (ej. tiempo)

**Interpretación de la Pendiente $\beta_1$:**

```
Si β₁ > 0: Tendencia CRECIENTE (asociación positiva)
Si β₁ < 0: Tendencia DECRECIENTE (asociación negativa)
Si β₁ = 0: Sin tendencia (datos planos)
```

**Ejemplo: Predicción de Ventas**

```
Datos históricos (últimos 12 meses):
Mes 1: $50K
Mes 2: $55K
Mes 3: $60K
...
Mes 12: $115K

Regresión lineal: Ŷ = 5.4X + 45
(Pendiente β₁ = 5.4K por mes, intercepto β₀ = 45K)

Predicción mes 13: Ŷ = 5.4(13) + 45 = $115.2K
Predicción mes 24: Ŷ = 5.4(24) + 45 = $184.6K
```

### B. Suavizado de Datos

**Problema:** Cuando los datos están muy dispersos o "ruidosos", una línea recta no captura bien la realidad.

**Solución:** Usar curvas que se ajusten mejor:

- **Curva Exponencial:** Para datos que crecen aceleradamente
- **Curva Logarítmica:** Para datos que crecen pero cada vez más lentamente
- **Polinómica:** Para relaciones más complejas

**Ejemplo Visual:**

```
Datos reales (dispersos):
    *          *
  *   *      *   *
*       *  *       *

Regresión lineal: línea recta (pierde detalles)
Suavizado polinómico: curva que se ajusta mejor
```

### C. Promedio Móvil (Moving Average)

**Qué es:** Calcular el promedio dentro de una "ventana" de tiempo que se desplaza continuamente.

**Proceso:**

```
Ejemplo: Promedio móvil de 4 trimestres

Datos originales:
Trim 1: $100K, Trim 2: $120K, Trim 3: $90K, Trim 4: $110K, Trim 5: $150K, Trim 6: $140K

Promedio móvil:
- Trimestres 1-4: ($100 + $120 + $90 + $110) / 4 = $105K
- Trimestres 2-5: ($120 + $90 + $110 + $150) / 4 = $117.5K
- Trimestres 3-6: ($90 + $110 + $150 + $140) / 4 = $122.5K

Resultado: La línea de promedio móvil es MÁS SUAVE,
mostrando tendencia clara sin "ruido" de fluctuaciones cortas.
```

**Utilidad:**
- Elimina "ruido" de fluctuaciones momentáneas
- Muestra la dirección clara de la empresa
- Facilita toma de decisiones sin distracciones

### D. Modelo ARIMA

**Mención:** Técnica de matemáticas avanzadas que divide el análisis en **ventanas temporales** para generar modelos de tendencia en escenarios muy complejos.

> **Nota:** Se cubrirá en profundidad en clases posteriores. Por ahora, reconocer que existe como herramienta para series temporales altamente complejas.

---

## 4. Detección de Anomalías (Outliers)

**Definición:** Un **outlier** o anomalía es un valor atípico que se desvía significativamente del comportamiento normal de los datos y requiere investigación.

> **Importancia:** Las anomalías no son errores que se deben ignorar. A menudo, revelan actividades ilícitas, errores en sistemas o eventos excepcionales.

### Métodos de Detección

#### Método 1: Rango Intercuartílico (IQR)

**Conceptos previos:**
- **Q1 (Primer Cuartil):** El 25% de los datos está por debajo
- **Q3 (Tercer Cuartil):** El 75% de los datos está por debajo
- **IQR (Rango Intercuartílico):** $IQR = Q3 - Q1$

**Regla de Detección:**

$$\text{Límite Inferior} = Q1 - 1.5 \times IQR$$
$$\text{Límite Superior} = Q3 + 1.5 \times IQR$$

**Cualquier dato fuera de estos límites es una anomalía.**

**Ejemplo Práctico: Detección de Fraude en Transacciones**

```
Transacciones diarias típicas de un cliente:
$50, $60, $55, $65, $52, $70, $58, $62, $75, $90

Q1 = $55
Q3 = $72
IQR = $17

Límite Inferior = $55 - (1.5 × $17) = $29.50
Límite Superior = $72 + (1.5 × $17) = $97.50

Nueva transacción: $500 → ANOMALÍA DETECTADA
(está fuera del rango $29.50 - $97.50)

Investigación: Posible fraude o error en el sistema
```

---

#### Método 2: Z-Score (Puntuación Z)

**Qué es:** Mide cuántas **desviaciones estándar** se aleja un punto de la media.

**Fórmula:**
$$Z = \frac{x - \mu}{\sigma}$$

Donde:
- **$x$:** Valor observado
- **$\mu$:** Media de los datos
- **$\sigma$:** Desviación estándar

**Regla de Detección:**

$$|Z| > 3 \rightarrow \text{ANOMALÍA}$$

**Interpretación:**
- $|Z| = 1$: Muy normal (68% de datos caen aquí)
- $|Z| = 2$: Inusual pero no raro (95% de datos caen aquí)
- $|Z| = 3$: Altamente sospechoso → Investigar
- $|Z| > 3$: Casi seguramente una anomalía

**Ejemplo: Análisis de Velocidad de Internet**

```
Datos de clientes (Mbps):
100, 95, 98, 102, 99, 101, 97, 103, 98, 500

Media (μ) = 109.3 Mbps
Desviación estándar (σ) = 148.7 Mbps

Cliente con 500 Mbps:
Z = (500 - 109.3) / 148.7 = 2.62

|Z| = 2.62 < 3 → Inusual pero tolerable (posible cliente premium)

Ahora, si un cliente tiene 1,500 Mbps:
Z = (1500 - 109.3) / 148.7 = 9.35
|Z| = 9.35 > 3 → ANOMALÍA CLARA
(Investigar si el cliente está usando métodos ilegales
o si hay un error en la medición)
```

### Comparación de Métodos

| Aspecto | IQR | Z-Score |
|---|---|---|
| **Sensibilidad** | Moderada | Alta a cambios extremos |
| **Robustez** | Resistente a extremos | Sensible a extremos |
| **Cuándo usar** | Datos muy sesgados | Datos aproximadamente normales |
| **Facilidad** | Fácil de calcular | Requiere media y desv. estándar |

---

## 5. Correlación de Datos

**Definición:** Mide el grado de **vinculación o asociación** entre dos variables.

> **Importante:** Correlación NO implica causalidad. Dos variables pueden estar correlacionadas sin que una cause la otra.

### Coeficiente de Correlación de Pearson (r)

**Rango:** Entre -1 y 1

**Interpretación:**

| Valor | Significado | Ejemplo |
|---|---|---|
| **r = +1** | Correlación positiva PERFECTA | Si X sube 1 unidad, Y sube proporcionalmente |
| **r = +0.7 a +0.9** | Correlación positiva FUERTE | Años de experiencia vs. salario |
| **r = +0.3 a +0.7** | Correlación positiva MODERADA | Edad vs. gastos en salud |
| **r ≈ 0** | NO hay relación | Color de zapatos vs. inteligencia |
| **r = -0.3 a -0.7** | Correlación negativa MODERADA | Precio vs. demanda de producto |
| **r = -0.7 a -0.9** | Correlación negativa FUERTE | Millas en auto vs. valor de reventa |
| **r = -1** | Correlación negativa PERFECTA | Si X sube, Y baja proporcionalmente |

**Fórmula:**
$$r = \frac{\sum (x_i - \bar{x})(y_i - \bar{y})}{\sqrt{\sum (x_i - \bar{x})^2 \sum (y_i - \bar{y})^2}}$$

**Ejemplo Práctico: Análisis de E-commerce**

```
Variable X: Inversión en publicidad ($ miles)
Variable Y: Ventas mensuales ($ miles)

Datos: 
Inversión: 10, 15, 20, 25, 30
Ventas:    50, 65, 80, 95, 110

Cálculo: r = +0.998 (casi perfecta correlación positiva)

Conclusión: Cada $1K en publicidad genera ~$2K en ventas
Decisión: Aumentar presupuesto de publicidad
```

---

### Correlación de Spearman

**Diferencia con Pearson:**
- Pearson mide **relación lineal**
- Spearman mide **relación monótona** (dirección consistente, no necesariamente línea recta)

**Cuándo usar Spearman:**
- Datos ordinales o rangos
- Relaciones no lineales
- Datos con outliers que distorsionan Pearson

**Ejemplo:**

```
Ranking de satisfacción del cliente (1-5) vs. Número de compras
No es lineal perfecta, pero monótona: clientes más satisfechos compran más.
Spearman captura esto mejor que Pearson.
```

---

## 6. Visualización y Herramientas de Software

> **Principio:** El análisis no sirve si no se comunica efectivamente a los decisores.

### Herramientas de Procesamiento

| Herramienta | Especialidad | Caso de Uso |
|---|---|---|
| **Python** | IA, ML, redes neuronales, automatización | Análisis complejos, modelos predictivos |
| **R** | Estadística, visualización, investigación | Reportes estadísticos, análisis exploratorio |
| **Excel** | Análisis básico, tablas, gráficos simples | Empresa pequeña, cálculos rápidos |
| **SQL** | Consultas de bases de datos | Extracción y transformación de datos |

### Herramientas de Visualización (Dashboards)

| Herramienta | Fortaleza | Público |
|---|---|---|
| **Power BI** | Integración con Microsoft, precio accesible | Empresas medianas |
| **Tableau** | Potencia visual, interactividad | Empresas grandes, consultores |
| **MicroStrategy** | Escalabilidad, datos históricos | Corporativos |

**Visualizaciones Clave:**
- **Mapas de calor:** Mostrar intensidad de datos en matriz
- **Gráficos de dispersión:** Visualizar correlación entre 2 variables
- **Gráficos de línea:** Tendencias temporales
- **Histogramas:** Distribuciones de frecuencia
- **Box plots:** Visualizar cuartiles y outliers

**Ejemplo de Dashboard Ejecutivo:**

```
┌─────────────────────────────────────────────────────┐
│ DASHBOARD DE VENTAS - ÚLTIMO TRIMESTRE              │
├─────────────────────────────────────────────────────┤
│ [KPI: +15% YoY]  [TENDENCIA: Alcista]  [FORECAST: $2.5M] │
├─────────────────────────────────────────────────────┤
│ Gráfico línea: Ventas por mes (12 meses)            │
│ Gráfico barras: Rendimiento por región              │
│ Tabla: Top 10 productos                             │
│ Mapa de calor: Estacionalidad por mes               │
└─────────────────────────────────────────────────────┘
```

---

## 7. Próximas Pasos: Aplicación Práctica con Python

> **Nota importante para la próxima clase:**

Se comenzará a utilizar **Python** para aplicar todos estos conceptos en ejercicios prácticos:

- Cargar datos desde archivos CSV
- Calcular estadísticos (media, desviación, cuartiles)
- Detectar outliers con IQR y Z-score
- Calcular correlaciones
- Crear visualizaciones con matplotlib/seaborn
- Ajustar modelos de regresión
- Identificar tendencias y patrones

**Librerías de Python a usar:**
- **pandas:** Manipulación de datos
- **numpy:** Operaciones numéricas
- **scipy:** Estadística avanzada
- **matplotlib / seaborn:** Visualización
- **scikit-learn:** Modelos de ML y estadística

---

## 8. Resumen: Checklist de EDA

Antes de modelar datos, verifica que hayas explorado:

- [ ] **Tendencias:** ¿Los datos suben, bajan o se mantienen constantes?
- [ ] **Estacionalidad:** ¿Hay ciclos recurrentes (diarios, mensuales, anuales)?
- [ ] **Outliers:** ¿Existen valores anómalos? ¿Son errores o hechos válidos?
- [ ] **Distribución:** ¿Cómo se distribuyen los datos? ¿Sesgados?
- [ ] **Correlaciones:** ¿Qué variables están relacionadas?
- [ ] **Valores faltantes:** ¿Hay datos incompletos? ¿Cuántos?
- [ ] **Calidad de datos:** ¿Son precisos? ¿De fuentes confiables?
- [ ] **Visualización:** ¿He creado gráficos que muestren patrones claramente?

---

## 9. Referencia Visual

![Análisis Exploratorio de Datos — EDA: Conceptos, Métodos y Aplicaciones](./analisis-exploratorio-datos-eda-clase-4.png)

*Fuente: Presentación clase 4 — Materiales del curso*

---

## 10. Recursos Complementarios

- 📊 **Presentación (PDF):** [40097-S04-PRESENTACION.pdf](./40097-S04-PRESENTACION.pdf)
- 📑 **Presentación original (PPTX):** 40097-S04-PRESENTACION.pptx

---

*Última actualización: 30/04/2026 | Clase 4: Análisis Exploratorio de Datos (EDA)*
