# SOLUCIÓN ACTIVIDAD 4 — DISEÑO DE SOLUCIONES CON IA

**Curso:** Diseño de Soluciones con Inteligencia Artificial (ISIL, 2026-1)  
**Docente:** Omar David Visitación Romero  
**Caso:** SaludPlus Digital — Modelado y Evaluación de Soluciones de IA  
**Fecha:** Junio 2026

---

## Contexto del Caso

SaludPlus Digital administra una plataforma usada por clínicas, laboratorios y pacientes para registrar citas, resultados médicos y pagos. La empresa enfrenta tres problemas críticos:

1. **Pacientes que no asisten a sus citas** → pérdida de tiempo médico, espacios vacíos.
2. **Tiempos de espera impredecibles** → de 15 a 90 minutos sin explicación.
3. **Necesidad de segmentar pacientes** → campañas comerciales poco efectivas.

El equipo de datos tiene registros históricos con variables numéricas, categóricas y textos libres, pero con valores faltantes, categorías repetidas y registros extremos. Además, un modelo complejo probado recientemente funcionó bien con datos antiguos pero falló con nuevos (overfitting). Existe debate interno entre maximizar la precisión global versus otras métricas, y entre modelos interpretables versus de alto rendimiento.

---

## PREGUNTA 1: Tipos de Problemas de Aprendizaje Automático y Criterios de Selección (10 puntos)

### 1.1 Identificación de los Tres Problemas de ML

SaludPlus Digital presenta **tres tipos distintos de aprendizaje automático**, cada uno con un objetivo diferente:

| Problema | Tipo de ML | Target (salida) | Datos de entrada (features) | Ejemplo concreto |
|---|---|---|---|---|
| **Predecir inasistencia** | Supervisado — Clasificación | Sí/No (binario) | Edad, especialidad, seguro, sede, historial de citas | "Paciente A tiene 78% de probabilidad de no asistir" |
| **Estimar tiempo de espera** | Supervisado — Regresión | Valor numérico continuo (minutos) | Hora del día, sede, médico asignado, pacientes en cola, tipo de seguro | "En Sede Surco a las 10am, el tiempo estimado es 35 minutos" |
| **Segmentar pacientes** | No supervisado — Clustering | Grupos sin etiqueta previa | Frecuencia de visitas, monto pagado, servicios consumidos, patrones de cita | "Grupo 1: pacientes frecuentes con seguro premium" |

---

### 1.2 Problema 1: Predicción de Inasistencia (Clasificación Supervisada)

#### ¿Por qué es clasificación supervisada?

- El target es **binario**: el paciente asiste (SÍ) o no asiste (NO).
- Tenemos **etiquetas históricas**: sabemos de registros pasados quiénes faltaron y quiénes asistieron.
- El modelo aprende de ejemplos conocidos para predecir casos nuevos.

#### Variables relevantes

| Tipo | Variables | Ejemplo |
|---|---|---|
| **Numéricas** | Edad, días desde última cita, número de citas anteriores | Edad=45, Citas previas=3 |
| **Categóricas** | Especialidad, tipo de seguro, sede | Cardiología, SIS, Surco |
| **Derivadas** | Tasa de inasistencia histórica, distancia a la sede, hora de la cita | 40% inasistencias previas |

#### Algoritmos candidatos

| Algoritmo | Ventaja principal | Limitación principal | Cuándo usarlo |
|---|---|---|---|
| **Regresión Logística** | Interpretable, probabilidades calibradas | Asume relación lineal | Cuando el equipo médico exige explicabilidad |
| **Random Forest** | Captura interacciones complejas, robusto a outliers | Menos interpretable | Balance entre rendimiento y explicabilidad |
| **XGBoost** | Alto rendimiento, maneja datos desbalanceados | Requiere tuning, más lento | Cuando la prioridad es maximizar F1-Score |
| **Árbol de Decisión** | Fácil de explicar visualmente | Inestable, propenso a overfitting | Cuando se necesita un diagrama de decisión para el personal |

#### Criterio de selección recomendado

Dado que **el área médica exige explicabilidad** y **el área comercial quiere resultados**, la recomendación es:

```
Opción principal:  Random Forest
  → Balance entre rendimiento y capacidad de explicar decisiones
  → Permite calcular "feature importance" (qué variables más influyen)

Opción complementaria: Regresión Logística
  → Para reportes médicos donde se necesita transparencia total
  → Coeficientes directamente interpretables
```

#### El dilema de la inasistencia excesiva

El caso menciona que "si el sistema marca demasiados pacientes como 'posible inasistencia', el personal termina llamando innecesariamente". Esto es un problema de ** Precision vs Recall**:

| Métrica | Significado | Consecuencia de optimizarla |
|---|---|---|
| **Recall alto** | Detectamos casi todos los que van a faltar | Pero llamamos a muchos que SÍ iban a asistir (falsos positivos) |
| **Precision alta** | Cuando decimos "va a faltar", casi siempre acertamos | Pero dejamos de detectar algunos que sí faltan (falsos negativos) |

**Decisión:** Optimizar **F1-Score** (balance entre ambas) o usar un **umbral de probabilidad ajustable**:

```python
# Ejemplo: umbral ajustable según capacidad del personal
probabilidades = modelo.predict_proba(X_nuevos)[:, 1]

# Si hay personal suficiente → umbral bajo (0.3) → más recall
# Si hay personal limitado → umbral alto (0.7) → más precision
umbral = 0.5
predicciones = (probabilidades >= umbral).astype(int)
```

---

### 1.3 Problema 2: Estimación de Tiempo de Espera (Regresión Supervisada)

#### ¿Por qué es regresión supervisada?

- El target es un **valor continuo**: número de minutos de espera.
- Tenemos **historiales con tiempos reales** registrados.
- El modelo aprenderá a estimar el tiempo para futuras citas.

#### Variables relevantes

| Tipo | Variables | Impacto esperado |
|---|---|---|
| **Temporales** | Hora del día, día de la semana, mes | Horas pico = más espera |
| **Operativas** | Sede, médico, pacientes en cola, tipo de consulta | Médico popular = más cola |
| **Del paciente** | Tipo de seguro, especialidad, edad | Seguros públicos = más trámite |

#### Algoritmos candidatos

| Algoritmo | Ventaja | Limitación | Cuándo usarlo |
|---|---|---|---|
| **Regresión Lineal** | Interpretable, rápido | No captura relaciones no lineales | Primera aproximación, baseline |
| **Random Forest Regressor** | Captura interacciones, robusto | Menos interpretable | Datos con patrones complejos |
| **Gradient Boosting (XGBoost Regressor)** | Alto rendimiento | Requiere más datos y tuning | Cuando se necesita precisión máxima |
| **Neural Network** | Patrones muy complejos | Caja negra, requiere muchos datos | Solo si hay >10,000 registros limpios |

#### Criterio de selección recomendado

```
Opción principal:  Random Forest Regressor
  → Maneja bien combinaciones de variables categóricas y numéricas
  → Robusto a los outliers (pacientes con espera de 120+ min)
  → Permite identificar qué factores más influyen en la espera

Baseline obligatorio: Regresión Lineal
  → Para comparar y demostrar si un modelo complejo realmente aporta valor
```

#### Métrica de evaluación

| Métrica | Fórmula | Interpretación |
|---|---|---|
| **MAE** (Mean Absolute Error) | Promedio de \|predicho - real\| | "El modelo se equivoca en promedio X minutos" |
| **RMSE** (Root Mean Squared Error) | Raíz del error cuadrático promedio | Penaliza más los errores grandes |
| **R²** | Proporción de varianza explicada | 1.0 = perfecto, 0.0 = no explica nada |

**Ejemplo de interpretación:**
```
MAE = 12 minutos
→ En promedio, la estimación se equivoca 12 minutos
→ Si el modelo dice "espera 30 min", el real puede ser 18-42 min
→ Útil para reorganizar turnos con margen de tolerancia
```

---

### 1.4 Problema 3: Segmentación de Pacientes (Clustering No Supervisado)

#### ¿Por qué es clustering no supervisado?

