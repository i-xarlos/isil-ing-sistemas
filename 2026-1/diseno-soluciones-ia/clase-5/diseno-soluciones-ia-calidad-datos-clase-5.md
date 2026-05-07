# Calidad de Datos (Clase 5)

**Curso:** Diseño de Soluciones con Inteligencia Artificial (ISIL, 2026-1)  
**Docente:** [Pendiente]  
**Fecha:** [Pendiente]

---

## Introducción

La calidad de datos es un factor crítico para el éxito de soluciones IA. Datos incorrectos o incompletos generan resultados erróneos o sesgados que invalidan el análisis.

**Regla clave:** Hasta el 80% del tiempo en un proyecto de análisis se dedica a la limpieza de datos, no al modelado.

Los cuatro problemas principales que abordaremos son:
- Datos nulos
- Outliers
- Formatos incorrectos
- Normalización

---

## 1. Datos Nulos

### Qué son

Los datos nulos son **valores faltantes o no registrados** dentro de un dataset. Se representan como `NaN`, `None`, `NULL` o campos vacíos.

### Por qué importan

- **Riesgo principal:** Muchos modelos y algoritmos no aceptan datos con valores nulos.
- **Impacto:** Hasta el 80% del tiempo de análisis se destina a tratarlos.
- **Resultado:** Análisis invalido o entrenamiento fallido.

### Causas habituales

| Causa | Ejemplo |
|---|---|
| Errores en recolección | Sensor que no registra temperatura |
| Fallas de hardware | Caída del servidor durante captura |
| Información incompleta | Cliente que no ingresa su teléfono |
| Privacidad | Campo omitido deliberadamente |

### Estrategias de manejo

#### 1. Eliminación (Dropping)
Rápida pero riesgosa: se pierden filas o columnas.

**Cuándo usar:**
- Menos del 5% de los datos son nulos
- El patrón de ausencia es aleatorio
- La fila o columna no aporta información crítica

**Riesgo:**
- Pérdida de información valiosa
- Sesgo en el análisis

#### 2. Imputación (Filling)
Estrategia preferida: reemplaza valores nulos por estimaciones informadas.

**Métodos:**

| Método | Fórmula | Cuándo usar | Ventaja | Desventaja |
|---|---|---|---|---|
| **Media** | Promedio de valores | Variables numéricas normales | Rápido, simple | Sensible a outliers |
| **Mediana** | Valor central | Variables con outliers | Robusta | Menos eficiente |
| **Moda** | Valor más frecuente | Variables categóricas | Lógico | Pierde variabilidad |
| **KNN** | Vecinos más cercanos | Datos con patrón espacial | Contextual | Computacionalmente costoso |
| **Modelo predictivo** | Regresión/clasificación | Relaciones complejas | Preciso | Requiere entrenamiento |

### Patrones de ausencia

Es crítico entender **por qué faltan los datos** antes de imputar.

#### 1. MCAR (Missing Completely At Random)
- La ausencia no tiene patrón ni relación con otras variables
- Imputación es relativamente segura
- Introduce poco sesgo

**Ejemplo:** Algunos sensores fallan aleatoriamente sin razón aparente

#### 2. MAR (Missing At Random)
- La ausencia está relacionada con otras variables observadas
- Requiere análisis previo para elegir estrategia adecuada
- Puede sesgar si no se trata bien

**Ejemplo:** Personas con ingresos bajos tienden a no reportar su salario, pero el ingreso se relaciona con otras variables

#### 3. MNAR (Missing Not At Random)
- La omisión depende del valor faltante o de decisiones intencionales
- Es indispensable incorporar contexto y supuestos
- Riesgo más alto de sesgo

**Ejemplo:** Pacientes con enfermedad grave no completan encuestas médicas

### Código práctico (Pandas)

