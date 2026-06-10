# SOLUCIÓN ACTIVIDAD 3 — DISEÑO DE SOLUCIONES CON IA

**Curso:** Diseño de Soluciones con Inteligencia Artificial (ISIL, 2026-1)  
**Docente:** Omar David Visitación Romero  
**Tema:** Caso de Negocio de E-commerce: Predicción de Recompra y Segmentación de Clientes  
**Fecha:** Junio 2026

---

## Contexto del Caso

Una empresa peruana de e-commerce de productos de cuidado personal enfrenta un desafío crítico: a pesar de incrementar inversión en campañas digitales, las ventas no crecen proporcionalmente con las visitas al sitio web. El área de marketing detectó alto abandono de carrito y necesita transformar sus datos en decisiones estratégicas.

---

## PREGUNTA 1: Problemas del Dataset y Acciones de Limpieza, Protección y Preparación

### 1.1 Diagnóstico de Problemas Identificados

El dataset del caso presenta **múltiples deficiencias de calidad** que impiden su uso directo para análisis o modelado:

#### A. Problemas Estructurales y de Calidad

| Problema | Descripción | Impacto |
|---|---|---|
| **Registros incompletos** | Campos vacíos o valores faltantes | Sesgo en análisis y predicciones |
| **Clientes duplicados** | Registros repetidos de la misma persona | Inflación de transacciones y falsa variabilidad |
| **Formatos inconsistentes de fechas** | Fechas en diferentes formatos (DD/MM/YYYY, YYYY-MM-DD, etc.) | Imposibilidad de ordenar, agrupar o comparar temporalmente |
| **Distritos mal escritos** | Errores de tipografía ("San Isidro", "San isidro", "SANISIDRO") | El sistema los trata como ubicaciones diferentes |
| **Correos electrónicos con errores** | Correos duplicados, con espacios o caracteres inválidos | Imposibilidad de contactar o vincular registros |

#### B. Impacto Directo en Soluciones de IA

- **Datos sucios generan predicciones erróneas:** Un modelo entrenado con registros duplicados o mal formatados aprenderá patrones falsos.
- **Pérdida de información:** Registros incompletos sesgan el modelo hacia segmentos específicos.
- **Falta de confiabilidad:** Los resultados no pueden ser confiables para tomar decisiones comerciales.

### 1.2 Plan de Limpieza y Preparación (Data Wrangling)

Siguiendo el estándar de **Tidy Data** (Wickham, 2014), aplicaremos un flujo estructurado:

```
Datos Crudos
    ↓
[1. Exploración y Diagnóstico]
    ↓
[2. Limpieza de Valores Faltantes]
    ↓
[3. Detección de Duplicados]
    ↓
[4. Normalización y Homogeneización]
    ↓
[5. Validación Ética y Legal]
    ↓
Datos Listos para Análisis
```

#### Fase 1: Exploración y Diagnóstico

**Acciones:**

1. **Auditar el dataset completo**
   - Contar valores nulos por columna
   - Identificar patrones de ausencia (MCAR, MAR, MNAR)
   - Registrar dimensiones actuales (filas y columnas)

2. **Analizar distribuciones iniciales**
   - Histogramas de variables numéricas (edad, ingresos)
   - Frecuencias de variables categóricas (región, producto)
   - Detectar outliers iniciales

**Ejemplo de salida esperada:**
```
Dataset Original:
- Filas: 45,000 registros
- Columnas: 12 atributos
- Datos nulos: 8% de celdas vacías (principalmente en teléfono, ingresos)
- Duplicados potenciales: ~2% de registros repetidos (por correo)
```

---

#### Fase 2: Limpieza de Valores Faltantes

**Estrategia según tipo de ausencia:**

| Variable | Tipo de Ausencia | Estrategia | Justificación |
|---|---|---|---|
| **Teléfono** | MAR (usuarios que omiten deliberadamente) | Eliminar si es <5% de registros; para segmentos críticos, marcar como "No disponible" | El teléfono no es obligatorio para comprar |
| **Ingresos** | MAR (correlación con educación/ocupación) | Imputación por KNN (3-5 vecinos similares en edad, región, historial de compra) | Predecir ingresos basado en comportamiento similar |
| **Historial de compras (fechas)** | MCAR (errores del sistema) | Forward Fill (propagar último valor conocido) para series temporales | Mantiene continuidad temporal sin sesgar |

**Código conceptual:**

