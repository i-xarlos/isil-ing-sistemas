# Preparación de Datos — Análisis Estadístico y Data Mining (Clase 6)

## Introducción

La **preparación de datos** es una de las etapas más críticas en análisis estadístico y data mining. La calidad de los resultados depende directamente de la calidad de los datos utilizados. Datos mal preparados conducen a conclusiones erróneas y decisiones poco confiables.

### Por qué es tan importante

Los datos suelen provenir de múltiples fuentes con:
- Errores de entrada
- Valores incompletos
- Formatos inconsistentes
- Ruido e inconsistencias lógicas

Antes de aplicar cualquier técnica estadística o modelo analítico, es indispensable realizar un proceso riguroso de preparación que incluya:

- **Limpieza**: eliminación de ruido y corrección de errores
- **Transformación**: codificación y escalado de variables
- **Manejo de datos faltantes**: imputación o eliminación
- **Normalización**: z-score, min-max scaling
- **Estandarización**: formatos consistentes de datos

---

## 1. Limpieza: Eliminación de Ruido y Corrección de Errores

### ¿Qué es la limpieza de datos?

Es el proceso mediante el cual se **identifican, corrigen o eliminan** valores incorrectos, inconsistentes o irrelevantes dentro de un conjunto de datos. Su objetivo es asegurar que la información represente de manera fiel la realidad.

### Tipos de problemas que genera el ruido

El **ruido** corresponde a datos que distorsionan el análisis:

| Tipo de problema | Descripción |
|---|---|
| **Valores extremos injustificados** | Outliers que no tienen justificación lógica |
| **Registros duplicados** | Mismos datos capturados múltiples veces |
| **Errores de digitación** | Valores incorrectos por entrada manual |

### Corrección de errores

La **corrección de errores** implica ajustar:

- Valores mal ingresados
- Inconsistencias lógicas
- Formatos incorrectos que afectan la calidad del análisis

### Importancia crítica

Los modelos analíticos no distinguen entre datos correctos e incorrectos: **procesan todo lo disponible**. Un solo valor anómalo puede distorsionar significativamente los resultados.

### Ejemplo práctico: Análisis de ventas mensuales

Una empresa comercial analiza ventas mensuales (en miles de soles) de una sucursal durante 10 meses:

```
Mes 1  Mes 2  Mes 3  Mes 4  Mes 5  Mes 6  Mes 7  Mes 8  Mes 9  Mes 10
15     16     14     15     95     16     15     14     15     16
```

**Problema identificado**: El valor del mes 5 (95) se aleja significativamente del comportamiento habitual (15-16). El promedio normal es ~15,000 soles, pero el mes 5 registra 95,000 soles. Tras revisar, se descubre un error de digitación.

**Impacto si no se corrige**:
- El promedio se distorsiona de ~15,700 a ~16,100 soles
- La desviación estándar aumenta significativamente
- Cualquier modelo de predicción generaría resultados engañosos

### Proceso de limpieza de datos

```
┌─────────────────────────────────────────────────────────────┐
│                   PROCESO DE LIMPIEZA                       │
├─────────────────────────────────────────────────────────────┤
│                                                              │
│  1. IDENTIFICACIÓN DE ERRORES Y RUIDO                       │
│     • Valores fuera de rango                                │
│     • Registros duplicados                                  │
│     • Inconsistencias entre variables                       │
│                ↓                                             │
│  2. DETECCIÓN DE VALORES ATÍPICOS (OUTLIERS)                │
│     • Uso de estadísticas descriptivas                      │
│     • Gráficos: boxplots, histogramas                       │
│                ↓                                             │
│  3. CORRECCIÓN DE ERRORES                                   │
│     • Ajuste manual basado en reglas del negocio            │
│     • Reemplazo por valores válidos o estimados             │
│                ↓                                             │
│  4. ELIMINACIÓN DE REGISTROS NO CONFIABLES                  │
│     • Cuando el error no puede corregirse de forma razonable│
│                                                              │
└─────────────────────────────────────────────────────────────┘
```

### Implementación en R