```python
import pandas as pd
import numpy as np
from sklearn.impute import KNNImputer

# Crear datos con nulos
df = pd.DataFrame({
    'edad': [25, np.nan, 35, 28, np.nan, 40],
    'salario': [3000, 3500, np.nan, 2800, 3200, np.nan],
    'experiencia': [2, 3, 5, np.nan, 4, 7]
})

print("Datos originales:\n", df)
print("\nValores nulos por columna:\n", df.isnull().sum())

# Opción 1: Eliminar filas con nulos
df_dropped = df.dropna()
print("\nDespués de eliminar nulos:\n", df_dropped)

# Opción 2: Imputación con media
df_media = df.fillna(df.mean())
print("\nImpuación con media:\n", df_media)

# Opción 3: Imputación con KNN
imputer = KNNImputer(n_neighbors=2)
df_knn = pd.DataFrame(
    imputer.fit_transform(df),
    columns=df.columns
)
print("\nImpuación con KNN:\n", df_knn)

# Mejor práctica: Intentar conversión con manejo de errores
try:
    df['edad'] = pd.to_numeric(df['edad'], errors='coerce')
except Exception as e:
    print(f"Error en conversión: {e}")
```

### Mejor práctica

1. **Analiza el contexto:** ¿Por qué faltan estos datos?
2. **Elige la estrategia:** Eliminación, imputación o investigación
3. **Documenta la decisión:** Justifica por qué elegiste ese método

---

## 2. Outliers

### Qué son

**Outliers** son valores que se desvían significativamente del patrón normal. La pregunta clave es: **¿error o información valiosa?**

### Ejemplos fáciles de identificar

| Caso | Valor | Razón |
|---|---|---|
| Edad | 250 años | Imposible |
| Salario | -US$1,000,000 | Negativo |
| Temperatura | 500°C en oficina | Ilógico |
| Compra | US$1,000,000 en compra promedio | Extremo |

### Impacto

- **En la media:** Pueden arruinar promedios (ej. salario promedio inflado por millonario)
- **En correlaciones:** Sesgan relaciones entre variables
- **En modelos:** Distorsionan el aprendizaje

### Casos donde los outliers son valiosos

- **Detección de fraude:** Transacción de US$100,000 a las 3 AM
- **Anomalías médicas:** Presión arterial 300/200
- **Ciberataques:** 10,000 intentos de login en 1 minuto

### Tipos de outliers

#### 1. Global Outliers
Observaciones con desviación extrema respecto a todo el dataset.

**Ejemplo:** Tienda que vende 10,000 unidades cuando el promedio es 500

#### 2. Local Outliers
Parecen normales a nivel global, pero son anómalos en su vecindad.

**Ejemplo:** Tienda con ventas bajas en un barrio de alto poder adquisitivo

#### 3. Collective Outliers
Conjuntos de observaciones que forman una anomalía.

**Ejemplo:** Spike inusual en ventas durante una semana (pero es por promoción especial)

### Métodos de detección

| Método | Fórmula/Descripción | Ventaja | Desventaja |
|---|---|---|---|
| **Desviación Estándar** | Si $\|x - \mu\| > 3\sigma$ → outlier | Simple, rápido | Sensible a outliers mismos |
| **Rango Intercuartílico (IQR)** | Si $x > Q3 + 1.5 \times IQR$ → outlier | Robusto | Depende de definición |
| **Z-Score** | Si $\|Z\| > 3$ donde $Z = \frac{x-\mu}{\sigma}$ | Estandarizado | Asume distribución normal |
| **Isolation Forest** | Aisla anómalos mediante árboles aleatorios | Eficiente en alta dimensión, detecta locales | Parámetro sensible |

### Isolation Forest (Recomendado para IA)

**Ventajas:**
- Complejidad casi lineal O(n) → alto rendimiento
- No requiere cálculo de distancias pairwise
- Escalable en espacios de alta dimensionalidad
- Capaz de detectar outliers globales y locales

**Cómo funciona:**
1. Construye árboles aleatorios
2. Los outliers requieren menos particiones para ser aislados
3. Presentan caminos más cortos en los árboles

### Código práctico

