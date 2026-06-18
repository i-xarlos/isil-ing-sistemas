# Metricas de Evaluacion de Modelos (Clase 11)

**Curso:** Diseno de Soluciones con IA (ISIL, 2026-1)  
**Docente:** Omar David Visitacion Romero  
**Fecha:** 17/06/2026

---

## Introduccion

¿Alguna vez entrenaste un modelo que te decía "¡mira, 99% de precisión!" pero luego fallaba en la vida real? Eso es exactamente lo que aprenderemos a evitar en esta clase.

**La realidad:** Un modelo que funciona bien en datos de prueba puede ser un desastre cuando lo subes a producción. Por eso necesitamos **métricas que te digan la verdad** sobre qué tan bien está funcionando realmente.

Esta clase se enfoca en cómo medir correctamente:
- **Problemas de clasificación** (spam/no spam, fraude/legítimo, etc.): precisión, exactitud, recall, F1
- **Problemas de regresión** (predicción de números): MAE, MSE, RMSE

> **La lección más importante:** La métrica correcta depende de cuánto cuesta cada error en tu negocio. No existe una métrica universal—hay que pensar como ejecutivo, no como ingeniero.

---

## 1. Precision (¿De lo que dijimos "sí", cuánto realmente fue "sí"?)

### Que es

La precisión te dice: **De todas las cosas que el modelo marcó como positivas, ¿cuántas realmente lo eran?**

$$
Precision = \frac{TP}{TP + FP}
$$

**Acrónimos:**
- **TP** = True Positive (Verdadero Positivo) - lo marcó positivo y era correcto
- **FP** = False Positive (Falso Positivo) - lo marcó positivo pero era incorrecto

### Ejemplo que tiene sentido

Imaginemos un correo electrónico:
- Analizamos 100 correos
- El modelo dice "estos 25 son spam"
- Realmente eran spam: 20
- Se equivocó: 5 (eran correos importantes que marcó como spam)

$$
Precision = \frac{20}{20+5} = 0.80 = 80\%
$$

**¿Qué significa?** Si el modelo dice "esto es spam", tienes 80% de probabilidad de que tenga razón. El 20% restante son correos buenos que te harías perder.

### Cuándo usar precisión

- **Detección de fraude:** No quieres bloquear clientes legítimos por error
- **Campañas de marketing:** No quieres molestar a clientes que no están interesados
- **Recomendaciones médicas:** No quieres diagnosticar a personas sanas con enfermedades

**Regla simple:** Usa precisión cuando decir "sí" por error es caro.

---

## 2. Exactitud / Accuracy (¿Qué porcentaje acertó en total?)

### Que es

La exactitud es el **porcentaje total de aciertos** entre todo lo que predijo.

$$
Accuracy = \frac{TP + TN}{TP + TN + FP + FN}
$$

**Acrónimos:**
- **TP** = True Positive (Verdadero Positivo)
- **TN** = True Negative (Verdadero Negativo) - lo marcó negativo y era correcto
- **FP** = False Positive (Falso Positivo)
- **FN** = False Negative (Falso Negativo) - lo marcó negativo pero era incorrecto

### Ejemplo que tiene sentido

De 100 correos:
- 20 spam que identificó correctamente ✅
- 65 correos legítimos que identificó correctamente ✅
- 5 spam que no vio ❌
- 10 correos buenos que marcó como spam ❌

$$
Accuracy = \frac{20+65}{100} = 0.85 = 85\%
$$

"85% de acierto general."

### ⚠️ TRAMPA: Cuándo accuracy puede mentirte

Imagina una empresa que detiene fraudes:
- **Realidad:** 99% de transacciones son legítimas, 1% son fraude
- **El modelo tonto:** Dice "todo es legítimo"
- **Resultado:** 99% de accuracy... pero no detecta NINGÚN fraude 🚨

**Conclusión:** Accuracy se ve bonita en gráficos, pero puede ocultar problemas serios. Úsala con cuidado en datos desbalanceados.

---

## 3. Error Promedio en Regresion (Cuando predices números)

### El problema

Cuando predices números (precios, temperaturas, ventas), no puedes contar "aciertos y fallos". Necesitas medir cuán lejos estuviste del valor real.

### Las tres métricas principales

#### 🎯 MAE: Error Absoluto Medio
**"¿Cuánto me equivoqué en promedio?"**

$$
MAE = \frac{1}{n}\sum_{i=1}^{n}|p_i-r_i|
$$

**Acrónimos y variables:**
- **n** = número total de predicciones
- **p_i** = predicción del modelo para el caso i
- **r_i** = valor real para el caso i
- **|...|** = valor absoluto (ignora el signo)

- Fácil de entender
- Si MAE = 5, significa que en promedio predices ±5 unidades