```r
# Datos de ventas
ventas <- c(15, 16, 14, 15, 95, 16, 15, 14, 15, 16)

# Resumen estadístico
summary(ventas)
#    Min. 1st Qu.  Median    Mean 3rd Qu.    Max. 
#    14.0    15.0    15.5    16.1    16.0    95.0 

# Visualización para detectar outliers
boxplot(ventas, main="Detección de valores atípicos")

# Identificación de outliers usando IQR (Rango Intercuartílico)
Q1 <- quantile(ventas, 0.25)      # Q1 = 15
Q3 <- quantile(ventas, 0.75)      # Q3 = 16
IQR <- Q3 - Q1                    # IQR = 1
outliers <- ventas[ventas < (Q1 - 1.5 * IQR) | ventas > (Q3 + 1.5 * IQR)]
# outliers = [95]

# Eliminación del valor atípico
ventas_limpias <- ventas[ventas <= (Q3 + 1.5 * IQR)]
# ventas_limpias = [15, 16, 14, 15, 16, 15, 14, 15, 16]

# Nuevo resumen
summary(ventas_limpias)
#    Min. 1st Qu.  Median    Mean 3rd Qu.    Max. 
#    14.0    15.0    15.0    15.1    16.0    16.0 
```

### Implementación en Python

```python
import numpy as np
import matplotlib.pyplot as plt

# Datos de ventas
ventas = np.array([15, 16, 14, 15, 95, 16, 15, 14, 15, 16])

# Estadísticos básicos
print("Promedio original:", np.mean(ventas))              # 16.1
print("Desviación estándar:", np.std(ventas))            # 26.39

# Boxplot para detectar outliers
plt.boxplot(ventas)
plt.title("Detección de valores atípicos")
plt.show()

# Cálculo del IQR
Q1 = np.percentile(ventas, 25)                # 15.0
Q3 = np.percentile(ventas, 75)                # 16.0
IQR = Q3 - Q1                                 # 1.0

# Límites para identificar outliers
limite_inferior = Q1 - 1.5 * IQR              # 13.5
limite_superior = Q3 + 1.5 * IQR              # 17.5

# Eliminación del outlier
ventas_limpias = ventas[ventas <= limite_superior]

print("Promedio limpio:", np.mean(ventas_limpias))      # 15.1
print("Desviación estándar limpia:", np.std(ventas_limpias)) # 0.71
```

### Resultado del análisis

La **boxplot** identifica un valor atípico en las ventas mensuales, el cual no sigue el comportamiento habitual de la sucursal. Una vez eliminado:

- El promedio original (16.1) se corrige a 15.1
- La desviación estándar baja de 26.39 a 0.71
- Los análisis posteriores son fiables

---

## 2. Transformación: Codificación y Escalado de Variables

### ¿Qué es la transformación de datos?

Es el proceso mediante el cual se **modifican los valores originales** de las variables para expresarlas en nuevas formas que sean más adecuadas para el análisis.

### Tipos de transformación

#### Codificación
Convertir datos cualitativos en valores numéricos:

**Ejemplo - Variable categórica (Canal de compra)**:
```
Original          Codificado
Online      →     1
Tienda      →     2
Teléfono    →     3
```

#### Escalado de variables
Ajustar la magnitud de variables numéricas para que estén en rangos comparables.

**Ejemplo - Ingresos vs. Edad**:
```
Cliente  Edad  Ingreso (S/)
C1       28    85,000
C2       32    120,000

Escalado (0-1):
Cliente  Edad   Ingreso
C1       0.2    0.0
C2       0.4    1.0
```

---

## 3. Manejo de Datos Faltantes: Imputación y Eliminación

### ¿Qué son los datos faltantes?

Son **valores no registrados o incompletos** en la base de datos. Pueden ocurrir por:
- Errores en la entrada de datos
- Equipos de medición que falla
- Respuestas incompletas en encuestas
- Problemas de integración de sistemas

### Estrategias para manejar datos faltantes

#### 1. Eliminación de registros
**Cuándo usar**: Cuando el porcentaje de datos faltantes es muy bajo (< 5%)

```r
# Eliminación de filas con NA
datos_completos <- na.omit(datos)
```

#### 2. Imputación por la media (variables numéricas)
**Cuándo usar**: Para datos cuantitativos sin valores extremos significativos

**Ejemplo - Ingreso de clientes**:

| Cliente | Ingreso original | Ingreso imputado |
|---------|------------------|------------------|
| C1      | 3,000            | 3,000            |
| C2      | NA               | 4,167            |
| C3      | 4,500            | 4,500            |
| C4      | 5,000            | 5,000            |

La media es: (3000 + 4500 + 5000) / 3 = 4,167

**Ventajas**:
- Mantiene el tamaño de la muestra
- Permite continuar el análisis sin eliminar registros
- Adecuada para análisis financiero básico, segmentación, reportes

```r
# Imputación por media en R
datos$ingreso[is.na(datos$ingreso)] <- mean(datos$ingreso, na.rm = TRUE)
```

```python
# Imputación por media en Python
datos['ingreso'].fillna(datos['ingreso'].mean(), inplace=True)
```

#### 3. Imputación por la moda (variables categóricas)
**Cuándo usar**: Para datos categóricos donde una categoría predomina

**Ejemplo - Canal de compra preferido**:

| Cliente | Canal original | Canal imputado |
|---------|---|---|
| C1      | Online | Online |
| C2      | Tienda | Tienda |
| C3      | Online | Online |
| C4      | NA | **Online** |

La **moda** (categoría más frecuente) es **Online** (aparece 2 veces)

**Ventajas**:
- Conserva la coherencia categórica del conjunto
- Adecuada para estudios de mercado y análisis de comportamiento del consumidor

```r
# Imputación por moda en R
moda <- names(table(datos$canal))[which.max(table(datos$canal))]
datos$canal[is.na(datos$canal)] <- moda
```

```python
# Imputación por moda en Python
moda = datos['canal'].mode()[0]
datos['canal'].fillna(moda, inplace=True)
```

#### 4. Imputación por KNN (K-Nearest Neighbors)
**Cuándo usar**: Cuando hay relaciones entre variables

Imputa valores basándose en los k registros más similares.

```r
# Imputación por KNN en R
library(impute)
datos_imputados <- impute.knn(as.matrix(datos))$data
```

#### 5. Imputación basada en modelos
**Cuándo usar**: Cuando existe relación predictiva entre variables

Se usa regresión o modelos machine learning para predecir valores faltantes.

```r
# Imputación por regresión lineal
modelo <- lm(ingreso ~ edad + antiguedad, data = datos_completos)
predicciones <- predict(modelo, newdata = datos_incompletos)
```

### Cuadro comparativo de métodos

| Método | Tipo de dato | Ventajas | Limitaciones |
|---|---|---|---|
| **Media** | Numérico | Simple, rápido | No considera distribución |
| **Moda** | Categórico | Conserva coherencia | No utiliza información de otros registros |
| **KNN** | Numérico | Usa información similar | Complejo, requiere datos suficientes |
| **Regresión** | Numérico | Considera relaciones | Asume relación lineal |
| **Eliminación** | Cualquier | Sin sesgo | Reduce tamaño de muestra |

---

## 4. Normalización: Z-Score y Min-Max Scaling

### ¿Qué es la normalización de datos?

Es un proceso estadístico que transforma los valores numéricos de una o más variables para que se expresen en una **escala común**, sin modificar la relación existente entre ellos.

### Por qué es importante la normalización

En análisis estadístico y data mining, la normalización es especialmente crítica cuando:
- Se trabaja con variables medidas en **diferentes unidades** (ingresos, edades, cantidades)
- Se aplican modelos que son sensibles a la escala (distancias, regresión, clustering)
- Se comparan variables de magnitudes muy distintas

**Sin normalización**: Variables con magnitudes mayores dominarían el análisis y influirían de manera desproporcionada.

### Proceso general de normalización

```
┌─────────────────────────────────────────────────────────────┐
│              PROCESO DE NORMALIZACIÓN                       │
├─────────────────────────────────────────────────────────────┤
│                                                              │
│  1. IDENTIFICACIÓN DE VARIABLES CON DIFERENTES ESCALAS       │
│     Detectar variables cuyos valores están en magnitudes    │
│     muy distintas (ej: ingresos en miles, edades en años)   │
│                ↓                                             │
│  2. SELECCIÓN DEL MÉTODO DE NORMALIZACIÓN ADECUADO           │
│     Elegir entre z-score o min-max según objetivo           │
│                ↓                                             │
│  3. APLICACIÓN DE LA TRANSFORMACIÓN MATEMÁTICA               │
│     Realizar el cálculo para transformar los valores         │
│                ↓                                             │
│  4. VERIFICACIÓN E INTERPRETACIÓN                            │
│     Comprobar que datos normalizados sean coherentes         │
│                                                              │
└─────────────────────────────────────────────────────────────┘
```

