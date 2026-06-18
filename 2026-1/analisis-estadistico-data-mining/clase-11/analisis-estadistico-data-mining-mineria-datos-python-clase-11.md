# Minería de Datos en Python (Clase 11)

**Curso:** Análisis Estadístico y Data Mining (ISIL, 2026-1)  
**Docente:** Omar David Visitación Romero  
**Fecha:** 07/06/2026

---

## 1. Introducción

Python se ha convertido en la herramienta estándar para minería de datos gracias a su simplicidad y su ecosistema de bibliotecas especializadas. Bibliotecas como `pandas`, `scikit-learn`, `matplotlib` y `seaborn` permiten cubrir todo el flujo de trabajo: desde la limpieza de datos hasta la evaluación de modelos predictivos.

### Flujo práctico de una solución de Data Mining

En la práctica, un proyecto de minería de datos no empieza en el modelo, empieza en el problema. Un flujo útil suele ser este:

1. **Definir el objetivo**: ¿predecir, segmentar o encontrar patrones?
2. **Recoger y limpiar datos**: corregir valores faltantes, duplicados y formatos inconsistentes.
3. **Explorar los datos**: entender distribución, relaciones y posibles sesgos.
4. **Seleccionar el algoritmo**: clasificación, clustering o regresión según el caso.
5. **Entrenar y evaluar**: comparar métricas y validar que el modelo generalice.
6. **Comunicar resultados**: tablas, gráficos y recomendaciones de negocio.

> Idea clave: un buen modelo empieza por un buen entendimiento del problema y de los datos.

---

## 2. Algoritmos de Clasificación y Clustering con Scikit-learn

### 2.1 Scikit-learn (sklearn)

Biblioteca de machine learning open-source para Python. Características clave:

- Sintaxis consistente entre todos los algoritmos
- Integración nativa con `pandas` y `NumPy`
- Flujo de trabajo estandarizado: crear modelo → entrenar → predecir → evaluar

### 2.2 Clasificación (Aprendizaje Supervisado)

Técnica que predice una categoría a partir de datos históricos con variable objetivo conocida.

**Algoritmos más usados en sklearn:**

| Algoritmo | Cuándo usarlo |
|-----------|--------------|
| Regresión Logística | Problemas binarios, necesita interpretabilidad |
| Árboles de Decisión | Datos con mezcla de tipos, resultados explicables |
| Random Forest | Mayor precisión, tolera datos ruidosos |
| SVM | Fronteras complejas entre clases |
| KNN | Clasificación basada en similitud, datasets pequeños |

**Ejemplo aplicado — Predicción de compra en marketing:**

```python
import pandas as pd
from sklearn.model_selection import train_test_split
from sklearn.linear_model import LogisticRegression
from sklearn.metrics import accuracy_score

data = {
    'edad': [22, 25, 47, 52, 46, 56, 30, 35],
    'ingresos': [1200, 1500, 3500, 4000, 3800, 4200, 2000, 2500],
    'compra': [0, 0, 1, 1, 1, 1, 0, 0]
}
df = pd.DataFrame(data)

X = df[['edad', 'ingresos']]
y = df['compra']
X_train, X_test, y_train, y_test = train_test_split(
    X, y, test_size=0.25, random_state=42
)

modelo = LogisticRegression()
modelo.fit(X_train, y_train)
y_pred = modelo.predict(X_test)

print("Accuracy:", accuracy_score(y_test, y_pred))  # ≈ 0.80

# Predecir nuevo cliente
nuevo = pd.DataFrame({'edad': [40], 'ingresos': [3000]})
print("Predicción:", modelo.predict(nuevo))         # 1
print("Probabilidad:", modelo.predict_proba(nuevo)) # [0.22, 0.78]
```

### 2.3 Clustering (Aprendizaje No Supervisado)

Agrupa observaciones similares sin necesidad de etiquetas previas. K-means es el algoritmo más usado por su simplicidad e interpretabilidad.

| Característica | Descripción |
|---------------|-------------|
| No requiere etiquetas | Trabaja con distancias entre observaciones |
| Requiere escalamiento | K-means es sensible a la escala de variables |
| Resultados requieren interpretación | El analista da sentido a los clusters |

**Ejemplo aplicado — Segmentación de clientes en e-commerce:**

```python
import pandas as pd
from sklearn.cluster import KMeans
from sklearn.preprocessing import StandardScaler

data = {
    'gasto_mensual': [100, 120, 150, 200, 220, 250, 400, 420, 450, 480],
    'frecuencia_compra': [1, 1, 2, 2, 3, 3, 5, 5, 6, 6]
}
df = pd.DataFrame(data)

scaler = StandardScaler()
df_scaled = pd.DataFrame(
    scaler.fit_transform(df),
    columns=df.columns
)

kmeans = KMeans(n_clusters=3, random_state=42)
kmeans.fit(df_scaled)

df['cluster'] = kmeans.labels_
```