```python
# Estrategia: Detección de patrones de ausencia

# Clientes con teléfono faltante → revisar si correlaciona con ingresos nulos
datos_incompletos = df[df['telefono'].isnull()]
print(f"% de ingresos nulos en clientes sin teléfono: {datos_incompletos['ingresos'].isnull().sum()}")

# Imputación KNN para ingresos (usar características similares)
from sklearn.impute import KNNImputer
imputer = KNNImputer(n_neighbors=3)
df['ingresos_imputados'] = imputer.fit_transform(df[['edad', 'ingresos']])

# Forward Fill para fechas en series de compra
df_compras = df.sort_values('fecha_compra')
df_compras['fecha_compra_limpia'] = df_compras['fecha_compra'].fillna(method='ffill')
```

---

#### Fase 3: Detección y Eliminación de Duplicados

**Acciones:**

1. **Identificar duplicados por clave única (correo + teléfono)**
   ```python
   duplicados = df[df.duplicated(subset=['correo_electronico', 'telefono'], keep=False)]
   print(f"Duplicados encontrados: {len(duplicados)}")
   ```

2. **Resolver duplicados:**
   - Si tienen exactamente los mismos datos → Eliminar copia exacta
   - Si tienen datos parcialmente diferentes → Investigar si es realmente el mismo cliente
   - Si es mismo cliente con múltiples registros → Mantener registro más reciente, combinar historial

**Ejemplo:**
```
Registro 1: juan.perez@gmail.com, Tel: 987654321, Compra: 2026-04-20, Monto: $150
Registro 2: juan.perez@gmail.com, Tel: 987654321, Compra: 2026-04-15, Monto: $200

Decisión: Consolidar en un único registro con:
- Cliente: juan.perez@gmail.com
- Historial consolidado: [2026-04-15: $200, 2026-04-20: $150]
- Total gastado: $350
```

---

#### Fase 4: Normalización y Homogeneización

**A. Estandarizar Formatos de Texto**

| Campo | Problema | Solución |
|---|---|---|
| **Distritos** | "San Isidro", "san isidro", "SANISIDRO" | Convertir a mayúsculas + validar contra catálogo oficial INEI |
| **Correos** | Espacios en blanco, mayúsculas inconsistentes | `.lower()` + `.strip()` + validar formato |
| **Nombres de clientes** | Mayúsculas/minúsculas inconsistentes | Title Case (Juan Pérez) |

**Código:**
```python
# Normalizar distritos (usar diccionario de referencia)
distritos_validos = {'MIRAFLORES', 'SAN ISIDRO', 'LA MOLINA', 'SURCO'}
df['distrito_normalizado'] = df['distrito'].str.upper().str.strip()

# Validar contra catálogo
df['distrito_valido'] = df['distrito_normalizado'].isin(distritos_validos)

# Correos
df['correo_normalizado'] = df['correo'].str.lower().str.strip()
```

**B. Estandarizar Formatos de Fechas**

```python
# Convertir todas las fechas al formato ISO 8601 (YYYY-MM-DD)
df['fecha_compra'] = pd.to_datetime(df['fecha_compra'], errors='coerce')

# Detectar fechas inválidas (errores de coerce)
fechas_invalidas = df[df['fecha_compra'].isnull()].shape[0]
print(f"Fechas imposibles de convertir: {fechas_invalidas}")
```

**C. Estandarizar Monedas y Valores Numéricos**

- Convertir todos los montos a la misma moneda (soles peruanos)
- Establecer rango válido (ej: $1-$10,000 es creíble; $0.01 o $999,999 requieren revisión)

---

#### Fase 5: Validación Ética y Legal

**A. Protección de Datos Personales (Ley 31814 Perú)**

La ley requiere:

1. **Anonimización y seudonimización**
   - Asignar IDs numéricos consecutivos en lugar de nombres completos
   - Eliminar información altamente identificable si no es necesaria
   - Ejemplo: guardar "cliente_12345" en lugar de "Juan Pérez, DNI 12345678"

2. **Consentimiento explícito**
   - Verificar que los clientes autorizaron recopilar sus datos
   - Documentar fuente de datos (navegación web, correo, redes sociales)

3. **Propósito limitado**
   - Datos recopilados para marketing → no pueden usarse para vigilancia
   - Datos de geolocalización → no pueden venderse a terceros sin consentimiento

**B. Detección de Sesgos**