### Método 1: Normalización mediante Z-Score (Estandarización Estadística)

#### Definición

La normalización mediante **z-score** transforma los valores de una variable numérica considerando su **media** y su **desviación estándar**.

**Fórmula**:
$$z = \frac{x - \mu}{\sigma}$$

Donde:
- $x$ = valor original
- $\mu$ = media
- $\sigma$ = desviación estándar
- $z$ = valor normalizado (z-score)

#### Interpretación de valores z-score

| Valor z-score | Interpretación |
|---|---|
| $z = 0$ | El dato es igual al promedio |
| $z > 0$ | El dato está **por encima** del promedio |
| $z < 0$ | El dato está **por debajo** del promedio |
| $\|z\| \geq 2$ | El dato puede considerarse **atípico o inusual** |

#### Ejemplo práctico: Análisis de desempeño de ventas

Una empresa registra ventas mensuales con:
- Promedio de ventas: **S/10,000**
- Desviación estándar: **S/2,000**

**Si un mes registra S/14,000 en ventas**:

$$z = \frac{14,000 - 10,000}{2,000} = \frac{4,000}{2,000} = 2.0$$

**Interpretación**: Este mes tuvo un desempeño **2 desviaciones estándar por encima del promedio**. Es decir, un desempeño significativamente superior (puede deberse a campaña exitosa, temporada alta, evento extraordinario).

**Si otro mes registra S/7,000**:

$$z = \frac{7,000 - 10,000}{2,000} = \frac{-3,000}{2,000} = -1.5$$

**Interpretación**: Este mes estuvo **1.5 desviaciones por debajo del promedio**. Es un desempeño inferior al habitual.

#### Aplicaciones del z-score

```
Sector Finanzas
├─ Detección de ingresos o costos anormalmente altos o bajos
├─ Identificación de transacciones fraudulentas
└─ Análisis de volatilidad en mercados

Sector Marketing
├─ Identificación de clientes con consumo fuera del patrón
├─ Detección de anomalías en comportamiento de compra
└─ Segmentación por desviación del promedio

Sector Administración
├─ Análisis del desempeño mensual de indicadores clave (KPI)
├─ Comparación objetiva de áreas de negocio
└─ Evaluación de rendimiento

Ciencia de Datos
├─ Preparación de variables para modelos estadísticos
├─ Modelos de machine learning sensibles a escala
└─ Detección de anomalías automática
```

#### Implementación en R

```r
# Datos de ventas mensuales
ventas <- c(8000, 9500, 10200, 11800, 10000, 9200, 13500, 10100, 9800, 10500)

# Cálculo de media y desviación estándar
media <- mean(ventas)           # 10,263
desv_std <- sd(ventas)          # 1,595

# Normalización por z-score
z_scores <- (ventas - media) / desv_std

# Resultados
data.frame(ventas, z_scores)
#   ventas    z_scores
#     8000    -1.42
#     9500    -0.48
#    10200    -0.04
#    11800     0.97
#    10000    -0.16
#     9200    -0.67
#    13500     2.05  (valor atípico)
#    10100    -0.10
#     9800    -0.29
#    10500     0.14

# Identificación de valores atípicos (|z| >= 2)
valores_atipicos <- ventas[abs(z_scores) >= 2]
# [1] 13500
```

#### Implementación en Python

```python
import numpy as np
import pandas as pd

# Datos de ventas
ventas = np.array([8000, 9500, 10200, 11800, 10000, 9200, 13500, 10100, 9800, 10500])

# Cálculo de media y desviación estándar
media = np.mean(ventas)         # 10,263
desv_std = np.std(ventas)       # 1,595

# Normalización por z-score
z_scores = (ventas - media) / desv_std

# Crear DataFrame para visualizar resultados
df = pd.DataFrame({'ventas': ventas, 'z_score': z_scores})
print(df)

# Identificación de atípicos (|z| >= 2)
atipicos = ventas[np.abs(z_scores) >= 2]
print(f"Valores atípicos: {atipicos}")  # [13500]
```