Resultado: 3 segmentos — bajo gasto/baja frecuencia, gasto medio/frecuencia media, alto gasto/alta frecuencia.

---

## 3. Visualización con Matplotlib y Seaborn

### 3.1 Matplotlib

Librería base de visualización. Control total sobre cada elemento del gráfico.

**Ejemplo — Evolución de ventas mensuales:**

```python
import matplotlib.pyplot as plt

meses = ['Enero', 'Febrero', 'Marzo', 'Abril', 'Mayo', 'Junio']
ventas = [12000, 15000, 18000, 17000, 20000, 23000]

plt.plot(meses, ventas, marker='o')
plt.xlabel('Mes')
plt.ylabel('Ventas (S/.)')
plt.title('Evolución mensual de ventas')
plt.grid(True)
plt.show()
```

### 3.2 Seaborn

Construida sobre matplotlib. Menos código, gráficos estadísticos más informativos.

**Ejemplo — Distribución de montos de crédito:**

```python
import matplotlib.pyplot as plt
import seaborn as sns
import pandas as pd

datos_credito = {'monto_credito': [5000, 7000, 8000, 10000, 12000, 15000, 20000]}
df = pd.DataFrame(datos_credito)

sns.histplot(df['monto_credito'], kde=True)
plt.xlabel('Monto del crédito (S/.)')
plt.ylabel('Frecuencia')
plt.title('Distribución de montos de crédito otorgados')
plt.show()
```

| Característica | Matplotlib | Seaborn |
|---------------|-----------|---------|
| Control | Total, cada elemento | Menos código, estilos automáticos |
| Curva de aprendizaje | Alta | Baja |
| Ideal para | Gráficos personalizados | Análisis exploratorio |
| Integración con pandas | Manual | Directa |

---

## 4. Evaluación de Modelos: Métricas y Validación Cruzada

### 4.1 Métricas para Clasificación

| Métrica | Fórmula | Qué mide |
|---------|---------|----------|
| Accuracy | (VP + VN) / Total | Proporción total de aciertos |
| Precisión | VP / (VP + FP) | Confiabilidad de predicciones positivas |
| Recall | VP / (VP + FN) | Cobertura de positivos reales |
| F1-score | 2 × (P × R) / (P + R) | Equilibrio entre precisión y recall |

**Ejemplo — Predicción de compra en marketing digital:**

```python
from sklearn.metrics import accuracy_score, classification_report

data = {
    'visitas_web': [1, 3, 5, 2, 8, 7, 4, 6],
    'tiempo_web': [2, 4, 6, 3, 9, 8, 5, 7],
    'compra': [0, 0, 1, 0, 1, 1, 0, 1]
}
df = pd.DataFrame(data)

X = df[['visitas_web', 'tiempo_web']]
y = df['compra']
X_train, X_test, y_train, y_test = train_test_split(
    X, y, test_size=0.25, random_state=42
)

model = LogisticRegression()
model.fit(X_train, y_train)
y_pred = model.predict(X_test)

print("Accuracy:", accuracy_score(y_test, y_pred))           # 0.75
print(classification_report(y_test, y_pred))
```

### 4.2 Validación Cruzada (K-Fold Cross-Validation)

Evalúa el modelo múltiples veces con diferentes particiones de datos.

| Métricas | Validación Cruzada |
|----------|-------------------|
| Evalúan rendimiento | Evalúa estabilidad |
| Resultado puntual | Resultado más confiable |
| Miden precisión/error | Reducen sobreajuste |
| Un solo conjunto | Múltiples subconjuntos |

**Ejemplo — Scoring crediticio:**

```python
from sklearn.model_selection import cross_val_score

data = {
    'ingreso_mensual': [3.0, 2.5, 4.0, 1.8, 5.0, 3.5, 2.0, 4.5],
    'deuda_actual': [1.0, 2.0, 1.5, 2.5, 1.0, 2.2, 3.0, 1.8],
    'pago_credito': [1, 0, 1, 0, 1, 1, 0, 1]
}
df = pd.DataFrame(data)

X = df[['ingreso_mensual', 'deuda_actual']]
y = df['pago_credito']

model = LogisticRegression()
scores = cross_val_score(model, X, y, cv=5, scoring='accuracy')

print("Accuracy por fold:", scores)          # [0.75 0.75 1.00 0.50 0.75]
print("Accuracy promedio:", scores.mean())   # 0.75
```

---

## 5. Preprocesamiento con Pandas

Etapa más crítica del pipeline. Datos sucios producen modelos malos.

**Problemas comunes en datos reales:**

- Valores faltantes (NaN)
- Registros duplicados
- Formatos inconsistentes
- Errores de digitación