- **No hay etiquetas previas**: no sabemos cuántos grupos ni qué tipo de pacientes existen.
- El objetivo es **descubrir patrones ocultos** en el comportamiento.
- El área comercial espera "descubrir segmentos útiles para futuras campañas".

#### Variables relevantes

| Tipo | Variables | Lo que captura |
|---|---|---|
| **Frecuencia** | Número de citas por año, periodicidad | Pacientes regulares vs esporádicos |
| **Consumo** | Monto pagado, servicios utilizados, tipo de seguro | Valor económico del paciente |
| **Temporalidad** | Días desde última cita, horarios preferidos | Actividad reciente y preferencias |
| **Texto libre** | Comentarios de encuestas | Satisfacción, quejas, sugerencias (requiere NLP) |

#### Algoritmos candidatos

| Algoritmo | Ventaja | Limitación | Cuándo usarlo |
|---|---|---|---|
| **K-Means** | Rápido, escalable, fácil de interpretar | Requiere definir K previamente | Cuando se puede estimar número de grupos |
| **DBSCAN** | Detecta outliers y clusters de forma irregular | Sensible a parámetros de densidad | Cuando los grupos no son esféricos |
| **Hierarchical Clustering** | Muestra árbol de relaciones (dendrograma) | Lento con muchos datos | Para exploración inicial |
| **K-Means con Silhouette Score** | Evalúa calidad del clustering automáticamente | Solo sugiere K, no resuelve todo | Para validar número óptimo de grupos |

#### Criterio de selección recomendado

```
Opción principal:  K-Means con Silhouette Analysis
  → Rápido para miles de registros
  → El dendrograma de Hierarchical puede sugerir K inicial
  → Silhouette Score valida si los grupos son coherentes

Procesamiento del texto libre:
  → Aplicar NLP (TF-IDF + Sentiment Analysis) antes del clustering
  → Extraer sentimiento como variable numérica adicional
```

#### Hallazgo esperado (ejemplo)

```
Cluster 1: "Pacientes Frecuentes Premium" (15%)
  → Seguro privado, citas cada 3 meses, alto consumo
  → Acción: Programa de lealtad, prioridad en citas

Cluster 2: "Pacientes Esporádicos" (35%)
  → Seguro público, 1-2 citas al año, bajo consumo
  → Acción: Campañas de prevención, recordatorios

Cluster 3: "Pacientes en Riesgo de Abandono" (25%)
  → Sin cita en los últimos 6 meses, quejas frecuentes
  → Acción: Llamada de seguimiento, encuesta de satisfacción

Cluster 4: "Pacientes de Urgencia" (25%)
  → Solo aparecen en emergencias, sin cita regular
  → Acción: Derivación a atención primaria, educación preventiva
```

---

### 1.5 Criterios Generales de Selección de Modelos

Más allá del tipo de problema, la selección debe considerar **tres ejes**:

| Criterio | Preguntas clave | Impacto en SaludPlus |
|---|---|---|
| **Naturaleza del problema** | ¿El target es categórico, continuo o no tiene etiqueta? | Define si es clasificación, regresión o clustering |
| **Calidad y cantidad de datos** | ¿Cuántos registros hay? ¿Están limpios? ¿Hay etiquetas? | Con pocos datos, modelos simples superan a complejos |
| **Requisitos del negocio** | ¿Se necesita explicabilidad? ¿Qué tan rápido debe responder? | El área médica pide interpretabilidad; la comercial pide rendimiento |

#### Matriz de decisión final

| Modelo | Clasificación (Inasistencia) | Regresión (Tiempo Espera) | Clustering (Segmentación) |
|---|---|---|---|
| **Regresión Logística / Lineal** | ✅ Primera opción si importa explicar | ✅ Baseline obligatorio | ❌ No aplica |
| **Random Forest** | ✅ Mejor balance rendimiento/explicabilidad | ✅ Opción principal | ❌ No aplica |
| **XGBoost** | ✅ Si hay suficientes datos (>5000) | ✅ Si se necesita precisión máxima | ❌ No aplica |
| **K-Means** | ❌ No aplica | ❌ No aplica | ✅ Opción principal |
| **DBSCAN** | ❌ No aplica | ❌ No aplica | ✅ Si hay outliers importantes |