### Método 2: Normalización mediante Min-Max Scaling

#### Definición

La normalización mediante **min-max scaling** transforma los valores de una variable para que se encuentren dentro de un **rango específico, generalmente entre 0 y 1**.

**Fórmula**:
$$x_{norm} = \frac{x - x_{min}}{x_{max} - x_{min}}$$

Donde:
- $x$ = valor original
- $x_{min}$ = valor mínimo en el conjunto
- $x_{max}$ = valor máximo en el conjunto
- $x_{norm}$ = valor normalizado

#### Ventajas respecto a z-score

- Los valores siempre están entre 0 y 1
- La interpretación es intuitiva
- No usa media ni desviación estándar (mejor para distribuciones no normales)
- Conserva la proporción entre datos originales

#### Interpretación de valores normalizados

| Valor normalizado | Interpretación |
|---|---|
| Cercano a **0** | Desempeño **bajo** dentro del conjunto |
| Cercano a **0.5** | Desempeño **promedio** relativo |
| Cercano a **1** | Desempeño **alto** dentro del conjunto |

#### Ejemplo práctico: Comparación de desempeño

La empresa registra ventas mensuales:
- Venta **mínima**: S/5,000
- Venta **máxima**: S/20,000

**Si en un mes las ventas fueron de S/12,500**:

$$x_{norm} = \frac{12,500 - 5,000}{20,000 - 5,000} = \frac{7,500}{15,000} = 0.5$$

**Interpretación**: Este mes tuvo un desempeño **medio (0.5)** en comparación con el mejor y peor mes registrados.

**Si en otro mes las ventas fueron de S/17,500**:

$$x_{norm} = \frac{17,500 - 5,000}{20,000 - 5,000} = \frac{12,500}{15,000} = 0.833$$

**Interpretación**: Este mes estuvo en el **83.3% del desempeño máximo** del rango.

#### Implementación en R

```r
# Datos de ventas
ventas <- c(5000, 8000, 10000, 12500, 15000, 17500, 20000)

# Min-Max Scaling
min_val <- min(ventas)           # 5000
max_val <- max(ventas)           # 20000
ventas_normalizadas <- (ventas - min_val) / (max_val - min_val)

# Resultados
data.frame(ventas, ventas_normalizadas)
#   ventas normalizadas
#     5000      0.000
#     8000      0.200
#    10000      0.333
#    12500      0.500
#    15000      0.667
#    17500      0.833
#    20000      1.000
```

#### Implementación en Python

```python
import numpy as np

# Datos de ventas
ventas = np.array([5000, 8000, 10000, 12500, 15000, 17500, 20000])

# Min-Max Scaling
min_val = ventas.min()           # 5000
max_val = ventas.max()           # 20000
ventas_normalizadas = (ventas - min_val) / (max_val - min_val)

# Crear DataFrame
import pandas as pd
df = pd.DataFrame({
    'ventas': ventas,
    'normalizadas': ventas_normalizadas
})
print(df)
```

### Comparación: Z-Score vs Min-Max Scaling

| Aspecto | Z-Score | Min-Max Scaling |
|---|---|---|
| **Rango** | $(-\infty, +\infty)$ | [0, 1] |
| **Fórmula** | $\frac{x - \mu}{\sigma}$ | $\frac{x - x_{min}}{x_{max} - x_{min}}$ |
| **Preserva forma** | Sí | Sí |
| **Sensible a outliers** | Moderadamente | Muy sensible |
| **Uso ideal** | Datos normalmente distribuidos | Rangos conocidos |
| **Interpretación** | Desviaciones estándar | Proporción del rango |
| **Aplicación común** | ML, estadística | Redes neuronales, normalización |

---

## 5. Estandarización: Formatos Consistentes de Datos

### ¿Qué es la estandarización de datos?

Es el proceso mediante el cual se **unifican los formatos, estructuras, unidades de medida, nombres y reglas de registro** de los datos, con el objetivo de que toda la información de una organización siga **criterios comunes y coherentes**.