**Ejemplo — Limpieza de datos de ventas:**

```python
import pandas as pd

# Datos con problemas
datos = {
    'Producto': ['A', 'B', 'C', 'B', 'C'],
    'Ventas': [1500, 2300, None, 2300, None],
    'Mes': ['Enero', 'Enero', 'Enero', 'Enero', 'Enero']
}
df = pd.DataFrame(datos)

# 1. Identificar valores faltantes
print(df.isnull())

# 2. Reemplazar NaN con el promedio
promedio_ventas = df['Ventas'].mean()
df['Ventas'] = df['Ventas'].fillna(promedio_ventas)

# 3. Eliminar duplicados
df = df.drop_duplicates()

print(df)
#   Producto  Ventas    Mes
# 0        A  1500.0  Enero
# 1        B  2300.0  Enero
# 2        C  2033.3  Enero
```

---

## 6. Optimización: Ajuste de Hiperparámetros

Los hiperparámetros son configuraciones externas al modelo que se definen antes del entrenamiento (ej: profundidad de un árbol, número de vecinos en KNN).

### Grid Search

Prueba **todas** las combinaciones posibles de una malla definida. Exhaustivo pero costoso.

### Random Search

Prueba combinaciones aleatorias. Más rápido, explora rangos más amplios.

| Característica | Grid Search | Random Search |
|---------------|-------------|---------------|
| Tipo de búsqueda | Exhaustiva | Aleatoria |
| Tiempo de cómputo | Alto | Moderado o bajo |
| Control del proceso | Alto | Medio |
| Recomendado cuando | Pocos hiperparámetros | Muchos hiperparámetros |

**Ejemplo — Predicción de abandono (churn) con árbol de decisión:**

```python
from sklearn.model_selection import train_test_split, GridSearchCV
from sklearn.tree import DecisionTreeClassifier
from sklearn.metrics import accuracy_score, classification_report

data = {
    'antiguedad': [1, 3, 5, 2, 7, 8, 4, 6],
    'consumo': [200, 150, 300, 180, 400, 420, 210, 350],
    'reclamos': [3, 1, 0, 2, 0, 0, 1, 0],
    'abandono': [1, 0, 0, 1, 0, 0, 0, 0]
}
df = pd.DataFrame(data)

X = df[['antiguedad', 'consumo', 'reclamos']]
y = df['abandono']
X_train, X_test, y_train, y_test = train_test_split(
    X, y, test_size=0.3, random_state=42
)

modelo = DecisionTreeClassifier(random_state=42)
parametros = {
    'max_depth': [2, 3, 4],
    'min_samples_split': [2, 4, 6]
}

grid = GridSearchCV(estimator=modelo, param_grid=parametros,
                    cv=3, scoring='accuracy')
grid.fit(X_train, y_train)

mejor_modelo = grid.best_estimator_
y_pred = mejor_modelo.predict(X_test)

print("Mejores hiperparámetros:", grid.best_params_)  # max_depth=3, min_samples_split=2
print("Exactitud:", accuracy_score(y_test, y_pred))    # 0.83
```

---

## 7. Conclusiones

- Python integra todo el flujo de minería de datos: limpieza, modelado, visualización y evaluación.
- `scikit-learn` estandariza la implementación de algoritmos de clasificación y clustering.
- `matplotlib` y `seaborn` permiten comunicar resultados de forma clara.
- La validación cruzada reduce el riesgo de sobreajuste y da evaluaciones más confiables.
- El preprocesamiento con `pandas` es obligatorio: datos sucios producen modelos malos.
- El ajuste de hiperparámetros (Grid Search / Random Search) maximiza el rendimiento del modelo.

---

## 8. Glosario

| Término | Definición breve |
|---|---|
| **Data Mining** | Proceso de descubrir patrones útiles en grandes volúmenes de datos |
| **Clasificación** | Predecir una categoría o etiqueta |
| **Clustering** | Agrupar datos similares sin etiquetas previas |
| **Feature** | Variable o columna utilizada como entrada del modelo |
| **Hiperparámetro** | Configuración externa del modelo antes del entrenamiento |
| **Validación cruzada** | Evaluar el modelo con varias particiones de datos |
| **Preprocesamiento** | Limpiar y transformar datos antes de entrenar |

---

## 9. Recursos

- PDF de la clase: `./analisis-estadistico-data-mining-mineria-datos-python-clase-11.pdf`
- Código fuente: ejemplos integrados en este documento

---

## 10. Preguntas de Reflexión

1. ¿Qué ventaja tiene la validación cruzada frente a una sola partición entrenamiento/prueba?
2. ¿En qué casos conviene más Random Search que Grid Search?
3. ¿Por qué es necesario estandarizar los datos antes de aplicar K-means?
4. ¿Qué métrica de clasificación priorizarías si el costo de un falso positivo es muy alto?