1. **Sesgo geográfico:** ¿Están sobre-representados ciertos distritos?
   ```python
   df['distrito'].value_counts(normalize=True)
   ```
   
2. **Sesgo demográfico:** ¿Correlaciona la edad con la intención de compra?
   ```python
   df.groupby('edad')['compro_si_no'].mean()  # Verificar desbalance
   ```

3. **Sesgo temporal:** ¿Cambió el patrón de compra entre campañas?
   ```python
   df.groupby(pd.Grouper(key='fecha_compra', freq='M'))['monto'].sum()
   ```

**C. Acciones Preventivas**

- Documentar decisiones de limpieza: qué se cambió, por qué, quién autorizó
- Crear dataset "antes" y "después" para auditoría
- Incluir disclaimer: "Dataset procesado para análisis; no representa transacciones reales"

---

### 1.3 Resumen de Acciones

| Acción | Responsable | Tiempo |
|---|---|---|
| Auditoría completa de datos | Data Engineer | 1 día |
| Imputación de valores faltantes (KNN para ingresos, Forward Fill para fechas) | Data Scientist | 2-3 días |
| Eliminación de duplicados y consolidación | Data Engineer | 1 día |
| Normalización de formatos (fechas, distritos, correos) | Data Engineer | 1-2 días |
| Validación legal y ética (cumplimiento LGPD, anonimización) | Legal + Data Officer | 1 día |
| **Total** | — | **1 semana** |

---

## PREGUNTA 2: Tipos de Aprendizaje Automático Recomendados

### 2.1 Predicción de Recompra: Aprendizaje SUPERVISADO

#### ¿Por Qué Supervisado?

La empresa busca **predecir un resultado binario conocido**: "¿Este cliente recomprará o no?"

- **Entrada (Features):** histórico de compras, clics, canal, horarios, productos consultados, abandono de carrito
- **Salida (Target):** SÍ recompra, NO recompra
- Los datos históricos tienen **etiquetas conocidas** (sabemos quiénes recompraron después de la primera compra)

#### Algoritmos Recomendados

| Algoritmo | Descripción | Ventaja | Limitación |
|---|---|---|---|
| **Regresión Logística** | Modela probabilidad de evento binario | Interpretable, rápido, bajo riesgo de overfitting | Asume relación lineal |
| **Random Forest** | Ensemble de árboles de decisión | Captura relaciones no lineales, robusto a outliers | Caja negra, más difícil de explicar |
| **XGBoost** | Gradient boosting optimizado | Alto rendimiento, muy usado en competiciones | Requiere fine-tuning de hiperparámetros |

#### Flujo Conceptual

```
Datos Históricos (2024-2026)
    ├─ Cliente A: Compró 3 veces → Recompra = SÍ
    ├─ Cliente B: Compró 1 vez, 6 meses sin actividad → Recompra = NO
    └─ Cliente C: Compró 2 veces → Recompra = SÍ
    ↓
Entrenar Modelo Supervisado
    ↓
Extraer Features Clave:
  • Frecuencia de compra (# compras)
  • Monto promedio por transacción
  • Tiempo desde última compra
  • Abandono de carrito (sí/no)
  • Canal de ingreso (web, email, redes)
  ↓
Generar Predicciones
    ↓
Clientes Nuevos → Modelo predice: "85% probabilidad de recompra"
```

#### Interpretación de Resultados

El modelo entrega una **probabilidad** (0 a 1):
- **Probabilidad > 0.7** → Alta intención de recompra → Contactar con oferta personalizada
- **Probabilidad 0.4-0.7** → Intención media → Enviar email educativo
- **Probabilidad < 0.4** → Baja intención → No contactar (evitar fatiga)

---

### 2.2 Segmentación de Clientes: Aprendizaje NO SUPERVISADO

#### ¿Por Qué No Supervisado?

La empresa necesita **descubrir grupos o patrones ocultos** en el comportamiento de clientes, sin una etiqueta predefinida.

- No sabemos a priori cuántos segmentos existen
- No tenemos etiquetas de "tipo de cliente"
- El objetivo es **agrupar clientes similares** por comportamiento

#### Algoritmos Recomendados

| Algoritmo | Descripción | Uso Ideal |
|---|---|---|
| **K-Means** | Agrupa en K clusters por distancia mínima al centroide | Número de segmentos conocido o estimable |
| **Hierarchical Clustering** | Crea árbol de clusters anidados | Exploración: cuántos segmentos naturales hay |
| **DBSCAN** | Agrupa por densidad | Detectar outliers y clusters de forma irregular |