**Nota importante**: No se refiere solo a "dar formato", sino a **definir normas claras** de cómo deben capturarse, almacenarse y usarse los datos.

### Preguntas clave que responde la estandarización

```
¿Cómo se escribirán las fechas?
  → dd/mm/aaaa, mm/dd/aaaa, aaaa-mm-dd, o ISO 8601?

¿Qué moneda será la oficial?
  → S/, USD, EUR? ¿Con conversión automática?

¿Mayúsculas o minúsculas en nombres?
  → Todos en mayúsculas, título, minúsculas?

¿Cómo se codificarán productos, clientes, países?
  → Códigos alfanuméricos, numéricos, con prefijo?

¿Qué separador decimal se utilizará?
  → Coma (,) o punto (.)?

¿Cómo se escribirán las direcciones?
  → Completas, abreviadas, normalizadas?
```

### Consecuencias de NO estandarizar

```
❌ Texto inflado o redundante
❌ Sistemas no se "entienden" entre sí
❌ Errores en reportes consolidados
❌ Integración de bases de datos fallida
❌ Interpretaciones incorrectas de los datos
❌ Automatización imposible
❌ Auditorías complicadas
```

### Beneficios de la estandarización

✅ Reduce errores humanos y operativos  
✅ Facilita la integración de información de múltiples áreas  
✅ Permite automatizar reportes y tableros de control  
✅ Mejora la calidad y confiabilidad del análisis estadístico  
✅ Agiliza auditorías y procesos contables  
✅ Evita interpretaciones incorrectas de los datos  

### Proceso general de estandarización de datos

```
┌──────────────────────────────────────────────────────────────────────┐
│                 PROCESO DE ESTANDARIZACIÓN DE DATOS                  │
├──────────────────────────────────────────────────────────────────────┤
│                                                                       │
│ FASE 1: DIAGNÓSTICO                                                  │
│ ├─ Identificar distintos formatos existentes                         │
│ ├─ Detectar inconsistencias (fechas, unidades, nombres, duplicidad) │
│ └─ Revisar fuentes: Excel, SQL, sistemas transaccionales             │
│         ↓                                                             │
│ FASE 2: DEFINICIÓN DE ESTÁNDARES                                     │
│ ├─ Elegir formatos oficiales (moneda, fecha, nomenclaturas)          │
│ ├─ Establecer políticas y manuales de registro                       │
│ └─ Definir diccionario de datos                                      │
│         ↓                                                             │
│ FASE 3: UNIFICACIÓN Y CORRECCIÓN                                     │
│ ├─ Transformar los datos existentes al nuevo estándar                │
│ ├─ Convertir unidades (kg → g, dólares → soles, etc.)                │
│ └─ Corregir nombres y códigos                                        │
│         ↓                                                             │
│ FASE 4: VALIDACIÓN                                                   │
│ ├─ Verificar coherencia y ausencia de duplicados                     │
│ └─ Aplicar reglas de validación automática                           │
│         ↓                                                             │
│ FASE 5: DOCUMENTACIÓN Y MANTENIMIENTO                                │
│ ├─ Crear lineamientos y "buenas prácticas"                           │
│ ├─ Capacitar al personal que registra información                    │
│ └─ Auditar periódicamente los datos                                  │
│                                                                       │
└──────────────────────────────────────────────────────────────────────┘
```

### Ejemplo práctico: Comercial Andina SA

**Contexto**: Cadena peruana de tiendas que opera en Lima, Arequipa y Trujillo. Cada sede registra ventas en Excel diferente. Al integrar para reporte nacional, se detectan inconsistencias graves.

#### Problemas identificados

**1. Formatos distintos de fecha**:
```
Lima:     dd/mm/aaaa  (15/05/2024)
Arequipa: mm-dd-aaaa  (05-15-2024)
Trujillo: aaaa/mm/dd  (2024/05/15)
```

**2. Moneda diferente**:
```
Lima:     S/ (soles)
Arequipa: USD (dólares)
Trujillo: S/, (con coma como separador)
```

**3. Codificación desigual de productos**:
```
TV-42"
tv_42
TELEVISOR42
```