#### 📊 MSE: Error Cuadrático Medio
**"Penaliza fuerte los errores grandes"**

$$
MSE = \frac{1}{n}\sum_{i=1}^{n}(p_i-r_i)^2
$$

**Acrónimos y variables:**
- **n** = número total de predicciones
- **p_i** = predicción del modelo para el caso i
- **r_i** = valor real para el caso i
- **(...)²** = elevar al cuadrado (amplifica los errores)

- Si un error es 10, cuenta como 100 (se amplifica)
- Útil cuando los errores grandes son inaceptables

#### √ RMSE: Raíz del Cuadrado Medio del Error
**"MSE pero en la unidad original"**

$$
RMSE = \sqrt{MSE}
$$

**Acrónimos:**
- **RMSE** = Root Mean Squared Error (Raíz del Error Cuadrático Medio)
- **√** = raíz cuadrada (deshace el cuadrado de MSE)

- Devuelve el error en las unidades que entiendes

### Ejemplo real: Predecir precios de casas

| Propiedad | Precio Real | Predicho | Error |
|---|---|---|---|
| Casa 1 | \$300,000 | \$290,000 | $10,000 |
| Casa 2 | \$150,000 | \$155,000 | $5,000 |
| Casa 3 | \$400,000 | \$420,000 | $20,000 |
| Casa 4 | \$250,000 | \$248,000 | $2,000 |

**Resultados:**
- **MAE** = (10 + 5 + 20 + 2) / 4 = **$9,250** en promedio
- **RMSE** = √(100² + 5² + 20² + 2²) / 4 ≈ **$12,500** (amplifica los errores grandes)

**Interpretación:** En promedio te equivocas ±$9,250, pero a veces llega a ±$20,000 (por eso RMSE es mayor).

---

## 4. Recall (¿De lo que realmente era "sí", cuánto encontramos?)

### Que es

**Recall te dice:** De todas las cosas que realmente eran positivas, ¿cuántas el modelo logró encontrar?

**Fórmula:**
$$
Recall = \frac{TP}{TP + FN}
$$

**Acrónimos:**
- **TP** = True Positive (Verdadero Positivo) - lo encontró correctamente
- **FN** = False Negative (Falso Negativo) - se le escapó

### Ejemplo del mundo real: Detección de cáncer

- Total pacientes: 100
- Con cáncer real: 10
- El modelo detecta: 8
- No detecta: 2

$$
Recall = \frac{8}{8 + 2} = 0.80 = 80\%
$$

**¿Qué significa?** Si una persona tiene cáncer, el modelo tiene 80% de probabilidad de detectarlo. El 20% de los casos se escapan.

### Cuándo usar Recall

- **Detección de enfermedades:** No quieres que pacientes enfermos se vayan sin diagnóstico
- **Detección de fraude:** Mejor atrapar el 90% que dejar pasar fraude
- **Problemas de seguridad:** Detectar amenazas es más importante que tener falsos positivos

**Regla simple:** Usa recall cuando perder casos positivos es muy caro.

---

## 5. La batalla: Precision vs Recall vs F1

### La tensión natural

| Métrica | Protege de | Sacrifica |
|---|---|---|
| **Precision** | Falsos positivos | Puede perder casos reales |
| **Recall** | Falsos negativos | Puede tener muchos falsos positivos |
| **F1** | Balance entre ambos | Buena solución cuando no hay claro ganador |

### F1: El equilibrio

$$
F1 = 2\cdot\frac{P\cdot R}{P+R}
$$

**Acrónimos y variables:**
- **P** = Precision (Precisión)
- **R** = Recall (Recuperación / Exhaustividad)
- **2** = factor para normalizar entre 0 y 1

**Traducción:** Toma precision y recall, les da el mismo peso, y encuentra el equilibrio.

### Cómo elegir en la vida real

```
¿Qué es más peligroso en tu caso?

Si es perder casos positivos (FN) → Usa RECALL
  Ejemplos: Cáncer, fraude, infiltrados

Si es tener falsos positivos (FP) → Usa PRECISION  
  Ejemplos: Spam, marketing

Si ambos pesan igual → Usa F1
  Ejemplo: Sistemas generales de clasificación
```

---

## 6. Recomendaciones de la clase

1. Visualizar siempre la matriz de confusion.
2. Reportar multiples metricas, no una sola.
3. Usar validacion cruzada al comparar modelos.
4. Definir metrica objetivo segun impacto economico del error.

---

## 7. Ejercicios vistos

### Ejercicio 1 (clasificacion medica)

Datos:

- 100 pacientes
- Enfermos reales: 20
- Predichos enfermos: 25
- Verdaderos positivos: 18