#### Flujo Conceptual

```
Base de Clientes (sin etiquetas previas)
    ├─ Cliente 1: Compra frecuente, alto monto, poco abandono
    ├─ Cliente 2: Compra ocasional, monto bajo, mucho abandono
    ├─ Cliente 3: Compra frecuente, monto bajo, redes sociales
    └─ ... (44,997 clientes más)
    ↓
Aplicar K-Means (K=4)
    ↓
Descubrir Segmentos Automáticamente:
  • Segmento A (VIP): 2,000 clientes → Frecuencia alta, monto alto
  • Segmento B (Ocasional): 15,000 clientes → Compra esporádica, abandono alto
  • Segmento C (Social Buyer): 18,000 clientes → Llegan por redes, compran bajo ticket
  • Segmento D (En Riesgo): 10,000 clientes → Compra antigua, sin actividad reciente
    ↓
Estrategia de Negocio Diferenciada por Segmento
```

#### Caracterización de Segmentos

**Segmento A (VIP) — 2,000 clientes**
- Compras: 5+ veces/año
- Monto promedio: $500-$1,000
- Abandono de carrito: 5%
- Acción recomendada: Programa de lealtad, ofertas exclusivas

**Segmento B (Ocasional) — 15,000 clientes**
- Compras: 1-2 veces/año
- Monto promedio: $100-$200
- Abandono: 40%+
- Acción recomendada: Correo de recordatorio, descuentos en checkout

**Segmento C (Social Buyer) — 18,000 clientes**
- Canal principal: Redes sociales (Instagram, TikTok)
- Compras: 2-3 veces/año, productos trending
- Monto bajo: $50-$100
- Acción recomendada: Influencers, contenido visual, ofertas por tiempo limitado

**Segmento D (En Riesgo) — 10,000 clientes**
- Última compra: hace 6-12 meses
- Monto promedio (histórico): $80-$150
- Abandono creciente: 60%
- Acción recomendada: Win-back campaign, encuesta para entender por qué abandonaron

---

### 2.3 Combinación: Supervisado + No Supervisado

**Flujo Integrado:**

```
Fase 1: NO SUPERVISADO (Segmentación)
  • Crear 4 segmentos (VIP, Ocasional, Social Buyer, En Riesgo)

Fase 2: SUPERVISADO (Predicción por Segmento)
  • Para cada segmento, entrenar modelo separado de recompra
  • Segmento VIP: Modelo con umbral de 0.6 (menos exigente)
  • Segmento En Riesgo: Modelo con umbral de 0.8 (muy exigente)

Resultado: Predicción contextual
  "Cliente X pertenece a Ocasional + 72% de recompra
   → Enviar email con descuento de 20% en próxima compra"
```

---

## PREGUNTA 3: Por Qué Falló el Modelo y Procedimiento Correcto

### 3.1 Diagnóstico del Fracaso

El practicante cometió un **error fundamental en validación de modelos**: entrenar con **toda la base disponible sin separación de conjuntos**.

#### Problema 1: Sin Separación Entrenamiento-Validación-Prueba

**Lo que el practicante hizo:**

```
Base Completa (45,000 registros)
    ↓
[Entrenar modelo con TODOS los datos]
    ↓
[Evaluar en los MISMOS datos de entrenamiento]
    ↓
Resultado: 95% de precisión (¡parece excelente!)
    ↓
[Aplicar a clientes nuevos]
    ↓
Falla: Solo 35% de precisión (¡desastre!)
```

**¿Por qué ocurre esto?**

- El modelo **memorizó patrones específicos de los 45,000 registros** (overfitting)
- No aprendió **patrones generales** que funcionen con datos nuevos
- Es como memorizar respuestas del examen sin entender el tema

#### Problema 2: Métricas Infladas por Overfitting

- **Precisión con datos antiguos:** 95%
- **Precisión con clientes nuevos:** 35%
- **Diferencia:** -60 puntos = modelo completamente no confiable

**Causa:** El modelo generalizó mal porque nunca fue evaluado con datos "desconocidos".

---

### 3.2 Procedimiento Correcto: Split Entrenamiento-Validación-Prueba

#### Paso 1: Dividir los Datos

**Proporción recomendada:**

