# Elección del Modelo Correcto en IA

## 📌 Introducción

En Machine Learning no existe un modelo "mejor" para todos los casos. La elección correcta depende de:
- El tipo de problema
- La cantidad y calidad de datos
- Los recursos disponibles
- El nivel de interpretabilidad requerido

En esta clase aprenderemos a seleccionar el modelo más adecuado para cada situación.

---

## 1️⃣ Fundamentos y Clasificación de Modelos

### Tipos de Aprendizaje Automático

```mermaid
graph TD
    ML["Aprendizaje Automático"] --> SUPERVISADO["Supervisado"]
    ML --> NO_SUPERVISADO["No Supervisado"]
    ML --> REFUERZO["Por Refuerzo"]
    
    SUPERVISADO --> SV1["✓ Datos etiquetados"]
    SUPERVISADO --> SV2["✓ Analogía: Profesor corrige"]
    
    NO_SUPERVISADO --> NU1["✓ Sin etiquetas"]
    NO_SUPERVISADO --> NU2["✓ Descubre patrones"]
    
    REFUERZO --> RF1["✓ Prueba y error"]
    REFUERZO --> RF2["✓ Con recompensas"]
```

### Tareas Principales

| Tarea | Descripción | Ejemplo |
|-------|-------------|---------|
| **Clasificación** | Predecir categorías discretas | ¿Email es spam o no? |
| **Regresión** | Predecir valores continuos | Estimar precio de una casa |
| **Clustering** | Agrupar datos similares | Segmentación de clientes |

### Caja Blanca vs. Caja Negra

```mermaid
graph LR
    subgraph BLANCA["🔓 CAJA BLANCA (Interpretable)"]
        B1["Árboles de Decisión"]
        B2["Modelos Lineales"]
        B3["Fácil de explicar"]
    end
    
    subgraph NEGRA["🔐 CAJA NEGRA (Compleja)"]
        N1["Redes Neuronales"]
        N2["Ensambles"]
        N3["Difícil de explicar"]
    end
    
    BLANCA --> TRADEOFF["⚖️ Trade-off:<br/>Interpretabilidad vs Precisión"]
    NEGRA --> TRADEOFF
```

---

## 2️⃣ Modelos Básicos

### Regresión Lineal

**Propósito:** Predecir valores continuos asumiendo relación lineal

```
y = m·x + b
```

**Ejemplo Real:**
- Predecir precio de vivienda según área construida
- Estimar ventas según inversión en publicidad

**Ventajas:** Simple, rápido, interpretable  
**Desventajas:** Solo para relaciones lineales

---

### Regresión Logística (Clasificación)

**Propósito:** Clasificación binaria (sí/no, 0/1)

**Función Sigmoide:** Limita predicciones entre 0 y 1 (probabilidad)

```mermaid
graph LR
    INPUT["Entrada"] --> SIGMOIDE["Función Sigmoide"]
    SIGMOIDE --> OUTPUT["Salida: 0 a 1<br/>(Probabilidad)"]
```

**Ejemplo Real:**
- ¿Aprobará el cliente el crédito? (0 o 1)
- ¿Tiene diabetes el paciente? (Sí o No)

---

### Árboles de Decisión

**Propósito:** Partición de datos mediante preguntas binarias

**Estructura:**
```
            ¿Edad > 30?
            /         \
          Sí           No
         /  \         /  \
      ¿Renta>    ¿Renta>
       5000?      3000?
```

**Ventajas:**
- Maneja variables numéricas Y categóricas
- Cada camino es una regla "si-entonces"
- Fácil de explicar a no técnicos

**Desventajas:**
- Tendencia al sobreajuste si crece demasiado

---

### Redes Neuronales

**Inspiración:** Cerebro humano con capas de neuronas

```mermaid
graph LR
    INPUT["Entrada"] --> HIDDEN1["Capa Oculta 1"]
    HIDDEN1 --> HIDDEN2["Capa Oculta 2"]
    HIDDEN2 --> OUTPUT["Salida"]
```

**Características:**
- ✓ Modelan relaciones muy complejas y no lineales
- ✓ Excelentes en visión por computadora y NLP
- ✗ Requieren muchos datos
- ✗ Consumen mucho cómputo (GPU)