#### Impacto de la falta de estandarización

- Errores en reportes de ventas: duplicados, pérdida de datos
- Cálculos de KPI incorrectos
- Retrasos en cierres mensuales
- Imposibilidad de automatizar reportes

#### Solución propuesta

**Estándares implementados**:

| Aspecto | Estándar elegido |
|---|---|
| **Formato de fecha** | ISO 8601: **aaaa-mm-dd** (2024-05-15) |
| **Moneda oficial** | **Soles (S/)**, conversión automática desde USD |
| **Catálogo de productos** | Código único alfanumérico (ej: TV-42PULG) |
| **Escritura de texto** | Mayúsculas sin tildes |
| **Separador decimal** | Punto (.) en lugar de coma |
| **Validación** | Automática antes de consolidar datos |

#### Impacto esperado tras estandarización

✅ Reducción del 35% en errores de integración  
✅ Generación de reportes en menor tiempo  
✅ Decisiones comerciales más confiables  
✅ Base limpia para análisis estadístico y modelos de demanda  

### Ejemplo con resolución completa en R

#### Datos iniciales (inconsistentes)

```r
datos <- data.frame(
  fecha = c("03/05/2024", "05-03-2024", "2024/03/05"),
  monto = c(1200, 350, 500),
  moneda = c("S/", "USD", "S/"),
  cliente = c("Juan Pérez", "JUAN PEREZ", "J. Perez")
)

print(datos)
#        fecha monto moneda cliente
# 1 03/05/2024  1200     S/ Juan Pérez
# 2 05-03-2024   350    USD JUAN PEREZ
# 3 2024/03/05   500     S/    J. Perez
```

#### Proceso de estandarización en R

```r
library(dplyr)
library(stringr)
library(lubridate)

# Tipo de cambio
tc <- 3.80

# Proceso de estandarización
datos_std <- datos %>%
  # Convertir fechas a formato único
  mutate(
    fecha = case_when(
      grepl("/", fecha) & !grepl("-", fecha) ~ dmy(fecha),
      grepl("-", fecha) ~ mdy(fecha),
      grepl("/", fecha) ~ ymd(fecha),
      TRUE ~ NA_Date_
    ),
    fecha = as.Date(fecha)
  ) %>%
  # Convertir moneda a soles
  mutate(
    monto_soles = ifelse(moneda == "USD", monto * tc, monto)
  ) %>%
  # Estandarizar nombres de clientes
  mutate(
    cliente_std = str_to_upper(cliente),
    cliente_std = str_replace_all(cliente_std, "[[:punct:]]", ""),
    cliente_std = str_squish(cliente_std)
  ) %>%
  # Mantener solo columnas estandarizadas
  select(fecha, monto_soles, cliente_std)

print(datos_std)
#        fecha monto_soles cliente_std
# 1 2024-05-03        1200    JUAN PEREZ
# 2 2024-03-05        1330    JUAN PEREZ
# 3 2024-03-05         500    J PEREZ

# Detectar duplicados
print(duplicated(datos_std[, c("cliente_std")]))
# [1] FALSE  TRUE  TRUE
```

#### Resultado final estandarizado

```r
datos_final <- data.frame(
  fecha = as.Date(c("2024-05-03", "2024-03-05", "2024-03-05")),
  monto_soles = c(1200, 1330, 500),
  cliente = c("JUAN PEREZ", "JUAN PEREZ", "J PEREZ")
)

print(datos_final)
#        fecha monto_soles cliente
# 1 2024-05-03        1200 JUAN PEREZ
# 2 2024-03-05        1330 JUAN PEREZ
# 3 2024-03-05         500   J PEREZ
```

### Ejemplo con resolución completa en Python

#### Datos iniciales (inconsistentes)

```python
import pandas as pd

datos = pd.DataFrame({
    "fecha": ["03/05/2024", "05-03-2024", "2024/03/05"],
    "monto": [1200, 350, 500],
    "moneda": ["S/", "USD", "S/"],
    "cliente": ["Juan Pérez", "JUAN PEREZ", "J. Perez"]
})

print(datos)
#        fecha  monto moneda     cliente
# 0 03/05/2024   1200     S/   Juan Pérez
# 1 05-03-2024    350    USD  JUAN PEREZ
# 2 2024/03/05    500     S/    J. Perez
```