```
Dataset Original: 45,000 registros
    ├─ Entrenamiento (60%): 27,000 registros
    │   └─ Usar SOLO para entrenar pesos del modelo
    │
    ├─ Validación (20%): 9,000 registros
    │   └─ Usar para ajustar hiperparámetros sin sesgar
    │
    └─ Prueba (20%): 9,000 registros
        └─ Usar SOLO al final para reportar rendimiento real
```

**Código conceptual:**

```python
from sklearn.model_selection import train_test_split

# Paso 1: Separar datos de prueba (20%)
X_temp, X_test, y_temp, y_test = train_test_split(
    X, y, test_size=0.2, random_state=42, stratify=y
)

# Paso 2: Separar entrenamiento (60%) y validación (20%) del 80% restante
X_train, X_val, y_train, y_val = train_test_split(
    X_temp, y_temp, test_size=0.25, random_state=42, stratify=y_temp
)

print(f"Entrenamiento: {X_train.shape[0]} registros")
print(f"Validación: {X_val.shape[0]} registros")
print(f"Prueba: {X_test.shape[0]} registros")
```

---

#### Paso 2: Entrenar el Modelo

**Usar SOLO conjunto de entrenamiento:**

```python
# Crear y entrenar modelo
modelo = RandomForestClassifier(n_estimators=100, random_state=42)
modelo.fit(X_train, y_train)

# Predicción en entrenamiento
y_pred_train = modelo.predict(X_train)
precisión_train = accuracy_score(y_train, y_pred_train)
print(f"Precisión en Entrenamiento: {precisión_train:.2%}")
```

**Resultado esperado:** 90-95% (es normal que sea alto, son datos conocidos)

---

#### Paso 3: Validar y Ajustar Hiperparámetros

**Usar SOLO conjunto de validación para afinar:**

```python
# Predicción en validación
y_pred_val = modelo.predict(X_val)
precisión_val = accuracy_score(y_val, y_pred_val)
print(f"Precisión en Validación: {precisión_val:.2%}")

# Evaluar overfitting
diferencia = precisión_train - precisión_val
if diferencia > 0.10:  # Diferencia > 10%
    print("⚠️  OVERFITTING detectado. Ajustar hiperparámetros:")
    print("   - Aumentar regularización (max_depth, min_samples_split)")
    print("   - Usar Dropout o L2 regularization")
    print("   - Recolectar más datos")
```

**Resultado esperado:** 75-85% (baja respecto a entrenamiento, pero realista)

---

#### Paso 4: Reportar Resultados FINALES con Conjunto de Prueba

**Usar SOLO conjunto de prueba al final (una sola vez):**

```python
# Predicción en PRUEBA (datos nunca vistos)
y_pred_test = modelo.predict(X_test)
precisión_test = accuracy_score(y_test, y_pred_test)

print("=" * 50)
print("RESULTADOS FINALES (Conjunto de Prueba)")
print("=" * 50)
print(f"Precisión: {precisión_test:.2%}")

# Matriz de confusión
from sklearn.metrics import confusion_matrix, classification_report
print("\nMatriz de Confusión:")
print(confusion_matrix(y_test, y_pred_test))

print("\nReporte Detallado:")
print(classification_report(y_test, y_pred_test, 
                          target_names=['No Recompra', 'Recompra']))
```

**Resultado esperado:** 70-80% (estimación real de rendimiento con datos nuevos)

---

### 3.3 Métricas de Evaluación Apropiadas

#### Para Predicción Binaria (Recompra Sí/No)

**Matriz de Confusión:**

```
                Predicción
                Recompra   No Recompra
Actual  Recompra    TP          FN      ← Falsos Negativos (costo: perder clientes)
        No Recompra FP          TN      ← Falsos Positivos (costo: campañas ineficientes)

TP = Verdaderos Positivos (correctamente predichos recompra)
TN = Verdaderos Negativos (correctamente predichos no recompra)
FP = Falsos Positivos (predijimos recompra, pero no recompraron)
FN = Falsos Negativos (predijimos no recompra, pero sí recompraron)
```

**Métricas Derivadas:**

| Métrica | Fórmula | Interpretación |
|---|---|---|
| **Precision** | TP / (TP + FP) | De los que predijimos "recompra", ¿cuántos realmente recompraron? |
| **Recall (Sensibilidad)** | TP / (TP + FN) | De los clientes que realmente recompraron, ¿cuántos identificamos? |
| **F1-Score** | 2 × (Precision × Recall) / (Precision + Recall) | Balance entre Precision y Recall |
| **Accuracy** | (TP + TN) / (TP + FP + TN + FN) | Porcentaje total de predicciones correctas |