**Ejemplo Real:** Clasificación de imágenes médicas, reconocimiento de voz

---

### Otros Modelos Básicos

| Modelo | Propósito | Ventajas | Desventajas |
|--------|----------|----------|------------|
| **K-NN** | Clasificación simple | Sin entrenamiento | Lento en predicción |
| **Naive Bayes** | Clasificación probabilística | Rápido, ideal para texto (spam) | Asume independencia |
| **SVM** | Separación óptima de clases | Funciona bien en altas dimensiones | Caja negra, lento |
| **Ensambles** (Random Forest, Boosting) | Combina múltiples modelos | Alta precisión | Menos interpretable |

---

## 3️⃣ Criterios para Seleccionar el Modelo Correcto

### 1. Volumen de Datos vs. Complejidad

```mermaid
graph LR
    subgraph POCOS["POCOS DATOS"]
        P1["📊 Modelos SIMPLES"]
        P2["Regresión Lineal"]
        P3["Árboles pequeños"]
        P4["Evita sobreajuste"]
    end
    
    subgraph MUCHOS["MUCHOS DATOS"]
        M1["📈 Modelos COMPLEJOS"]
        M2["Redes Neuronales"]
        M3["Ensambles"]
        M4["Captura patrones avanzados"]
    end
```

**Principio:** A menos datos → modelo más simple

---

### 2. Tipo de Variable

```mermaid
graph TD
    VARIABLE["Tipo de Variable"] 
    
    VARIABLE --> NUMERICA["Numérica/Continua<br/>(Peso, Precio)"]
    VARIABLE --> CATEGORICA["Categórica/Cualitativa<br/>(Color, Sí/No)"]
    
    NUMERICA --> REG["Regresión"]
    CATEGORICA --> CATENC["Codificar o Árboles"]
    
    REG --> LINEAL["Lineal/Polinómica"]
    CATENC --> CLASS["Clasificación"]
```

---

### 3. Naturaleza de los Datos

#### Datos Lineales
- ✓ Regresión Lineal
- ✓ Regresión Logística

#### Datos No Lineales
- ✓ Árboles de Decisión
- ✓ SVM con kernel
- ✓ Redes Neuronales

**Ejemplo:**
- **Lineal:** Precio de casa vs. metros cuadrados → Línea recta
- **No Lineal:** Clasificar imágenes → Relaciones complejas

---

### 4. Sobreajuste vs. Subajuste

```mermaid
graph LR
    subgraph SUBAJUSTE["Modelo MUY SIMPLE"]
        S1["Alto Sesgo"]
        S2["Baja Varianza"]
        S3["Subestima"]
    end
    
    subgraph EQUILIBRIO["✅ EQUILIBRIO"]
        E1["Sesgo Moderado"]
        E2["Varianza Moderada"]
        E3["Buen rendimiento"]
    end
    
    subgraph SOBREAJUSTE["Modelo MUY COMPLEJO"]
        O1["Bajo Sesgo"]
        O2["Alta Varianza"]
        O3["Sobreajusta"]
    end
```

**Regularización:** Penaliza la complejidad
- L1/L2 en regresión
- Poda en árboles
- Dropout en redes neuronales

---

### 5. Estructura de los Datos

```mermaid
graph TD
    DATOS["Estructura de Datos"]
    
    DATOS --> ESTRUCTURADOS["📊 Estructurados<br/>(Tablas)"]
    DATOS --> NO_ESTRUCTURADOS["📄 No Estructurados<br/>(Texto, Imágenes, Audio)"]
    
    ESTRUCTURADOS --> MODELOS1["Modelos Tradicionales<br/>Regresión, Árboles, SVM"]
    NO_ESTRUCTURADOS --> MODELOS2["Modelos Especializados<br/>NLP, CNN, RNN"]
```

**Ejemplos:**
- **Estructurado:** Predecir ventas con variables de económicas
- **No Estructurado:** Análisis de sentimientos en redes sociales

---

### 6. Escala y Preprocesamiento