---

## PREGUNTA 2: Evaluación del Desempeño antes de Implementar (10 puntos)

### 2.1 El Problema del Caso: Overfitting

El caso describe que "el equipo técnico probó un modelo muy complejo que obtuvo buenos resultados en los datos antiguos. Sin embargo, cuando se aplicó a nuevos registros, el rendimiento bajó".

**Diagnóstico:** Overfitting — el modelo memorizó los datos de entrenamiento en lugar de aprender patrones generales.

```
¿Qué pasó?
━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
Datos antiguos (entrenamiento):  Precisión = 92%
Datos nuevos (prueba):           Precisión = 58%
Diferencia:                      -34 puntos → OVERFITTING GRAVE
━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
```

**Causa probable:** El modelo es demasiado complejo para la cantidad de datos, o fue evaluado en los mismos datos con los que se entrenó.

---

### 2.2 Procedimiento Correcto de Evaluación

#### Paso 1: Separar los datos correctamente

Nunca evaluar el modelo con los mismos datos usados para entrenar.

```
Dataset Original (registros históricos)
    │
    ├── Entrenamiento (60%): El modelo aprende aquí
    │     └── Patrones, pesos, decisiones
    │
    ├── Validación (20%): Se ajustan hiperparámetros
    │     └── Número de árboles, profundidad, umbral
    │
    └── Prueba (20%): Evaluación FINAL
          └── Se toca UNA SOLA VEZ al final
```

**Código conceptual:**

```python
from sklearn.model_selection import train_test_split

# Separar prueba (20%) ANTES de cualquier cosa
X_temp, X_test, y_temp, y_test = train_test_split(
    X, y, test_size=0.2, random_state=42, stratify=y
)

# Separar entrenamiento (60%) y validación (20%)
X_train, X_val, y_train, y_val = train_test_split(
    X_temp, y_temp, test_size=0.25, random_state=42, stratify=y_temp
)

print(f"Entrenamiento: {X_train.shape[0]} registros")
print(f"Validación:    {X_val.shape[0]} registros")
print(f"Prueba:        {X_test.shape[0]} registros")
```

---

#### Paso 2: Métricas de evaluación por tipo de problema

##### A. Para Clasificación (Inasistencia Sí/No)

**Matriz de Confusión:**

```
                        PREDICCIÓN
                   ┌─────────────┬─────────────┐
                   │  Asiste (N) │ No Asiste (S)│
         ┌─────────┼─────────────┼─────────────┤
REAL     │ Asiste  │     TN      │     FP      │ ← Falso Positivo
         │         │             │             │   (llamamos innecesariamente)
         ├─────────┼─────────────┼─────────────┤
         │ No Asiste│    FN      │     TP      │ ← Falso Negativo
         │         │             │             │   (no detectamos la inasistencia)
         └─────────┴─────────────┴─────────────┘
```

**Métricas derivadas:**

| Métrica | Fórmula | Qué mide | En SaludPlus |
|---|---|---|---|
| **Accuracy** | (TP+TN)/(Total) | % total de aciertos | ❌ Engañosa si hay pocos inasistentes |
| **Precision** | TP/(TP+FP) | De los que marcamos como "faltan", ¿cuántos realmente faltaron? | Mide cuántas llamadas innecesarias hacemos |
| **Recall** | TP/(TP+FN) | De los que realmente faltaron, ¿cuántos detectamos? | Mide cuántos inasistentes se nos escapan |
| **F1-Score** | 2×(P×R)/(P+R) | Balance entre Precision y Recall | ✅ Métrica principal recomendada |

**¿Por qué NO usar solo Accuracy?**

```
Supongamos: 100 pacientes, 90 asisten, 10 faltan

Modelo malo: Predice "asiste" para TODOS
  → Accuracy = 90/100 = 90% ← ¡Parece bueno pero no detecta NINGUNA inasistencia!

Modelo útil: Detecta 8 de 10 faltas
  → Accuracy = 82% ← Parece peor pero SÍ resuelve el problema
```