**En nuestro caso de negocio:**

- **Recall alto (80%+):** Es crítico NO perder clientes que van a recomprar
- **Precision (70%+):** Es aceptable contactar algunos clientes que finalmente no recompren, pero no queremos gastos inútiles

**Decisión:** Usar **F1-Score** como métrica balanceada.

---

#### Validación Cruzada (K-Fold Cross-Validation)

Para mayor robustez, usar validación cruzada:

```python
from sklearn.model_selection import cross_val_score

scores = cross_val_score(modelo, X_train, y_train, cv=5, scoring='f1')
print(f"F1-Score en 5 folds: {scores}")
print(f"Promedio: {scores.mean():.3f} (+/- {scores.std():.3f})")
```

Divide los datos en 5 partes, entrena 5 veces (cada vez dejando una parte de lado), promedia resultados. Elimina suerte del split inicial.

---

### 3.4 Prevención: Checklist de Validación Correcta

- [ ] **Datos separados:** 60% entrenamiento, 20% validación, 20% prueba
- [ ] **Random seed:** Usar `random_state=42` para reproducibilidad
- [ ] **Stratification:** Mantener proporciones de clases en cada split
- [ ] **Sin data leakage:** Conjuntos totalmente disjuntos, sin solapamiento
- [ ] **Métricas múltiples:** No confiar en una sola métrica (Accuracy, Precision, Recall, F1)
- [ ] **Monitoreo de overfitting:** Comparar precisión de entrenamiento vs. validación vs. prueba
- [ ] **Reporte final:** Usar SOLO conjunto de prueba para resultados finales, UNA SOLA VEZ

---

## PREGUNTA 4: Métricas, Insights y Presentación a Gerencia

### 4.1 Definición de Métricas de Negocio

Las métricas técnicas de modelo no son suficientes. Necesitamos **traducir a lenguaje de negocio**.

#### A. Métricas Clave de Abandono y Conversión

| Métrica | Fórmula | Target Actual | Target Objetivo |
|---|---|---|---|
| **Tasa de Conversión** | (Compras / Visitas) × 100 | 5% | 8% (+60%) |
| **Abandono de Carrito** | (Carritos Abandonados / Carritos Abiertos) × 100 | 70% | 50% (-20pp) |
| **Tasa de Recompra** | (Clientes que compraron 2+ veces) / Total clientes | 35% | 50% (+15pp) |
| **Ticket Promedio** | Monto promedio por transacción | $150 | $180 (+20%) |
| **Lifetime Value (LTV)** | Ingresos totales por cliente en su vida | $450 | $600 (+33%) |
| **ROI de Campañas** | (Ingresos - Costo Campaña) / Costo Campaña | 1.2x | 2.0x |

---

#### B. Métricas de Rendimiento del Modelo

| Métrica | Valor | Interpretación |
|---|---|---|
| **Precision (Recompra)** | 78% | De 100 clientes que predijimos "van a recomprar", 78 efectivamente recompran |
| **Recall (Recompra)** | 82% | De 100 clientes que realmente recompraron, nuestro modelo identificó 82 |
| **F1-Score** | 0.80 | Balance bueno entre precision y recall |
| **AUC-ROC** | 0.85 | Modelo discrimina bien entre recompra y no recompra |

---

### 4.2 Insights Accionables

#### Insight 1: Segmentación Revela Patrones de Recompra

**Dato crudo:**
- 35% de clientes recompran

**Insight:**
- El 85% de las recompras proviene de 4 segmentos clave:
  - **VIP (5% de clientes):** 95% tasa de recompra
  - **Social Buyer (40% de clientes):** 60% tasa de recompra
  - **Email Subscriber (30% de clientes):** 45% tasa de recompra
  - **En Riesgo (25% de clientes):** 5% tasa de recompra

**Recomendación:**
- Invertir 40% de presupuesto de marketing en VIP (máximo ROI)
- Enfocar campañas en Social Buyer (volumen + crecimiento)
- Pausar contactos a "En Riesgo" (ROI negativo)

---

#### Insight 2: Abandono de Carrito por Canal

**Dato crudo:**
- 70% de abandono global de carrito

