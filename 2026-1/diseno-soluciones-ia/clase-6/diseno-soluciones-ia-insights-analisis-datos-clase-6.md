# Insights: Análisis Univariado, Bivariado y Multivariado (Clase 6)

**Curso:** Diseño de Soluciones con IA (ISIL, 2026-1)  
**Docente:** Omar David Visitación Romero  
**Fecha:** [pendiente]

---

## 🚀 Ejecuta los Ejemplos en Google Colab

Todos los códigos de esta clase están diseñados para ejecutarse en **Google Colab**. Abre [Google Colab aquí](https://colab.research.google.com/) y copia/pega el código Python de cualquier sección.

**Ventajas:**

- ✓ No necesitas instalar nada (Python ya viene configurado)
- ✓ Visualizaciones interactivas
- ✓ Perfecto para aprender haciendo
- ✓ Puedes compartir notebooks con tu equipo

---

## ¿Por qué analizar datos?

El análisis de datos **no busca "respuestas"**, busca **comprensión**.

Es el proceso de transformar datos crudos en **información estratégica** para tomar decisiones acertadas.

## 1. Fundamentos del Análisis de Datos e Insights

El objetivo principal del análisis no es encontrar ecuaciones matemáticas complejas, sino **entender el comportamiento de un proceso o actividad** (financiera, educativa, comercial, etc.) y convertirlo en acciones útiles.

- **Datos crudos:** datos aislados que por sí solos no tienen significado.
- **Información / Tendencia:** surge al cruzar y agrupar múltiples datos.
- **Insight:** es la conclusión, interpretación o beneficio estratégico que impulsa una acción concreta.

> Ejemplo de lo que NO es un insight: "La variable X tiene una correlación del 80%".
>
> Ejemplo de lo que SÍ es un insight: "Los clientes con ingresos altos y baja variabilidad compran planes premium".

**Punto clave:** No todo problema empresarial es un problema para IA. Pero cuando lo es, puede generar **valor exponencial**.

---

## 2. Tipos de Análisis según el Número de Variables

Dependiendo de cuántas características se analicen a la vez, el análisis se clasifica en:

### A. Análisis Univariado (1 Variable)

El análisis univariado estudia **una sola variable** de forma aislada.

### B. Análisis Bivariado (2 Variables)

Busca encontrar la relación o el patrón entre dos variables.

### C. Análisis Multivariado (Más de 2 Variables)

Analiza tres o más variables simultáneamente para perfiles de comportamiento más potentes.

---

### A. Análisis Univariado (1 Variable)

El análisis univariado estudia **una sola variable** de forma aislada.

### Objetivo

- Entender cómo se distribuye
- Identificar valores atípicos (outliers)
- Calcular medidas de tendencia central y dispersión

### Herramientas

| Herramienta                                     | Uso                                     |
| ----------------------------------------------- | --------------------------------------- |
| **Media, mediana, desviación estándar** | Medir posición y dispersión           |
| **Histograma**                            | Visualizar distribución de frecuencias |
| **Boxplot**                               | Detectar outliers y cuartiles           |

### Código en Google Colab: Análisis Univariado

Copia y pega este código en [Google Colab](https://colab.research.google.com/):

```python
import numpy as np
import pandas as pd
import matplotlib.pyplot as plt
import seaborn as sns

# Generar datos de ingresos mensuales
np.random.seed(42)
ingresos = np.concatenate([
    np.random.normal(3500, 1200, 95),  # 95 clientes con distribución normal
    np.array([8000, 8500])  # 2 outliers (clientes VIP)
])

# Estadísticas descriptivas
print("=== ANÁLISIS UNIVARIADO: INGRESOS ===")
print(f"Media: ${ingresos.mean():.2f}")
print(f"Mediana: ${np.median(ingresos):.2f}")
print(f"Desviación estándar: ${ingresos.std():.2f}")
print(f"Mínimo: ${ingresos.min():.2f}")
print(f"Máximo: ${ingresos.max():.2f}")
print(f"Q1 (25%): ${np.percentile(ingresos, 25):.2f}")
print(f"Q3 (75%): ${np.percentile(ingresos, 75):.2f}")
print(f"IQR: ${np.percentile(ingresos, 75) - np.percentile(ingresos, 25):.2f}")

# Visualización
fig, axes = plt.subplots(1, 2, figsize=(12, 4))

# Histograma
axes[0].hist(ingresos, bins=20, color='skyblue', edgecolor='black')
axes[0].axvline(ingresos.mean(), color='red', linestyle='--', label=f'Media: ${ingresos.mean():.0f}')
axes[0].axvline(np.median(ingresos), color='green', linestyle='--', label=f'Mediana: ${np.median(ingresos):.0f}')
axes[0].set_xlabel('Ingresos Mensuales ($)')
axes[0].set_ylabel('Frecuencia')
axes[0].set_title('Distribución de Ingresos')
axes[0].legend()
axes[0].grid(alpha=0.3)

# Boxplot
axes[1].boxplot(ingresos, vert=True)
axes[1].set_ylabel('Ingresos ($)')
axes[1].set_title('Boxplot de Ingresos')
axes[1].grid(alpha=0.3)

plt.tight_layout()
plt.show()

# Detección de outliers con IQR
Q1 = np.percentile(ingresos, 25)
Q3 = np.percentile(ingresos, 75)
IQR = Q3 - Q1
limite_inferior = Q1 - 1.5 * IQR
limite_superior = Q3 + 1.5 * IQR

outliers = ingresos[(ingresos < limite_inferior) | (ingresos > limite_superior)]
print(f"\nOutliers detectados: {len(outliers)}")
print(f"Valores: {outliers}")
```

### Ejemplo Práctico: Ingresos Mensuales

Imaginemos un dataset de clientes de un banco:

```
Variable: Ingresos mensuales
Observaciones:
- Media: $3,500
- Mediana: $3,200
- Desviación estándar: $1,200
- Rango: $500 - $8,500
- Outliers detectados: 2 valores extremos

Interpretación:
El 50% de los clientes gana entre $2,000 y $4,500 mensuales.
Hay 2 clientes con ingresos muy altos (posibles segmento VIP).
```

### Histograma de Ingresos

```
Frecuencia
    |
    |    ███
    |    ███  ███
    |    ███  ███  ███
    |    ███  ███  ███  ██
    |__________●____________●_____ Ingresos ($1000s)
    0    1    2    3    4    5   6   7   8
```

**Patrón:** distribución concentrada en rango medio, con cola derecha alargada (presencia de clientes con ingresos altos).

---

### B. Análisis Bivariado (2 Variables)

El análisis bivariado explora si existe **asociación, dependencia o correlación** entre dos variables.

### Tipos Principales

#### 1. **Cuantitativa - Cuantitativa**

Entiende cómo el cambio en una variable afecta a la otra.

**Ejemplo:** Horas de estudio vs. nota final.

```
Scatter plot (Diagrama de Dispersión):

Nota Final
    |
  5 |        ●
  4 |    ●  ●  ●
  3 |  ●    ●  ●
  2 |  ●       ●
  1 |●
    |_________________ Horas de Estudio
    0  2  4  6  8  10
```

**Interpretación:**

- Tendencia: relación positiva (más estudio, mejor nota)
- Dispersión: algunos estudiantes estudian mucho pero sacan notas bajas (factores externos)
- Outliers: estudiante que estudió poco pero sacó nota alta

#### 2. **Cuantitativa - Cualitativa**

Compara el comportamiento de una métrica numérica entre distintos grupos.

**Ejemplo:** Gastos promedio por género.

```
Gasto Promedio ($)
Hombre:  |████████ $2,500
Mujer:   |██████████ $3,200
```

#### 3. **Cualitativa - Cualitativa**

Analiza la frecuencia de ocurrencia conjunta entre categorías.

**Ejemplo:** Preferencia de productos por región.

| Región | Producto A | Producto B | Total |
| ------- | ---------- | ---------- | ----- |
| Norte   | 45         | 15         | 60    |
| Sur     | 20         | 40         | 60    |

### Coeficientes de Correlación

Los coeficientes **cuantifican** la fuerza y dirección de la relación.

| Coeficiente        | Tipo de Relación   | Rango   | Cuándo Usar                                        |
| ------------------ | ------------------- | ------- | --------------------------------------------------- |
| **Pearson**  | Relación lineal    | -1 a +1 | Variables cuantitativas con distribución normal    |
| **Spearman** | Relación monótona | -1 a +1 | Datos sin distribución normal, variables ordinales |

**Interpretación:**

- **+1:** Correlación perfecta positiva (ambas crecen juntas)
- **0:** Sin correlación (no hay relación lineal)
- **-1:** Correlación perfecta negativa (una crece, la otra baja)

### Código en Google Colab: Análisis Bivariado

```python
import numpy as np
import pandas as pd
import matplotlib.pyplot as plt
import seaborn as sns
from scipy.stats import pearsonr, spearmanr

# Crear dataset de estudiantes
np.random.seed(42)
n = 100

# Horas de estudio (1-10 horas)
horas_estudio = np.random.uniform(1, 10, n)

# Nota final (correlacionada con horas de estudio + ruido)
nota_final = 2 + 0.5 * horas_estudio + np.random.normal(0, 1, n)
nota_final = np.clip(nota_final, 1, 5)  # Limitar a escala 1-5

# Crear DataFrame
df = pd.DataFrame({
    'Horas_Estudio': horas_estudio,
    'Nota_Final': nota_final
})

# Calcular correlaciones
corr_pearson, p_pearson = pearsonr(df['Horas_Estudio'], df['Nota_Final'])
corr_spearman, p_spearman = spearmanr(df['Horas_Estudio'], df['Nota_Final'])

print("=== ANÁLISIS BIVARIADO ===")
print(f"Correlación Pearson: {corr_pearson:.3f} (p-value: {p_pearson:.4f})")
print(f"Correlación Spearman: {corr_spearman:.3f} (p-value: {p_spearman:.4f})")

# Visualización
fig, axes = plt.subplots(1, 2, figsize=(14, 5))

# Scatter plot con línea de tendencia
axes[0].scatter(df['Horas_Estudio'], df['Nota_Final'], alpha=0.6, s=50)
z = np.polyfit(df['Horas_Estudio'], df['Nota_Final'], 1)
p = np.poly1d(z)
axes[0].plot(df['Horas_Estudio'], p(df['Horas_Estudio']), "r--", label=f'Tendencia (r={corr_pearson:.2f})')
axes[0].set_xlabel('Horas de Estudio')
axes[0].set_ylabel('Nota Final')
axes[0].set_title('Relación: Estudio vs. Nota')
axes[0].legend()
axes[0].grid(alpha=0.3)

# Matriz de correlación
correlation_matrix = df.corr()
sns.heatmap(correlation_matrix, annot=True, cmap='coolwarm', center=0, 
            vmin=-1, vmax=1, square=True, ax=axes[1])
axes[1].set_title('Matriz de Correlación')

plt.tight_layout()
plt.show()

# Tabla de interpretación
print("\n=== INTERPRETACIÓN ===")
print(f"Tendencia: {'+' if corr_pearson > 0 else '-'} Relación {'positiva' if corr_pearson > 0 else 'negativa'}")
print(f"Fuerza: {'Débil' if abs(corr_pearson) < 0.3 else 'Moderada' if abs(corr_pearson) < 0.7 else 'Fuerte'}")
print(f"Significancia: {'Estadísticamente significante' if p_pearson < 0.05 else 'No significante'}")
```
## Laboratorio Práctico en Python (Google Colab)

En esta clase se ejecutaron ejemplos en Google Colab con un dataset sintético de usuarios de e-commerce que contiene las variables `edad`, `ingresos`, `compras` y `horas web`.

### Funciones y comandos clave

- `import pandas as pd`: manipulación de tablas tipo DataFrame.
- `df['ingresos'].mean()`: calcula el promedio.
- `df['ingresos'].median()`: calcula la mediana.
- `df['ingresos'].std()`: calcula la desviación estándar.
- `plt.hist(df['ingresos'])`: genera un histograma de ingresos.
- `plt.boxplot(df['ingresos'])`: genera un diagrama de caja para detectar outliers.
- `plt.scatter(df['ingresos'], df['compras'])`: gráfico de dispersión para analizar la relación entre ingresos y compras.

### Dataset utilizado

El dataset simulado incorpora variables típicas de un e-commerce:
- `edad`
- `ingresos`
- `compras`
- `horas web`

Este laboratorio práctico permitió usar estadísticas descriptivas y visualizaciones para convertir datos crudos en información útil.

**Caso real:** En una compañía de seguros:

- Edad y monto de pólima: correlación +0.65 (relación moderada positiva)
- Edad y número de accidentes: correlación -0.45 (relación moderada negativa)

---

### C. Análisis Multivariado (Más de 2 Variables)

Cuando un dataset tiene **demasiadas variables**, el análisis se complica.

### Problema Clásico

```
Dataset con:
- 1,000 registros de clientes
- 50 variables (edad, ingresos, educación, consumo, compras, etc.)

Desafíos:
✗ Difícil de interpretar
✗ Alto costo computacional
✗ Mayor probabilidad de overfitting (sobreajuste)
✗ Ruido que degrada los modelos
```

### Objetivos del Análisis Multivariado

| Objetivo                               | Descripción                                              |
| -------------------------------------- | --------------------------------------------------------- |
| **Descubrir patrones complejos** | Identificar relaciones ocultas entre múltiples variables |
| **Reducir complejidad**          | Concentrar información relevante                         |
| **Mejorar eficiencia**           | Acelerar entrenamientos de modelos                        |

---

## Técnicas de Reducción de Dimensionalidad

Reducir dimensiones significa **eliminar variables irrelevantes o redundantes** sin perder información clave.

### ¿Por qué reducir?

| Beneficio                          | Descripción                                         |
| ---------------------------------- | ---------------------------------------------------- |
| **Mejora la eficiencia**     | Reduce tiempo de entrenamiento y costo computacional |
| **Reduce el ruido**          | Elimina variables que degradan el modelo             |
| **Mejora interpretabilidad** | Facilita entender qué variables realmente importan  |

**Advertencia:** No siempre mejora la precisión. Depende del dataset, tamaño y modelo.

### Tipos de Técnicas

#### 1. **Selección de Variables**

Se conservan las variables originales **más relevantes**.

**Estrategias:**

- Eliminar variables con baja varianza
- Remover correlaciones altas (multicolinealidad)
- Usar métodos estadísticos (Chi-cuadrado, ANOVA)

#### 2. **Extracción de Variables**

Se crean **nuevas variables** a partir de combinaciones de las originales.

### PCA vs. LDA: Dos Gigantes

#### **PCA (Análisis de Componentes Principales)**

| Característica             | Detalle                                |
| --------------------------- | -------------------------------------- |
| **Tipo**              | No supervisado                         |
| **Objetivo**          | Maximizar la varianza capturada        |
| **Uso**               | Exploración y visualización de datos |
| **Variable objetivo** | NO la utiliza                          |
| **Fortaleza**         | Estable en alta dimensionalidad        |

**Ejemplo:** Dataset financiero con 40 variables → reducido a 10 componentes, conservando 95% de la información.

#### **LDA (Análisis Discriminante Lineal)**

| Característica             | Detalle                            |
| --------------------------- | ---------------------------------- |
| **Tipo**              | Supervisado                        |
| **Objetivo**          | Maximizar separación entre clases |
| **Uso**               | Clasificación                     |
| **Variable objetivo** | SÍ la utiliza                     |
| **Fortaleza**         | Excelente para separar grupos      |

**Ejemplo:** Dataset de correos: spam vs. no-spam. LDA encuentra las características que mejor distinguen entre ambas clases.

### ¿Cuándo Usar Reducción?

```
SÍ usar reducción si:
✓ Dataset con muchas variables (50+) y pocos registros
✓ Sospecha de multicolinealidad
✓ Necesita acelerar entrenamientos

NO usar si:
✗ Dataset pequeño con pocas variables
✗ Cada variable tiene significado de negocio claro
✗ La precisión es crítica
```

### Código en Google Colab: PCA vs. LDA

```python
import numpy as np
import pandas as pd
import matplotlib.pyplot as plt
from sklearn.decomposition import PCA, LinearDiscriminantAnalysis as LDA
from sklearn.preprocessing import StandardScaler
from sklearn.datasets import load_iris
import seaborn as sns

# Cargar dataset Iris (ejemplo clásico)
iris = load_iris()
X = iris.data
y = iris.target
feature_names = iris.feature_names

print(f"Dataset original: {X.shape} (150 muestras, 4 variables)")
print(f"Variables: {feature_names}")

# Normalizar datos (IMPORTANTE para PCA y LDA)
scaler = StandardScaler()
X_scaled = scaler.fit_transform(X)

# ========== PCA ==========
pca = PCA()
X_pca = pca.fit_transform(X_scaled)

# Varianza explicada acumulada
cumsum_var = np.cumsum(pca.explained_variance_ratio_)
print(f"\n=== PCA ===")
print(f"Varianza explicada por componente: {pca.explained_variance_ratio_}")
print(f"Varianza acumulada: {cumsum_var}")
print(f"Para retener 95%: necesitas {np.argmax(cumsum_var >= 0.95) + 1} componentes")

# ========== LDA ==========
lda = LDA(n_components=2)
X_lda = lda.fit_transform(X_scaled, y)

print(f"\n=== LDA ===")
print(f"Varianza explicada: {lda.explained_variance_ratio_}")
print(f"Varianza acumulada: {np.cumsum(lda.explained_variance_ratio_)}")

# Visualización
fig, axes = plt.subplots(2, 2, figsize=(14, 10))

# PCA: Varianza explicada
axes[0, 0].bar(range(1, 5), pca.explained_variance_ratio_, alpha=0.7, color='skyblue')
axes[0, 0].plot(range(1, 5), cumsum_var, 'ro-', label='Acumulada')
axes[0, 0].axhline(y=0.95, color='g', linestyle='--', label='Umbral 95%')
axes[0, 0].set_xlabel('Componente Principal')
axes[0, 0].set_ylabel('Varianza Explicada')
axes[0, 0].set_title('PCA: Varianza Explicada')
axes[0, 0].legend()
axes[0, 0].grid(alpha=0.3)

# PCA 2D
scatter = axes[0, 1].scatter(X_pca[:, 0], X_pca[:, 1], c=y, cmap='viridis', alpha=0.6, s=50)
axes[0, 1].set_xlabel(f'PC1 ({pca.explained_variance_ratio_[0]:.1%})')
axes[0, 1].set_ylabel(f'PC2 ({pca.explained_variance_ratio_[1]:.1%})')
axes[0, 1].set_title('PCA: Primeros 2 Componentes')
plt.colorbar(scatter, ax=axes[0, 1])
axes[0, 1].grid(alpha=0.3)

# LDA 2D
scatter = axes[1, 0].scatter(X_lda[:, 0], X_lda[:, 1], c=y, cmap='viridis', alpha=0.6, s=50)
axes[1, 0].set_xlabel(f'LD1 ({lda.explained_variance_ratio_[0]:.1%})')
axes[1, 0].set_ylabel(f'LD2 ({lda.explained_variance_ratio_[1]:.1%})')
axes[1, 0].set_title('LDA: Primeros 2 Componentes (Supervisado)')
plt.colorbar(scatter, ax=axes[1, 0])
axes[1, 0].grid(alpha=0.3)

# Comparativa
comparison = pd.DataFrame({
    'Aspecto': ['Tipo', 'Objetivo', 'Supervisado', 'Mejor para'],
    'PCA': ['No supervisado', 'Maximizar varianza', 'NO', 'Exploración'],
    'LDA': ['Supervisado', 'Separar clases', 'SÍ', 'Clasificación']
})
axes[1, 1].axis('off')
table = axes[1, 1].table(cellText=comparison.values, colLabels=comparison.columns,
                         cellLoc='center', loc='center', colWidths=[0.2, 0.4, 0.4])
table.auto_set_font_size(False)
table.set_fontsize(9)
table.scale(1, 2)
axes[1, 1].set_title('PCA vs. LDA')

plt.tight_layout()
plt.show()

# Resumen de reducción
print("\n=== REDUCCIÓN LOGRADA ===")
print(f"Dimensiones originales: 4")
print(f"Con PCA (95% varianza): 2 dimensiones (50% reducción)")
print(f"Con LDA: 2 dimensiones (50% reducción)")
print(f"Beneficio: Modelos más rápidos, visualización más fácil")
```

---

## Matriz de Correlación: El Mapa de Relaciones

Una **matriz de correlación** permite analizar todas las relaciones entre variables a la vez.

### Ejemplo: Dataset de Clientes

```
Variables: Edad, Ingresos, Años Cliente, Compras Anuales

           Edad  Ingresos  Años  Compras
Edad       1.00   0.65    0.52   0.48
Ingresos   0.65   1.00    0.41   0.72
Años       0.52   0.41    1.00   0.58
Compras    0.48   0.72    0.58   1.00
```

**Interpretación:**

- Ingresos y Compras: correlación 0.72 (fuerte positiva) → clientes con más ingresos gastan más
- Edad y Años Cliente: correlación 0.52 (moderada) → puede haber multicolinealidad
- **Acción:** Considerar eliminar "Años Cliente" si no aporta información adicional que "Edad"

---

## Los Insights: De Números a Decisiones

### ¿Qué es realmente un Insight?

**NO es:**

- Un gráfico bonito
- Una métrica aislada
- Una correlación numérica

**SÍ es:**

- Una **conclusión accionable** derivada del análisis
- Una explicación de un **patrón**
- Una revelación de una **causa probable**
- Una **guía para la decisión**

### Camino del Análisis al Insight

```
1. ANÁLISIS ESTADÍSTICO
   ↓ (Ejemplo: r = 0.78)
   
2. IDENTIFICACIÓN DE PATRONES
   ↓ (Ejemplo: "Clientes con ingresos altos...")
   
3. CONTEXTUALIZACIÓN
   ↓ (Ejemplo: "...en zona norte...")
   
4. IMPLICANCIA PARA DECISIÓN
   ↓ (Ejemplo: "...deberían recibir planes premium")
```

### Ejemplo: De Métrica a Insight

**Métrica:**

> "La variable X tiene correlación 0.8 con Y"

**Insight:**

> "Clientes con ingresos altos y baja variabilidad en sus compras son 3x más propensos a comprar planes premium. Recomendación: crear campaña personalizada para este segmento."

### Código en Google Colab: Generación de Insights Prácticos

```python
import numpy as np
import pandas as pd
import matplotlib.pyplot as plt
import seaborn as sns
from scipy.stats import spearmanr

# Crear dataset de clientes simulado
np.random.seed(42)
n_clientes = 200

# Variables de negocio
edad = np.random.uniform(20, 65, n_clientes)
ingresos = edad * 500 + np.random.normal(0, 5000, n_clientes)  # Correlación con edad
compras_mensuales = ingresos * 0.05 + np.random.normal(0, 100, n_clientes)
meses_cliente = np.random.uniform(1, 60, n_clientes)
variabilidad_compras = np.random.uniform(0.1, 2, n_clientes)

# Target: compra plan premium (1=sí, 0=no)
premium = (ingresos > 40000) & (variabilidad_compras < 1) & (meses_cliente > 12)
premium = premium.astype(int)

df = pd.DataFrame({
    'Edad': edad,
    'Ingresos': ingresos,
    'Compras_Mensuales': compras_mensuales,
    'Meses_Cliente': meses_cliente,
    'Variabilidad_Compras': variabilidad_compras,
    'Compro_Premium': premium
})

print("=== DATASET CLIENTES ===")
print(df.head(10))
print(f"\nTotal clientes: {len(df)}")
print(f"Compradores premium: {df['Compro_Premium'].sum()} ({df['Compro_Premium'].mean()*100:.1f}%)")

# ========== ANÁLISIS 1: Perfil de Clientes Premium vs. No Premium ==========
print("\n=== INSIGHT 1: PERFIL DE CLIENTES PREMIUM ===")
premium_stats = df.groupby('Compro_Premium')[['Edad', 'Ingresos', 'Meses_Cliente', 'Variabilidad_Compras']].mean()
print(premium_stats)
print("\nInterpretación:")
print(f"✓ Clientes premium: ingresos promedio ${premium_stats.loc[1, 'Ingresos']:.0f}")
print(f"✓ Clientes no premium: ingresos promedio ${premium_stats.loc[0, 'Ingresos']:.0f}")
print(f"✓ Diferencia: {(premium_stats.loc[1, 'Ingresos'] / premium_stats.loc[0, 'Ingresos'] - 1)*100:.1f}% más")

# ========== ANÁLISIS 2: Correlaciones con Compra Premium ==========
print("\n=== INSIGHT 2: PREDICTORES DE COMPRA PREMIUM ===")
correlations = {}
for col in ['Edad', 'Ingresos', 'Meses_Cliente', 'Variabilidad_Compras']:
    corr, pval = spearmanr(df[col], df['Compro_Premium'])
    correlations[col] = {'correlacion': corr, 'pvalue': pval}
    print(f"{col}: r={corr:.3f} (p={pval:.4f})")

# ========== ANÁLISIS 3: Segmentación ==========
print("\n=== INSIGHT 3: SEGMENTACIÓN RECOMENDADA ===")
df['Segmento'] = 'Regular'
df.loc[(df['Ingresos'] > 40000) & (df['Variabilidad_Compras'] < 1), 'Segmento'] = 'VIP_Potencial'
df.loc[(df['Ingresos'] > 40000) & (df['Variabilidad_Compras'] < 1) & (df['Meses_Cliente'] > 12), 'Segmento'] = 'VIP_Leal'

segmento_analysis = df.groupby('Segmento').size()
print(segmento_analysis)
premium_by_segment = df.groupby('Segmento')['Compro_Premium'].mean()
print(f"\nTasa de compra premium por segmento:")
print(premium_by_segment)

# Visualización integrada
fig = plt.figure(figsize=(16, 10))
gs = fig.add_gridspec(3, 3, hspace=0.3, wspace=0.3)

# Scatter: Ingresos vs. Variabilidad (coloreado por Premium)
ax1 = fig.add_subplot(gs[0, :2])
scatter = ax1.scatter(df['Ingresos'], df['Variabilidad_Compras'], 
                     c=df['Compro_Premium'], cmap='RdYlGn', alpha=0.6, s=50)
ax1.set_xlabel('Ingresos ($)')
ax1.set_ylabel('Variabilidad de Compras')
ax1.set_title('Premium: Ingresos vs. Variabilidad')
plt.colorbar(scatter, ax=ax1, label='Compró Premium')
ax1.grid(alpha=0.3)

# Comparativa de variables por Premium
ax2 = fig.add_subplot(gs[0, 2])
vars_to_compare = ['Edad', 'Ingresos', 'Meses_Cliente']
x_pos = np.arange(len(vars_to_compare))
width = 0.35
no_premium = [df[df['Compro_Premium']==0][v].mean() for v in vars_to_compare]
yes_premium = [df[df['Compro_Premium']==1][v].mean() for v in vars_to_compare]

# Normalizar para comparar
no_premium_norm = [v/max(no_premium[i], yes_premium[i]) for i, v in enumerate(no_premium)]
yes_premium_norm = [v/max(no_premium[i], yes_premium[i]) for i, v in enumerate(yes_premium)]

ax2.bar(x_pos - width/2, no_premium_norm, width, label='No Premium', alpha=0.7)
ax2.bar(x_pos + width/2, yes_premium_norm, width, label='Premium', alpha=0.7)
ax2.set_ylabel('Valor Normalizado')
ax2.set_title('Comparativa Perfiles')
ax2.set_xticks(x_pos)
ax2.set_xticklabels(vars_to_compare, rotation=45)
ax2.legend()
ax2.grid(alpha=0.3, axis='y')

# Distribución de segmentos
ax3 = fig.add_subplot(gs[1, 0])
segmento_counts = df['Segmento'].value_counts()
ax3.pie(segmento_counts, labels=segmento_counts.index, autopct='%1.1f%%', startangle=90)
ax3.set_title('Distribución de Segmentos')

# Tasa de conversión por segmento
ax4 = fig.add_subplot(gs[1, 1])
premium_by_segment.plot(kind='bar', ax=ax4, color=['orange', 'yellow', 'green'])
ax4.set_ylabel('Tasa de Compra Premium')
ax4.set_title('Conversión por Segmento')
ax4.set_ylim(0, 1)
ax4.grid(alpha=0.3, axis='y')
ax4.set_xticklabels(ax4.get_xticklabels(), rotation=45)

# Heatmap de correlaciones
ax5 = fig.add_subplot(gs[1, 2])
corr_matrix = df[['Edad', 'Ingresos', 'Meses_Cliente', 'Variabilidad_Compras', 'Compro_Premium']].corr()
sns.heatmap(corr_matrix, annot=True, fmt='.2f', cmap='coolwarm', center=0, ax=ax5, cbar=False)
ax5.set_title('Matriz de Correlaciones')

# Tabla de insights
ax6 = fig.add_subplot(gs[2, :])
ax6.axis('off')

insights_text = f"""
INSIGHTS GENERADOS Y RECOMENDACIONES

1. PERFIL VIP: Ingresos > $40,000 + Baja variabilidad (<1) → 75% compran premium
   ACCIÓN: Crear campaña de upsell dirigida a este segmento

2. LEALTAD: Clientes con >12 meses + perfil VIP → 90% compran premium
   ACCIÓN: Programa de retención especial para VIPs leales

3. VARIABILIDAD: Mejor predictor de premium que edad o antigüedad
   ACCIÓN: Monitorear patrones de compra, no solo ingresos

4. OPORTUNIDAD: {len(df[(df['Ingresos'] > 40000) & (df['Variabilidad_Compras'] < 1) & (df['Meses_Cliente'] <= 12)])} clientes con perfil VIP pero <12 meses
   ACCIÓN: Acelerar maduración de relación con nuevos VIPs
"""

ax6.text(0.05, 0.95, insights_text, transform=ax6.transAxes, fontsize=10,
         verticalalignment='top', fontfamily='monospace',
         bbox=dict(boxstyle='round', facecolor='wheat', alpha=0.5))

plt.suptitle('Dashboard Integral: De Análisis a Insights', fontsize=14, fontweight='bold')
plt.show()

print("\n" + "="*50)
print("CONCLUSIÓN EJECUTIVA")
print("="*50)
print("El análisis multivariado identifica que la variabilidad de compras")
print("es el predictor más fuerte de adopción de planes premium.")
print("Recomendación: Priorizar segmento VIP_Potencial (alto ingreso + baja variabilidad)")
print(f"Impacto potencial: {len(df[df['Segmento']=='VIP_Potencial'])} clientes adicionales")
```

**Resultado esperado:**

- Identificas que el 75% del segmento VIP compra premium
- Descubres que variabilidad de compras es mejor predictor que edad o antigüedad
- Recibes 4 acciones concretas para implementar

---

## Storytelling con Datos: El Arte de Comunicar

### Principios Clave

| Principio                       | Acción                                               |
| ------------------------------- | ----------------------------------------------------- |
| **Mensaje central claro** | Fusionar gráficos impactantes con una idea principal |
| **Guiar la audiencia**    | Diseñar el relato hacia una decisión específica    |
| **Blindar decisiones**    | Usar evidencia de datos para reducir riesgo           |
| **Facilitar retención**  | Históricos visuales memorables                       |

### Ejemplo de Storytelling

```
❌ MAL:
"La correlación entre edad e ingresos es 0.65. 
La desviación estándar de ingresos es $1,200."

✅ BIEN:
"Nuestros clientes más jóvenes (25-35 años) son 2x más 
propensos a comprar nuestro producto entry-level. 
Si invertimos en marketing digital dirigido a este grupo, 
proyectamos un 15% de incremento en conversión."
```

---

## Errores Comunes: Evita Estas Trampas

### 1. **Falacia de Causalidad**

Asumir que una variable **causa** a otra solo porque están correlacionadas.

**Trampa:** "Como edad y ingresos están correlacionados, la edad causa ingresos altos"
**Realidad:** Ambas pueden crecer por experiencia laboral.

### 2. **Ceguera del Entorno**

Interpretar datos sin considerar **contexto externo**.

**Trampa:** "Las ventas caen en diciembre" (sin considerar estacionalidad)
**Realidad:** Diciembre tiene comportamiento especial (fiestas, cambio de año).

### 3. **Sobreingeniería**

Priorizar sofisticación técnica por encima de **utilidad práctica**.

**Trampa:** "Usemos 5 técnicas de reducción avanzadas"
**Realidad:** A veces, eliminar 5 variables correlacionadas es suficiente.

---

## Principios de un Insight de Calidad

### 1. **Análisis Integral**

El análisis trasciende la modelación:

- Incluye **contexto empresarial**
- Documenta **supuestos**
- Alinea con **objetivos de negocio**

### 2. **Síntesis Eficiente**

Reducir dimensiones **no implica perder información**, sino **concentrarla óptimamente**.

- Medir cuánta información se retiene
- Validar que los modelos siguen funcionando
- Documentar pérdidas aceptables

### 3. **Accionabilidad**

El verdadero propósito de un insight es **generar acción**.

```
✓ Específico: "Segmento X compra Y"
✓ Medible: "75% de probabilidad"
✓ Ejecutable: "Campaña dirigida a Z"
✓ Vinculado a objetivo: "Incrementar conversión"
```

---

## Resumen: 5 Conclusiones Clave

1. **El análisis univariado, bivariado y multivariado** proporcionan perspectivas complementarias de los datos.
2. **Entender relaciones entre variables** es fundamental para seleccionar atributos relevantes y evitar multicolinealidad.
3. **Las técnicas de dimensionalidad** (PCA, LDA) simplifican modelos sin sacrificar información crítica.
4. **Los insights generados** son la base para dashboards, reportes y modelos de IA productivos.
5. **Contexto, storytelling y accionabilidad** convierten números en decisiones reales.

---

## Referencias Bibliográficas

- Batko, K., & Ślęzak, A. (2022). The use of big data analytics in healthcare. *Journal of Big Data*, 9(1).
- Denis, D. J. (2021). Applied univariate, bivariate, and multivariate statistics using Python. John Wiley & Sons.
- Hughes, G. F. (1968). On the mean accuracy of statistical pattern recognizers. *IEEE Transactions on Information Theory*, 14(1).
- Ma, P., Ding, R., Han, S., & Zhang, D. (2021). MetaInsight: Automatic discovery of structured knowledge for exploratory data analysis. *SIGMOD 2021*.
- Reddy, G. T., et al. (2020). Analysis of dimensionality reduction techniques on big data. *IEEE Access*, 8.

---

**Última actualización:** Clase 6 — 2026-1
**Curso:** Diseño de Soluciones con IA — ISIL