Derivados:

- FP = 7
- FN = 2
- TN = 73

Resultados:

- Precision = 18 / (18 + 7) = 0.72
- Recall = 18 / (18 + 2) = 0.90
- Accuracy = (18 + 73) / 100 = 0.91

### Ejercicio 2 (regresion)

Datos:

- Reales: [10, 15, 20, 30]
- Predichos: [12, 14, 18, 33]
- Errores absolutos: [2, 1, 2, 3]

Resultado:

- MAE = (2 + 1 + 2 + 3)/4 = 2.0

---

## 8. Resumen Ejecutivo

| Escenario | Metrica principal | Complemento recomendado |
|---|---|---|
| Clasificacion balanceada | Accuracy | Precision y Recall |
| Clasificacion desbalanceada | Precision o Recall (segun costo) | F1 y matriz de confusion |
| Regresion con outliers | MAE + RMSE | Analisis de residuos |
| Comparacion de modelos | Validacion cruzada | Varias metricas simultaneas |

---

## 9. Glosario Completo de Términos

### Matriz de Confusión (Los 4 casos posibles)

| Término | Definición | Ejemplo |
|---|---|---|
| **TP (Verdadero Positivo)** | El modelo dijo "sí" y realmente era "sí" ✅ | Un correo spam que correctamente marcó como spam |
| **FP (Falso Positivo)** | El modelo dijo "sí" pero era "no" ❌ | Un correo importante que marcó como spam |
| **TN (Verdadero Negativo)** | El modelo dijo "no" y realmente era "no" ✅ | Un correo legítimo que correctamente pasó a bandeja |
| **FN (Falso Negativo)** | El modelo dijo "no" pero era "sí" ❌ | Un spam real que no detectó |

### Métricas de Clasificación

| Término | Definición | Cuándo usar |
|---|---|---|
| **Precision** | De lo que el modelo marcó como "sí", cuántos realmente lo eran | Cuando FP es caro (marketing, fraude) |
| **Recall** | De los "sí" reales, cuántos el modelo encontró | Cuando FN es crítico (salud, seguridad) |
| **Accuracy** | Porcentaje total de aciertos | Datos balanceados, sin sesgos |
| **F1-Score** | Balance armónico entre Precision y Recall | Cuando ambos errores pesan igual |
| **ROC-AUC** | Curva de verdaderos vs falsos positivos | Comparar modelos en todos los umbrales |

### Métricas de Regresión

| Término | Definición | Interpretación |
|---|---|---|
| **MAE** | Error Absoluto Medio | Cuánto te equivocas en promedio (en unidades reales) |
| **MSE** | Error Cuadrático Medio | Amplifica errores grandes (penal severa) |
| **RMSE** | Raíz del MSE | MSE pero en la unidad original |
| **R²** | Coeficiente de determinación | Qué porcentaje de variación explica el modelo (0-100%) |

### Conceptos de Desempeño

| Término | Definición | Impacto |
|---|---|---|
| **Overfitting / Sobreajuste** | Modelo memoriza datos en lugar de aprender patrones | Funciona bien en entrenamiento, falla en producción |
| **Underfitting / Subajuste** | Modelo demasiado simple para capturar la realidad | Funciona mal en ambos (entrenamiento y prueba) |
| **Sesgo (Bias)** | Error sistemático del modelo | Tiende a cometer el mismo error siempre |
| **Varianza** | Sensibilidad a cambios pequeños en datos | Cambia mucho de predicción según los datos |
| **Validación Cruzada** | Dividir datos en grupos para evaluar generalización | Más confiable que un único conjunto de prueba |

### Términos del Negocio

| Término | Definición | Relevancia |
|---|---|---|
| **Matriz de Confusión** | Tabla que muestra los 4 tipos de predicciones (TP, FP, TN, FN) | Visión 360° del rendimiento real |
| **Umbral de Decisión** | Valor de probabilidad por encima del cual el modelo predice "sí" | Cambiar umbral = cambiar Precision vs Recall |
| **Desbalance de Clases** | Cuando una clase tiene muchos más casos que la otra | Engaña métricas simples como Accuracy |
| **Cross-validation** | Entrenar el modelo múltiples veces con diferentes datos | Evita suerte: verifica si el modelo es consistente |
| **Métrica Objetivo** | La métrica que realmente importa para el negocio | Define si el modelo es éxito o fracaso |
| **Interpretabilidad** | Capacidad de explicar por qué el modelo hizo una predicción | Crítica en medicina, finanzas, legal |

---

## Recursos

- PDF de clase: `diseno-soluciones-ia-metricas-evaluacion-modelos-clase-11.pdf`
- Curso: Diseno de Soluciones con IA, ISIL 2026-1