**Insight por canal:**
- **Web:** 65% abandono (técnicamente controlable)
- **Email:** 55% abandono (mejor diseño genera conversión)
- **Redes Sociales:** 80% abandono (fricción de redirección a web)

**Recomendación:**
- **Web:** Simplificar checkout a 2 pasos, ofrecer guest checkout
- **Email:** A/B test en línea de asunto; test con urgencia temporal
- **Redes Sociales:** Usar shoppable posts (no redirigir, vender en plataforma)

---

#### Insight 3: Impacto de Promociones

**Dato crudo:**
- Inversión en campañas aumentó 50%, ventas solo 15%

**Insight:**
- Código de promoción "SUMMER20" (descuento 20%) genera:
  - ROI: 3.2x (cada $1 gastado = $3.2 ingresos)
  - Ticket promedio: +35% (clientes gastan más cuando hay descuento)
  - Recompra posterior: +25% (clientes satisfechos vuelven)

- Campaña genérica sin código:
  - ROI: 0.9x (pérdida, aunque atraiga clicks)
  - Razón: conversión baja, sin urgencia, sin seguimiento

**Recomendación:**
- Crear códigos temáticos (NAVIDAD, VERANO, BACK2SCHOOL)
- Usar scarcity: "válido por 48 horas"
- Implementar retargeting a clientes que abandonaron con código específico

---

### 4.3 Presentación a Gerencia: Estructura y Lenguaje

#### Estructura Recomendada: 4 Secciones

---

#### **SECCIÓN 1: Situación Actual (El Problema)**

*Tono: Factual, sin jerga técnica*

```
Contexto Actual:
• Inversión en marketing digital: +50% (2024 a 2026)
• Tráfico web: +48% 
• Ventas: +15% ← DESPROPORCIONADO

¿Dónde se pierde dinero?
• 70% de clientes abandona carrito sin comprar
• 65% de clientes nunca recompra

Costo de inacción:
• 45,000 clientes visitaron web
• 32,000 agregaron productos al carrito
• 10,000 compraron (22% conversión)
• Sólo 3,500 recompraron (7.7% recompra)

Oportunidad: El 93% de visitantes no genera ingresos recurrentes
```

---

#### **SECCIÓN 2: Solución Propuesta**

*Tono: Claro, enfocado en beneficios, no en técnica*

```
Enfoque de Tres Pilares:

1. SEGMENTACIÓN INTELIGENTE
   ├─ Identificar 4 grupos de clientes (VIP, Ocasional, Social, En Riesgo)
   ├─ Asignar presupuesto según ROI de cada segmento
   └─ Personalizar mensajes por grupo

2. PREDICCIÓN DE RECOMPRA
   ├─ Modelo de IA identifica "100 clientes más propensos a recomprar"
   ├─ Contactar con oferta personalizada ANTES de que olviden el producto
   └─ Aumentar recompra de 35% a 50%

3. OPTIMIZACIÓN POR CANAL
   ├─ Web: Simplificar checkout
   ├─ Email: Urgencia + personalización
   └─ Redes: Vender sin redirigir
```

---

#### **SECCIÓN 3: Resultados Proyectados**

*Tono: Números concretos, beneficio para el negocio*

```
Escenario Base (Año 1):
• Conversión: 5% → 8% (+60%)
• Recompra: 35% → 50% (+15pp)
• Ticket promedio: $150 → $180 (+20%)
• Ingresos anuales: $6.75M → $9.2M (+36%)

Inversión Requerida:
• Implementación de modelo de IA: $15,000
• Herramientas de personalización: $5,000/mes
• Recursos (1 Data Scientist + 1 Marketing Analyst): $8,000/mes
• Total Año 1: $123,000

ROI:
• Ingresos adicionales: $9.2M - $6.75M = $2.45M
• Costo total: $123,000
• ROI: ($2.45M - $123K) / $123K = 1,891% ← EXCELENTE
```

---

#### **SECCIÓN 4: Próximos Pasos**

*Tono: Accionable, con responsables y fechas*