**Métrica recomendada:** F1-Score o **AUC-ROC** (mide la capacidad de discriminar entre asistencia y inasistencia).

---

##### B. Para Regresión (Tiempo de Espera)

| Métrica | Fórmula | Interpretación |
|---|---|---|
| **MAE** | (1/n) × Σ\|ŷ - y\| | Error promedio en minutos |
| **RMSE** | √((1/n) × Σ(ŷ - y)²) | Penaliza errores grandes (una espera de 90 min estimada en 20 min es grave) |
| **R²** | 1 - (SS_res / SS_tot) | % de varianza explicada por el modelo |

**Criterio de aceptación:**
```
MAE < 15 minutos  → Aceptable para reorganizar turnos
MAE < 10 minutos  → Excelente
MAE > 20 minutos  → Insuficiente, necesita mejorar
```

---

##### C. Para Clustering (Segmentación)

| Métrica | Qué mide | Rango |
|---|---|---|
| **Silhouette Score** | Qué tan similar es un paciente a su propio cluster vs. otros clusters | -1 a 1 (mayor = mejor) |
| **Davies-Bouldin Index** | Separación entre clusters | Menor = mejor |
| **Inercia (K-Means)** | Compacidad de los clusters | Menor = mejor (pero disminuye con más K) |

**Regla práctica:**
```
Silhouette > 0.5  → Clusters bien definidos
Silhouette 0.25-0.5 → Clusters aceptables, revisar
Silhouette < 0.25 → Clusters débiles, reconsiderar K o variables
```

---

#### Paso 3: Validación Cruzada (K-Fold)

Para mayor confiabilidad, usar validación cruzada en lugar de un solo split:

```python
from sklearn.model_selection import cross_val_score
from sklearn.ensemble import RandomForestClassifier

modelo = RandomForestClassifier(n_estimators=100, random_state=42)

# Validación cruzada de 5 pliegues
scores_f1 = cross_val_score(modelo, X_train, y_train, cv=5, scoring='f1')
scores_auc = cross_val_score(modelo, X_train, y_train, cv=5, scoring='roc_auc')

print(f"F1-Score promedio: {scores_f1.mean():.3f} (+/- {scores_f1.std():.3f})")
print(f"AUC-ROC promedio:  {scores_auc.mean():.3f} (+/- {scores_auc.std():.3f})")
```

**¿Por qué?** Porque un solo split puede ser "afortunado" o "desafortunado". Con 5 folds, entrenas y evalúas 5 veces con diferentes porciones, y promedias.

---

#### Paso 4: Validación con Datos Temporales (Time Series Split)

SaludPlus tiene registros históricos con componente temporal. El split aleatorio puede causar **data leakage** (usar datos del futuro para predecir el pasado).

```python
from sklearn.model_selection import TimeSeriesSplit

# Para datos ordenados cronológicamente
tscv = TimeSeriesSplit(n_splits=5)

for train_idx, test_idx in tscv.split(X):
    X_train_cv, X_test_cv = X.iloc[train_idx], X.iloc[test_idx]
    y_train_cv, y_test_cv = y.iloc[train_idx], y.iloc[test_idx]
    # Entrenar y evaluar
```

**Regla:** Si los datos tienen fecha, NUNCA hacer split aleatorio. Usar siempre TimeSeriesSplit.

---

### 2.3 El Debate: Accuracy Global vs. Otras Métricas

El caso menciona que "algunos directivos piden usar siempre el modelo con mayor porcentaje global de aciertos". Esto es problemático:

#### Por qué Accuracy global no es suficiente

| Situación | Accuracy del modelo | Problema oculto |
|---|---|---|
| 95% de pacientes asisten, 5% faltan | Modelo que predice "todos asisten" = **95% accuracy** | No detecta NINGUNA inasistencia |
| 10% de pacientes son de alto riesgo | Modelo que identifica solo casos "fáciles" = **92% accuracy** | Los casos críticos se escapan |

#### La solución: Métricas por clase y análisis de errores

```python
from sklearn.metrics import classification_report

# Reporte detallado por clase
print(classification_report(y_test, y_pred, 
                          target_names=['Asiste', 'No Asiste']))
```