| Modelo | Requiere Normalizar | Notas |
|--------|-------------------|-------|
| Regresión Lineal | ❌ No necesario | Pero mejora convergencia |
| K-NN | ✅ Sí, obligatorio | Usa distancias |
| SVM | ✅ Sí, obligatorio | Kernel requiere escala |
| Redes Neuronales | ✅ Sí, muy importante | Acelera entrenamiento |
| Árboles de Decisión | ❌ No afectado | Invariante a escala |

---

### 7. Interpretabilidad vs. Precisión

```mermaid
graph LR
    SIMPLE["Modelo Simple<br/>(Árbol pequeño)"]
    PRECISION["Precisión: 85%"]
    INTERPRETABLE["✓ Muy interpretable"]
    
    COMPLEJO["Modelo Complejo<br/>(Red neuronal)"]
    PRECISION2["Precisión: 92%"]
    NO_INTERPRETABLE["✗ Difícil de explicar"]
    
    DECISION["Decisión:<br/>¿Vale el +7%<br/>de precisión<br/>perder<br/>explicabilidad?"]
    
    SIMPLE --> INTERPRETABLE
    COMPLEJO --> NO_INTERPRETABLE
    INTERPRETABLE --> DECISION
    NO_INTERPRETABLE --> DECISION
```

**Regla de Oro:** En áreas de alto riesgo (medicina, finanzas) → preferir interpretabilidad

---

### 8. Datos Desbalanceados

**Problema:** Clases con representación desigual (ej: 1% fraude, 99% legítimo)

```mermaid
graph LR
    PROBLEMA["Datos Desbalanceados"] --> PROBLEMAS1["Precisión engañosa"]
    PROBLEMA --> PROBLEMAS2["Modelo sesgado"]
    
    SOLUCION1["Ponderación de clases"]
    SOLUCION2["SMOTE (Sobremuestreo)"]
    SOLUCION3["F1-Score, Recall"]
    
    PROBLEMAS1 --> SOLUCION1
    PROBLEMAS2 --> SOLUCION2
    PROBLEMAS2 --> SOLUCION3
```

**Métrica correcta:** Usar F1-Score o Recall, no Precisión global

---

### 9. Recursos Computacionales

```mermaid
graph LR
    subgraph RAPIDO["⚡ RÁPIDO"]
        R1["Regresión Lineal"]
        R2["Árboles de Decisión"]
        R3["Bajo consumo CPU"]
    end
    
    subgraph LENTO["🐢 LENTO"]
        L1["Redes Neuronales"]
        L2["SVM con kernel"]
        L3["Requiere GPU"]
    end
```

---

## 4️⃣ Caso Práctico: Detección de Fraude

**Contexto:** Banco necesita detectar transacciones fraudulentas en tiempo real

### Proceso

```mermaid
graph LR
    STEP1["1. Recopilación<br/>de datos"] --> STEP2["2. Limpieza<br/>y preparación"]
    STEP2 --> STEP3["3. Entrenamiento<br/>Modelo Supervisado"]
    STEP3 --> STEP4["4. Predicción"]
    STEP4 --> STEP5["5. Decisión<br/>Revisar si probabilidad<br/>fraude > umbral"]
```

### Elección del Modelo

✓ **Redes Neuronales** (caso común en banca)
- Aprenden patrones complejos de fraude
- Detectan anomalías sutiles
- Requieren GPU pero resultado de alto valor

✓ **Alternativa:** Árbol de Decisión
- Si se requiere explicabilidad
- "Por qué esta transacción fue bloqueada"

### Resultado
- ✅ Automatiza detección
- ✅ Reduce errores humanos
- ✅ Procesa miles de transacciones/segundo

---

## 5️⃣ Evaluación y Métricas

```mermaid
graph TD
    EVAL["Evaluación del Modelo"]
    
    EVAL --> REGRESION["Regresión"]
    EVAL --> CLASIFICACION["Clasificación"]
    EVAL --> CLUSTERING["Clustering"]
    
    REGRESION --> MSE["MSE (Error Cuadrático)"]
    REGRESION --> RMSE["RMSE"]
    REGRESION --> MAE["MAE"]
    
    CLASIFICACION --> PRECISION["Precisión"]
    CLASIFICACION --> RECALL["Recall"]
    CLASIFICACION --> F1["F1-Score"]
    CLASIFICACION --> AUC["AUC-ROC"]
    
    CLUSTERING --> SILHOUETTE["Coeficiente Silhouette"]
```