#### Proceso de estandarización en Python

```python
import pandas as pd
import numpy as np

tc = 3.80  # Tipo de cambio

# Convertir fechas a un formato único (ISO 8601)
def parse_fecha(fecha_str):
    fecha_str = str(fecha_str).strip()
    # Intentar distintos formatos
    for fmt in ["%d/%m/%Y", "%m-%d-%Y", "%Y/%m/%d", "%Y-%m-%d"]:
        try:
            return pd.to_datetime(fecha_str, format=fmt)
        except:
            continue
    return pd.NaT

datos["fecha"] = datos["fecha"].apply(parse_fecha)

# Convertir montos a soles
datos["monto_soles"] = datos.apply(
    lambda x: x["monto"] * tc if x["moneda"] == "USD" else x["monto"],
    axis=1
)

# Estandarizar nombres de clientes
datos["cliente_std"] = (
    datos["cliente"]
    .str.upper()                              # Mayúsculas
    .str.replace(r"[^\w\s]", "", regex=True) # Remover caracteres especiales
    .str.replace("\s+", " ", regex=True)     # Espacios múltiples a uno
    .str.strip()                              # Eliminar espacios al inicio/final
)

# Mantener solo columnas estandarizadas
datos_std = datos[["fecha", "monto_soles", "cliente_std"]].copy()

print(datos_std)
#        fecha  monto_soles cliente_std
# 0 2024-05-03         1200   JUAN PEREZ
# 1 2024-03-05         1330   JUAN PEREZ
# 2 2024-03-05          500     J PEREZ

# Identificar posibles duplicados
print("\nClientes duplicados:")
print(datos_std[datos_std.duplicated(subset=["cliente_std"], keep=False)])
#        fecha  monto_soles cliente_std
# 0 2024-05-03         1200   JUAN PEREZ
# 1 2024-03-05         1330   JUAN PEREZ
```

#### Resultado final

```python
# Alternativa: Consolidar duplicados
consolidado = datos_std.groupby("cliente_std").agg({
    "monto_soles": "sum",
    "fecha": "first"
}).reset_index()

print("Datos consolidados:")
print(consolidado)
#   cliente_std  monto_soles      fecha
# 0   J PEREZ          500 2024-03-05
# 1  JUAN PEREZ        2530 2024-05-03
```

### Lección clave

La **estandarización no trata solo de "dar formato"**, sino de crear **reglas consistentes de registro y uso de datos** para garantizar que toda la organización hable el mismo idioma informacional.

---

## Resumen de la Clase 6

### Conceptos clave

| Fase | Objetivo | Técnicas principales |
|---|---|---|
| **Limpieza** | Eliminar ruido y errores | IQR, boxplot, validación de rangos |
| **Transformación** | Convertir formatos | Codificación, escalado |
| **Manejo de faltantes** | Completar datos | Imputación (media, moda, KNN), eliminación |
| **Normalización** | Escala común | Z-score, min-max scaling |
| **Estandarización** | Criterios uniformes | Formatos, unidades, nomenclaturas |

### Checklist de preparación de datos

- [ ] ¿Se han identificado y corregido valores fuera de rango?
- [ ] ¿Se han eliminado registros duplicados?
- [ ] ¿Se han detectado valores atípicos (outliers)?
- [ ] ¿Se han manejado los datos faltantes adecuadamente?
- [ ] ¿Las variables numéricas están en escala comparable?
- [ ] ¿Los formatos de fecha, moneda y texto son uniformes?
- [ ] ¿Se han documentado todas las transformaciones realizadas?
- [ ] ¿La base de datos está lista para análisis estadístico?

### Importancia de esta etapa

La preparación de datos **consume entre el 60-80% del tiempo** en proyectos de data mining y ciencia de datos. Una preparación rigurosa garantiza:

✅ **Análisis confiables**  
✅ **Modelos predictivos precisos**  
✅ **Decisiones empresariales sólidas**  
✅ **Reducción de errores operativos**  

---

**Fuente**: Análisis Estadístico y Data Mining — Clase 6 — ISIL 2026-1