**Salida esperada:**

```
              precision    recall  f1-score   support

     Asiste       0.94      0.97      0.95       180
  No Asiste       0.82      0.68      0.74        25

    accuracy                           0.93       205
   macro avg       0.88      0.82      0.85       205
weighted avg       0.93      0.93      0.92       205
```

**Interpretación:**
- Accuracy global = 93% (parece excelente)
- Pero Recall para "No Asiste" = 68% → se escapan 32% de inasistentes
- F1 para "No Asiste" = 0.74 → aceptable pero mejorable

---

### 2.4 Criterios de Aceptación según Área

El caso menciona que cada área tiene necesidades distintas. La evaluación debe incluir **criterios por stakeholder**:

| Área | Criterio principal | Métrica clave | Umbral mínimo |
|---|---|---|---|
| **Médica** | Explicabilidad | Coeficientes de Regresión Logística o Feature Importance de RF | Cada predicción debe poder justificarse con variables concretas |
| **Comercial** | Rendimiento en campañas masivas | F1-Score, AUC-ROC | F1 > 0.75, AUC > 0.80 |
| **Sistemas** | Tiempo de respuesta | Latencia de predicción | < 200ms por predicción |
| **Gerencia** | Impacto de negocio | Reducción de inasistencias, ROI | Reducir inasistencias ≥ 20% |

#### Framework de decisión multi-criterio

```
Evaluación Final = w₁ × Explicabilidad + w₂ × Rendimiento + w₃ × Velocidad + w₄ × ROI

Donde:
  w₁ = 0.30 (Médica exige explicabilidad)
  w₂ = 0.30 (Comercial quiere resultados)
  w₃ = 0.15 (Sistemas requiere velocidad)
  w₄ = 0.25 (Gerencia mide negocio)
```

---

### 2.5 Estrategia de Evaluación Recomendada para SaludPlus

#### Flujo completo de evaluación

```
┌─────────────────────────────────────────────────────────────────┐
│                    EVALUACIÓN DE MODELOS                        │
├─────────────────────────────────────────────────────────────────┤
│                                                                 │
│  1. DATOS                                                      │
│     ├─ Limpiar valores faltantes (KNN, Media/Mediana)          │
│     ├─ Codificar variables categóricas (One-Hot Encoding)      │
│     ├─ Estandarizar numéricas (Min-Max o Z-Score)              │
│     └─ Dividir: 60% train / 20% val / 20% test                │
│                                                                 │
│  2. MODELOS CANDIDATOS                                         │
│     ├─ Clasificación: LogReg, RF, XGBoost                      │
│     ├─ Regresión: LinReg, RF-Reg, XGB-Reg                      │
│     └─ Clustering: K-Means (K=3,4,5), DBSCAN                  │
│                                                                 │
│  3. EVALUACIÓN EN VALIDACIÓN                                   │
│     ├─ Cross-validation (5 folds)                              │
│     ├─ Métricas por clase (no solo accuracy)                   │
│     └─ Matriz de confusión, F1, AUC-ROC, MAE                  │
│                                                                 │
│  4. EVALUACIÓN EN PRUEBA (una sola vez)                        │
│     ├─ Métrica final reportada                                 │
│     ├─ Análisis de falsos positivos/negativos                  │
│     └─ Costo de error por tipo de fallo                        │
│                                                                 │
│  5. VALIDACIÓN DE NEGOCIO                                      │
│     ├─ ¿Reduce inasistencias ≥ 20%?                           │
│     ├─ ¿Responde en < 200ms?                                  │
│     ├─ ¿El personal médico puede explicar la predicción?       │
│     └─ ¿El ROI justifica la inversión?                        │
│                                                                 │
│  6. DECISIÓN FINAL                                             │
│     ├─ Aprobar → Pasar a producción piloto                     │
│     ├─ Rechazar → Ajustar hiperparámetros o recolectar datos  │
│     └─ Revisar → Cambiar enfoque de modelado                   │
│                                                                 │
└─────────────────────────────────────────────────────────────────┘
```

---

### 2.6 Tabla Resumen: Qué Evaluar antes de Implementar