```
Plan de Implementación (3 Meses):

MES 1: PREPARACIÓN
├─ Semana 1-2: Auditar y limpiar 45,000 registros de clientes
├─ Semana 3-4: Entrenar modelo de predicción
└─ Revisor: Data Science Team

MES 2: PILOTO
├─ Segmentar clientes en 4 grupos automáticamente
├─ Ejecutar "mini campaña" a 1,000 clientes VIP
├─ Medir: tasa de apertura, clics, conversión
└─ Revisor: Marketing Manager

MES 3: ESCALA
├─ Aplicar modelo a base completa (45,000 clientes)
├─ Ejecutar campañas personalizadas por segmento
├─ Monitorear daily: conversión, ROI, retorno
└─ Revisor: Gerencia General

Decisión Requerida Hoy:
☐ Aprobar presupuesto de $123,000
☐ Asignar 1 Data Scientist + 1 Marketing Analyst
☐ Fecha de inicio: [Mes/Año]
```

---

### 4.4 Recomendaciones Finales para Reducir Abandono y Aumentar Ventas

#### Recomendación 1: Retargeting Dinámico

**Problema:** Cliente agrega $200 a carrito, abandona, no regresa.

**Solución:**
- Enviar email a las 2 horas: "Dejaste productos en tu carrito"
- Incluir imagen del producto, precio, y botón directo
- Ofrecer descuento de 10% si completa en 24h

**Impacto esperado:** Recuperar 15-20% de carritos abandonados = $90K/año

---

#### Recomendación 2: Programa de Fidelización por Segmento

**Para VIP (5% de clientes, 40% de ingresos):**
- Acceso anticipado a productos nuevos
- Envíos gratis siempre
- Soporte prioritario
- Meta: Recompra de 95% → 99%

**Para Social Buyer (40% de clientes, trending items):**
- Descuentos por volumen ("Compra 3, lleva 1 gratis")
- Sorteos mensuales en Instagram/TikTok
- Meta: Recompra de 60% → 75%

**Costo:** 5% de ingresos VIP = $180K/año  
**Beneficio:** +4pp recompra = +$400K ingresos = ROI 2.2x

---

#### Recomendación 3: A/B Testing Continuo

**Prueba 1:** Línea de asunto de email
- Grupo A: "20% OFF en productos de cuidado personal"
- Grupo B: "María, 20% OFF en lo que viste anteayer"
- Medir: tasa de apertura, clics, conversión
- Ganador se usa con 100% del base

**Prueba 2:** Urgencia temporal en web
- Grupo A: Mostrar "40% clientes compraron en 48h"
- Grupo B: Sin mensaje (control)
- Esperar: incremento de conversión de 3-8%

**Costo:** Mínimo (usar herramientas existentes)  
**Beneficio:** Mejora continua de 1-2% mensual en conversión

---

#### Recomendación 4: Integración con CRM

**Objetivo:** Unificar datos de clientes para personalización.

**Datos a integrar:**
- Compras (qué, cuándo, cuánto)
- Navegación (qué consultó, por cuánto tiempo)
- Clicks en email (qué asuntos funcionan)
- Redes sociales (qué intereses tiene)

**Resultado:** Crear "perfil único" que alimenta modelo de IA para recomendaciones cada vez más precisas.

---

### 4.5 Resumen Visual para Presentación

```
IMPACTO DEL MODELO DE IA
Métrica                Hoy     En 6 Meses   Cambio
─────────────────────────────────────────────────
Conversión             5%      8%           +60%
Recompra               35%     50%          +15pp
Abandono Carrito       70%     50%          -20pp
Ingresos Mensuales     $562K   $767K        +36%
Clientes Activos       10,000  15,000       +50%
─────────────────────────────────────────────────
Inversión Requerida: $123,000 (Año 1)
ROI: 1,891% ← Cada peso invertido genera $18.91 de retorno
```

---

## CONCLUSIÓN

La empresa tiene una **oportunidad clara** para transformar su base de datos en decisiones estratégicas. Con un enfoque estructurado en:

1. **Limpieza de datos** (eliminación de duplicados, normalización, protección ética)
2. **Machine Learning supervisado** (predicción de recompra)
3. **Segmentación no supervisada** (agrupar clientes por comportamiento)
4. **Validación rigurosa** (split entrenamiento-validación-prueba)
5. **Comunicación clara** (insights accionables en lenguaje de negocio)

La empresa puede esperar:
- **Incremento de 36% en ingresos** en 6 meses
- **ROI de 1,891%** en el año 1
- **Base de clientes 50% más activa** y rentable

La clave: **Datos limpios + Modelo correcto + Ejecución disciplinada = Valor real de negocio**

---

**Fin del Documento**

*Documento preparado para conversión a Word y presentación ejecutiva.*