```python
import pandas as pd
import numpy as np
from sklearn.ensemble import IsolationForest
from scipy import stats

# Crear datos con outliers
np.random.seed(42)
data = np.random.normal(100, 15, 100)
data = np.append(data, [250, 260, -50])  # Outliers agregados

df = pd.DataFrame({'valor': data})

# Método 1: Desviación estándar (3-sigma)
media = df['valor'].mean()
std = df['valor'].std()
outliers_3sigma = df[(df['valor'] > media + 3*std) | (df['valor'] < media - 3*std)]
print("Outliers por 3-sigma:\n", outliers_3sigma)

# Método 2: IQR
Q1 = df['valor'].quantile(0.25)
Q3 = df['valor'].quantile(0.75)
IQR = Q3 - Q1
outliers_iqr = df[(df['valor'] > Q3 + 1.5*IQR) | (df['valor'] < Q1 - 1.5*IQR)]
print("\nOutliers por IQR:\n", outliers_iqr)

# Método 3: Isolation Forest (RECOMENDADO)
iso_forest = IsolationForest(contamination=0.05, random_state=42)
df['outlier'] = iso_forest.fit_predict(df[['valor']])
print("\nOutliers por Isolation Forest:\n", df[df['outlier'] == -1])
```

### ¿Qué hacer con outliers?

#### Opción 1: Eliminar
Se aplica con cautela, ya que puede implicar pérdida de información crítica.

**Cuándo:** Errores de entrada definitivos o datos corruptos

```python
df_sin_outliers = df[df['outlier'] != -1]
```

#### Opción 2: Transformar/Suavizar
Ajusta valores extremos sin perderlos.

**Técnicas:**
- **Winsorization:** Reemplaza extremos con percentil 95 o 5
- **Log transformation:** Comprime rango
- **Forward fill (series temporales):** Propaga último valor válido

```python
# Winsorization
from scipy.stats import mstats
df['valor_winsorizado'] = mstats.winsorize(df['valor'], limits=0.05)
```

#### Opción 3: Investigar y estimar
Enfoque más riguroso: analiza la causa.

**Métodos:**
- Vecinos más cercanos (KNN)
- Modelos específicos para estimar el valor real

---

## 3. Formatos Incorrectos

### Qué son

Datos almacenados en formato inadecuado o inconsistente que previene análisis correcto.

### Tipos de errores

| Tipo | Problema | Ejemplo |
|---|---|---|
| **Tipo de dato incorrecto** | Variable almacenada como texto | Edad como "25" (string) en lugar de 25 (número) |
| **Formato inconsistente** | Misma variable, diferentes formatos | Fechas: "01/01/2024", "2024-01-01", "1 ene 2024" |
| **Valores fuera de límites** | Datos ilógicos | Edad negativa, porcentaje > 100% |
| **Espacios y caracteres** | Ruido en datos de texto | "Juan " vs " Juan", " juan" |
| **Duplicados lógicos** | Mismo concepto, escritura diferente | "Juan" y "juan" como personas distintas |
| **Registros duplicados con inconsistencia** | Mismo ID, información diferente | Cliente 123: email1@hotmail.com y email2@gmail.com |

### Conversión de tipos (Type Casting)

**Problema:** DataFrame carga edad como string → imposible hacer cálculos.

```python
import pandas as pd

df = pd.DataFrame({
    'edad': ['25', '30', 'treinta', '35'],
    'salario': ['3000', '3500', 'N/A', '2800']
})

# Conversión básica
try:
    df['edad'] = df['edad'].astype(int)
except ValueError as e:
    print(f"Error: {e}")

# Conversión segura con try-except
def convertir_seguro(valor):
    try:
        return int(valor)
    except (ValueError, TypeError):
        return None

df['edad'] = df['edad'].apply(convertir_seguro)
print(df)

# Conversión con coerce (reemplaza inválidos por NaN)
df['edad'] = pd.to_numeric(df['edad'], errors='coerce')
```

### Limpieza y normalización de texto

Prepara datos de texto para análisis consistente.

| Operación | Método Python | Propósito |
|---|---|---|
| **Espacios** | `str.strip()` | Elimina espacios inicio/final |
| **Mayúscula** | `str.lower()` | Estandariza a minúsculas |
| **Acentos** | `str.normalize('NFKD').encode('ascii','ignore').decode()` | Remueve acentos si no son necesarios |
| **Caracteres especiales** | `str.replace()` o regex | Elimina símbolos no alfanuméricos |
| **Duplicados** | Detecta "Juan" y "juan" como mismo valor | Normaliza antes de agrupar |