### Matriz de Confusión (Clasificación)

```
                Predicción
                Positivo  Negativo
Realidad  +     VP        FN
          -     FP        VN

VP = Verdaderos Positivos
FP = Falsos Positivos
FN = Falsos Negativos
VN = Verdaderos Negativos
```

**Métricas derivadas:**
- **Precisión:** VP / (VP + FP) → ¿De los predichos positivos, cuántos acertamos?
- **Recall:** VP / (VP + FN) → ¿De los positivos reales, cuántos encontramos?
- **F1-Score:** Promedio armónico de Precisión y Recall

---

## 6️⃣ Regla de Parsimonia

**Principio:** Si dos modelos tienen rendimiento similar, **elige el más simple**

```mermaid
graph LR
    MODEL1["Árbol simple<br/>Precisión: 87%<br/>Fácil de explicar"]
    MODEL2["Red neuronal<br/>Precisión: 88%<br/>Difícil de explicar"]
    
    CHOICE["✅ ELIGE<br/>ÁRBOL SIMPLE"]
    
    MODEL1 --> CHOICE
    MODEL2 --> CHOICE
```

**Beneficios del modelo simple:**
- Más rápido de entrenar
- Menos recursos
- Más fácil de mantener
- Mejor explicabilidad

---

## 📊 Diagrama de Decisión: Seleccionar Modelo

```mermaid
graph TD
    START["¿Cuál es tu problema?"] 
    
    START --> Q1{"¿Tienes<br/>muchos datos?"}
    
    Q1 -->|No| SIMPLE["Modelos SIMPLES<br/>• Regresión Lineal<br/>• Árbol pequeño"]
    Q1 -->|Sí| Q2{"¿Datos<br/>lineales?"}
    
    Q2 -->|Sí| Q3{"¿Clasificación<br/>o Regresión?"}
    Q2 -->|No| COMPLEJO["Modelos COMPLEJOS<br/>• Árboles grandes<br/>• Redes Neuronales<br/>• SVM"]
    
    Q3 -->|Regresión| LINREG["Regresión Lineal"]
    Q3 -->|Clasificación| LOGREG["Regresión Logística"]
    
    SIMPLE --> EVAL["Evaluar con<br/>Validación Cruzada"]
    COMPLEJO --> EVAL
    LINREG --> EVAL
    LOGREG --> EVAL
```

---

## 🎯 Resumen: Checklist para Elegir Modelo

- [ ] **Entender el problema:** ¿Clasificación, regresión o clustering?
- [ ] **Analizar los datos:** ¿Cuántos registros? ¿Tipos de variables?
- [ ] **Evaluar relaciones:** ¿Lineales o no lineales?
- [ ] **Considerar interpretabilidad:** ¿Necesito explicar el modelo?
- [ ] **Revisar recursos:** ¿CPU, memoria, tiempo disponibles?
- [ ] **Elegir el modelo más simple** que resuelva el problema
- [ ] **Validar con datos de prueba** o validación cruzada
- [ ] **Usar métricas apropiadas** según el tipo de problema
- [ ] **Iterar y mejorar** basado en resultados

---

## 📚 Conceptos Clave

| Concepto | Definición |
|----------|-----------|
| **Sobreajuste** | Modelo memoriza datos en lugar de aprender patrones |
| **Subajuste** | Modelo muy simple para capturar la complejidad |
| **Validación Cruzada** | Divide datos en grupos para evaluar generalización |
| **Regularización** | Penaliza complejidad para evitar sobreajuste |
| **Sesgo** | Error sistemático del modelo |
| **Varianza** | Sensibilidad a cambios en datos de entrenamiento |

---

## 🔗 Conexiones con Otros Cursos

- **Estadística:** Distribuciones, correlación, sesgo-varianza
- **Arquitectura Empresarial:** Implementar modelos en sistemas
- **Dirección de Datos:** Gestionar datos para entrenar modelos

---

**Recuerda:** No hay modelo perfecto. La mejor opción depende de tu problema específico. 🚀