| Aspecto a evaluar | Qué verificar | Herramienta | Criterio de aceptación |
|---|---|---|---|
| **Overfitting** | ¿Accuracy de train >> test? | Comparar métricas train/val/test | Diferencia < 10 puntos |
| **Generalización** | ¿Funciona con datos nuevos? | Validación cruzada (5-fold) | F1 promedio estable (std < 0.05) |
| **Sesgo de clases** | ¿El modelo ignora la clase minoritaria? | Classification report por clase | Recall clase minoritaria > 60% |
| **Velocidad** | ¿Responde a tiempo? | Benchmark de latencia | < 200ms por predicción |
| **Explicabilidad** | ¿Se puede justificar cada predicción? | Feature importance, SHAP values | Cada variable tiene interpretabilidad clara |
| **Robustez temporal** | ¿Funciona con datos de distintos meses? | Time Series Split | Performance estable en todos los folds temporales |
| **Impacto de negocio** | ¿Resuelve el problema real? | A/B test piloto | Reducción de inasistencias ≥ 20% en 30 días |

---

## CONCLUSIÓN

SaludPlus Digital necesita **tres soluciones de ML distintas**, cada una con su tipo de problema y criterios de evaluación:

1. **Clasificación (inasistencia):** Random Forest con F1-Score como métrica principal, umbral ajustable según capacidad del personal, y explicabilidad garantizada con Feature Importance.

2. **Regresión (tiempo de espera):** Random Forest Regressor con MAE como métrica clave, baseline con Regresión Lineal para demostrar valor agregado del modelo complejo.

3. **Clustering (segmentación):** K-Means con Silhouette Score para validar calidad de grupos, texto libre procesado con NLP antes del clustering.

**La evaluación debe ir más allá del accuracy global.** Los directivos que piden "el modelo con más aciertos" están cayendo en una trampa estadística. La métrica correcta depende del problema de negocio: F1-Score para clasificación, MAE para regresión, Silhouette para clustering.

**Antes de implementar:** split correcto (60/20/20), validación cruzada, métricas por clase, análisis de costo de error, y un piloto controlado de al menos 30 días con medición de impacto real.

---

## Fuentes

Las afirmaciones y datos provienen de estas fuentes.  
Tipo: **oficial** = autor/creador; **tercero** = prensa o fuente secundaria.

### Machine Learning y Evaluación de Modelos

| # | Fuente | Tipo | URL |
|---|---|---|---|
| 1 | Scikit-learn Documentation. *Model Evaluation* | Oficial | https://scikit-learn.org/stable/model_evaluation.html |
| 2 | Brownlee, J. (2018). *How to Configure the k-Fold Cross-Validation Procedure* | Académica | https://machinelearningmastery.com/k-fold-cross-validation/ |
| 3 | Provost, F. & Fawcett, T. (2013). *Data Science for Business* | Académica | O'Reilly Media |

### Calidad de Datos y Preprocesamiento

| # | Fuente | Tipo | URL |
|---|---|---|---|
| 4 | Wickham, H. (2014). *Tidy Data* | Académica | https://vita.had.co.nz/papers/tidy-data.html |
| 5 | Scikit-learn Documentation. *Imputation of Missing Values* | Oficial | https://scikit-learn.org/stable/modules/impute.html |

### Overfitting y Regularización

| # | Fuente | Tipo | URL |
|---|---|---|---|
| 6 | Goodfellow, I. et al. (2016). *Deep Learning* | Académica | MIT Press |
| 7 | Hastie, T. et al. (2009). *The Elements of Statistical Learning* | Académica | Springer |

### Clustering

| # | Fuente | Tipo | URL |
|---|---|---|---|
| 8 | Scikit-learn Documentation. *Clustering* | Oficial | https://scikit-learn.org/stable/modules/clustering.html |
| 9 | Rousseeuw, P. (1987). *Silhouettes: A Graphical Aid to the Interpretation of Clusters* | Académica | Journal of Computational and Applied Mathematics |

---

*Documento preparado para la Actividad 4 del curso Diseño de Soluciones con IA — ISIL 2026-1.*