```python
import pandas as pd
import re
import unicodedata

df = pd.DataFrame({
    'nombre': ['  Juan García  ', 'MARÍA López', 'josé', 'PEDRO']
})

def limpiar_texto(texto):
    # 1. Eliminar espacios
    texto = texto.strip()
    # 2. Convertir a minúsculas
    texto = texto.lower()
    # 3. Remover acentos
    texto = unicodedata.normalize('NFKD', texto)
    texto = texto.encode('ascii', 'ignore').decode('utf-8')
    # 4. Eliminar caracteres especiales
    texto = re.sub(r'[^a-z0-9\s]', '', texto)
    return texto

df['nombre_limpio'] = df['nombre'].apply(limpiar_texto)
print(df)
```

### Validación de rangos y restricciones

Asegura que datos cumplan límites lógicos.

```python
import pandas as pd

df = pd.DataFrame({
    'edad': [25, 150, 35, 28, -5, 40],
    'email': ['juan@gmail.com', 'invalid', 'maria@outlook.com', 'pedro@gmail', 'otro@ok.com', 'last@net.com'],
    'telefono': ['5551234567', '123', '5559876543', '555', '5551111111', 'abc']
})

# Validar edad
def validar_edad(edad):
    return 0 <= edad <= 120

# Validar email
def validar_email(email):
    return '@' in email and '.' in email

# Validar teléfono
def validar_telefono(tel):
    return len(str(tel)) == 10 and str(tel).isdigit()

df['edad_valida'] = df['edad'].apply(validar_edad)
df['email_valido'] = df['email'].apply(validar_email)
df['tel_valido'] = df['telefono'].apply(validar_telefono)

# Reemplazar inválidos
df.loc[~df['edad_valida'], 'edad'] = None
df.loc[~df['email_valido'], 'email'] = None
df.loc[~df['tel_valido'], 'telefono'] = None

print(df)
```

### Estandarización: Formatos consistentes

Un solo formato garantiza análisis sin errores.

```python
import pandas as pd

# Problema: fechas inconsistentes
df = pd.DataFrame({
    'fecha': ['01/01/2024', '2024-01-01', '1 ene 2024', '01-01-2024']
})

# Solución: convertir a datetime, luego a formato único
df['fecha_std'] = pd.to_datetime(df['fecha'], format='mixed', dayfirst=True)
df['fecha_formato'] = df['fecha_std'].dt.strftime('%Y-%m-%d')
print(df)
```

---

## 4. Normalización

### ¿Por qué normalizar?

Las variables con **rangos muy distintos** pueden sesgar o confundir a los algoritmos.

**Ejemplo:**
- Edad: 0–100
- Salario: 0–10,000,000

Un algoritmo basado en distancia pensaría que el salario es 100,000 veces más importante.

### Cuándo es crítico

- **Algoritmos basados en distancia:** KNN, K-means
- **Algoritmos con gradiente:** Redes neuronales, regresión logística
- **Algoritmos de regularización:** Ridge, Lasso

### Impacto

- **Mejora convergencia:** El modelo se entrena más rápido
- **Acelera entrenamiento:** Especialmente en redes neuronales
- **Evita dominio:** Variables no abruman a otras

### Técnicas principales

#### 1. Min-Max Normalization (Escalado a [0, 1])

**Fórmula:** $x_{norm} = \frac{x - min}{max - min}$

**Características:**
- Rango conocido [0, 1]
- Sensible a outliers
- Conserva la distribución

```python
# Ejemplo: salario $1,000 a $100,000
min_sal = 1000
max_sal = 100000
salario = 25000

salario_norm = (salario - min_sal) / (max_sal - min_sal)
print(f"Salario normalizado: {salario_norm}")  # 0.2667
```

#### 2. Estandarización (Z-Score)

**Fórmula:** $z = \frac{x - \mu}{\sigma}$

Donde $\mu$ es la media y $\sigma$ es la desviación estándar.

**Características:**
- Media = 0, desviación estándar = 1
- Más robusta frente a outliers
- Rango infinito

```python
# Ejemplo: edad con media 35 y desviación 10
edad = 45
media = 35
std = 10

z_score = (edad - media) / std
print(f"Z-score: {z_score}")  # 1.0
# Significa que está 1 desviación estándar arriba de la media
```

### Código práctico con Sklearn

```python
import pandas as pd
import numpy as np
from sklearn.preprocessing import MinMaxScaler, StandardScaler

# Datos originales
df = pd.DataFrame({
    'edad': [25, 35, 45, 55, 65],
    'salario': [30000, 50000, 70000, 90000, 150000],
    'experiencia': [2, 5, 8, 12, 20]
})

print("Datos originales:\n", df)
print("\nRangos originales:")
print(df.describe())

# Min-Max Scaling
scaler_minmax = MinMaxScaler()
df_minmax = pd.DataFrame(
    scaler_minmax.fit_transform(df),
    columns=df.columns
)
print("\nMin-Max Scaling [0, 1]:\n", df_minmax)

# Estandarización (Z-Score)
scaler_std = StandardScaler()
df_std = pd.DataFrame(
    scaler_std.fit_transform(df),
    columns=df.columns
)
print("\nEstandarización (Z-Score):\n", df_std)
print("\nMedia y desviación estándar después:")
print(df_std.describe())
```

### Resumen: 4 Técnicas esenciales

| Técnica | Cuándo usar | Ventaja |
|---|---|---|
| **Eliminar nulos** | < 5% de datos | Rápido, simple |
| **Detectar outliers** | Antes de modelar | Evita sesgo |
| **Limpiar formatos** | Siempre | Garantiza consistencia |
| **Normalizar** | Algoritmos sensibles a escala | Acelera y mejora modelo |

---

## Conclusiones

1. **Datos limpios → modelos más precisos y confiables**
   - La calidad de datos impacta directamente en desempeño de IA

2. **Identificar y tratar datos nulos evita pérdida de información**
   - Elige entre eliminación e imputación según contexto

3. **El análisis de outliers permite tomar decisiones informadas**
   - No son siempre errores, pueden ser fraude o anomalías valiosas

4. **Corregir formatos incorrectos garantiza consistencia**
   - Un solo formato = análisis sin errores

5. **La normalización prepara datos para análisis y modelado efectivo**
   - Acelera convergencia y evita dominancia de variables

---

## Bibliografía

Abburi, C. K. (2024). *Optimizing big data quality management for national-scale projects: Strategies and frameworks*. International Journal of Intelligent Systems and Applications in Engineering, 12(3), 7187–7196.
https://ijisae.org/index.php/IJISAE/article/view/7187

Boukerche, A., Zheng, L., & Alfandi, O. (2020). *Outlier detection: Methods, models, and classification*. ACM Computing Surveys, 53(3), Article 55.
https://doi.org/10.1145/3381028

Emmanuel, T., Maupong, T., Mpoeleng, D., Semong, T., Mphago, B., & Tabona, O. (2021). *A survey on missing data in machine learning*. Journal of Big Data, 8, Article 140.
https://doi.org/10.1186/s40537-021-00516-9

Intriago, M. G., & Cevallos, R. A. (2025). *Impacto de la normalización de datos en la precisión de modelos de aprendizaje supervisado*. RIEMAT: Revista de Investigaciones en Energía, Medio Ambiente y Tecnología, 10(2), 59–79.
https://revistas.utm.edu.ec/index.php/Riemat/article/view/7853

Kelkar, B. A. (2022). *Missing data imputation: A survey*. International Journal of Decision Support System Technology, 14(1), 1–20.
https://doi.org/10.4018/IJDSST.292446

Miao, X., Wu, Y., Chen, L., Gao, Y., & Yin, J. (2022). *An experimental survey of missing data imputation algorithms*. IEEE Transactions on Knowledge and Data Engineering, 35(7), 6630–6650.
https://doi.org/10.1109/TKDE.2022.3186498

Rodríguez González, J., & Ugalde Saborio, E. (2021). *Impacto de la estandarización y escalado: Factor para predicción de costos en proyectos a través de una red neuronal artificial*. Ingeniare. Revista Chilena de Ingeniería, 29(2), 265–275.
https://doi.org/10.4067/S0718-33052021000200265
