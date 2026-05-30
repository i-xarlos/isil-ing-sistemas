# Análisis Exploratorio de Datos — EDA (Clase 4)

**Curso:** Análisis Estadístico y Data Mining (ISIL, 2026-1)  
**Docente:** Omar David Visitación Romero  
**Fecha:** 30/04/2026

---

## 1. Introducción al Análisis Exploratorio de Datos (EDA)

> **Objetivo central:** Ir más allá de la estadística descriptiva plana para descubrir el **comportamiento real** de los datos.

La estadística descriptiva tradicional solo muestra números agregados (promedios, desviaciones). El EDA va más profundo: busca identificar **patrones, tendencias, frecuencias y anomalías** que expliquen cómo se comportan realmente los datos.

## Mapa visual del proceso EDA

```mermaid
flowchart LR
   A["Datos crudos"] --> B["Exploración inicial"]
   B --> C["Patrones y tendencias"]
   B --> D["Anomalías y outliers"]
   C --> E["Hipótesis de negocio"]
   D --> E
   E --> F["Decisiones o modelado"]

   style A fill:#E3F2FD,stroke:#1565C0,stroke-width:2px
   style B fill:#FFF3E0,stroke:#EF6C00,stroke-width:2px
   style C fill:#F3E5F5,stroke:#6A1B9A,stroke-width:2px
   style D fill:#FFECB3,stroke:#FB8C00,stroke-width:2px
   style E fill:#E8F5E9,stroke:#2E7D32,stroke-width:2px
   style F fill:#C8E6C9,stroke:#1B5E20,stroke-width:3px
```

Este gráfico muestra por qué el EDA no es solo mirar gráficos: sirve para convertir observaciones en hipótesis útiles para el negocio o el modelo.

## Resumen ejecutivo consolidado

El resumen ejecutivo complementario de esta clase simplifica el EDA en tres preguntas: **qué tendencia existe**, **qué patrones se repiten** y **qué anomalías deben investigarse**. También resume un toolkit mínimo para lectura rápida: regresión lineal y promedio móvil para tendencia, **Z-score** e **IQR** para outliers, y correlación para explorar relaciones entre variables.

### Preguntas guía del EDA

1. ¿Los datos muestran crecimiento, caída o estabilidad?
2. ¿Se repiten ciclos, estacionalidades o comportamientos consistentes?
3. ¿Existen valores extremos o imposibles que ameritan revisión?

### Caja rápida de herramientas

| Objetivo | Herramienta | Uso típico |
| --- | --- | --- |
| Ver tendencia | Regresión lineal / promedio móvil | Ventas, demanda, series temporales |
| Detectar anomalías | Z-score / IQR | Fraude, errores, valores atípicos |
| Explorar relación | Correlación | Publicidad vs. ventas, riesgo vs. retorno |

### Secuencia práctica resumida

1. Revisar tendencia general.
2. Buscar patrones y estacionalidad.
3. Detectar anomalías.
4. Medir relaciones entre variables.
5. Documentar hallazgos y decisiones.

### ¿Por qué Importa?

**Premisa fundamental:** Los datos no son azarosos. Son producto de actividades humanas con conductas específicas que pueden ser modeladas, predecidas e identificadas.

**Aplicaciones Prácticas:**

| Caso de Uso | Descripción | Impacto |
|---|---|---|
| **Detección de fraudes** | Identificar transacciones anómalas que desviarse del patrón normal | Prevenir pérdidas financieras |
| **Ciberseguridad** | Detectar intentos de hacking o accesos no autorizados | Proteger infraestructura |
| **Optimización de procesos** | Encontrar cuellos de botella y patrones de ineficiencia | Mejorar productividad |
| **Exfiltración de datos** | Identificar cuándo datos están siendo robados indebidamente | Seguridad de información |

---

## 1d. Aplicaciones de EDA en Sectores Clave

La estadística exploradora tiene aplicaciones específicas y de alto valor en industrias clave:

### A. Sector Financiero

**Conceptos clave:**
- **Rentabilidad Esperada:** Relación entre el riesgo asumido y el retorno esperado de una inversión
- **Volatilidad:** Qué tanto varían los precios en corto tiempo (ej. el cambio diario del dólar fluctúa 0.5%-2%)
- **Riesgo Crediticio:** Probabilidad de que un cliente NO pague un préstamo (crucial para bancos)
- **Simulación de Montecarlo:** Técnica para simular miles de escenarios posibles (impagos, retrasos, crisis) para predecir el éxito de un producto financiero

**Aplicación práctica EDA:**
```
Banco quiere otorgar créditos de $100K a 1,000 clientes.

1. EDA inicial: Analizar historial de clientes similares
   → ¿Qué edad tienen? ¿Qué ingresos? ¿Incumplieron antes?

2. Identificar patrones: Clientes con X características tienen 2% de default

3. Detectar anomalías: Cliente con ingresos reportados de $1M pero pide crédito
   → Investigar si es fraude

4. Predicción: Con los patrones, estimar pérdidas esperadas
   → Ajustar tasa de interés según riesgo

Impacto: Diferencia entre ganancia y quiebra del banco.
```

### B. Marketing y Publicidad

**Conceptos clave:**
- **Segmentación de Clientes:** Agrupar personas por comportamientos similares para ofrecerles promociones específicas
- **Pruebas A/B:** Comparar dos versiones de un anuncio o página web para ver cuál convierte mejor
- **Análisis de Cohortes:** Seguir grupos de clientes en el tiempo para entender churn (abandono)

**Aplicación práctica EDA:**
```
E-commerce quiere aumentar conversión de compra.

1. EDA: Analizar comportamiento de visitantes
   → ¿En qué página abandonan? ¿Cuánto tiempo gastan?

2. Segmentación: Dividir en grupos
   - Grupo A: Jóvenes (18-25), móvil, compra rápida
   - Grupo B: Profesionales (35-50), desktop, compra lenta pero segura
   - Grupo C: Curiosos, ven pero no compran

3. Anomalías: Detectar clientes que ven pero NUNCA compran
   → Ofrecerles descuento especial

4. Prueba A/B: 
   - Versión A: Checkout en 3 pasos
   - Versión B: Checkout en 1 paso
   → Medir cuál convierte más

Impacto: 1% de aumento en conversion = +$100K anuales.
```

### C. Salud e Epidemiología

**Conceptos clave:**
- **Incidencia:** Número de casos nuevos en un período
- **Prevalencia:** Número total de casos en un momento
- **Mortalidad:** Tasa de muertes por enfermedad
- **Pruebas de Hipótesis:** Determinar si un cambio es real o solo fluctuación

**Aplicación práctica EDA:**
```
Departamento de Salud pública detecta aumento de casos de dengue.

1. EDA inicial: Revisar datos históricos
   → ¿Es enero (estación alta)? ¿O es diferente?

2. Análisis de tendencia:
   - Años anteriores: enero = 100 casos (normal)
   - Este año: enero = 200 casos
   → 100% de aumento vs promedio

3. Prueba de hipótesis:
   - H0: "Es fluctuación normal"
   - H1: "Hay un brote real"
   → Con EDA, rechazar H0 si crece exponencialmente

4. Anomalías: ¿Hay zonas con incidencia 10x más alta?
   → Investigar por contaminación, falta de drenaje, etc.

5. Predicción: Si continúa así, ¿cuántos casos en febrero?
   → Preparar recursos médicos, campañas de vacunación

Impacto: Diferencia entre 500 casos vs 5,000 casos (y muertes).
```

---

## 1e. Desafíos en la Calidad de los Datos

Un análisis estadístico es **solo tan bueno como los datos que recibe**. EDA identifica estos problemas:

### Problema 1: Sesgos (Biases) en los Datos

**Definición:** La muestra NO es representativa de la población real.

**Ejemplos de sesgo:**
```
❌ ENCUESTA SESGADA:
"¿Quién es el mejor jugador de fútbol?"
Encuesta en: Estadio de Barcelona → 80% dice Messi
Error: Solo entrevistaron hinchas de Barcelona

✅ ENCUESTA CORRECTA:
Encuesta en: Toda España, en malls, escuelas, mercados
Resultado: Más distribuido (Messi 40%, Cristiano 40%, Otros 20%)
```

**Cómo detectarlo con EDA:**
- Revisar el rango geográfico de datos
- Verificar si los datos vienen de una sola fuente (sesgo)
- Comparar distribución esperada vs observada

### Problema 2: Datos Incompletos (Missing Values)

**Causas comunes:**
- Clientes que no completan formularios
- Fallas en sistemas de recopilación
- Datos borrados accidentalmente

**Estrategias para manejar:**

#### Estrategia 1: Eliminación
```
Si datos incompletos = 1% de dataset
→ Eliminar esas filas (perder poco valor)

Si datos incompletos = 50% de dataset
→ Problema serio, recopilar más datos
```

#### Estrategia 2: Imputación Simple
```
Rellenar el dato faltante con:
- MEDIA: Si la edad falta, usar edad promedio (35 años)
- MODA: Si el género falta, usar el más frecuente (M)
- ÚLTIMO VALOR: Si serie temporal, usar valor anterior

Ventaja: Rápido y simple
Desventaja: Pierde variabilidad natural
```

#### Estrategia 3: Imputación Avanzada
```
Usar un modelo predictivo para "adivinar" el dato faltante:

Ejemplo: Cliente X tiene edad faltante
- Ingreso: $100K
- Ciudad: NY
- Profesión: Ingeniero

Modelo predice: Basado en otros ingenieros en NY con $100K,
edad típica = 42 años → Imputar 42

Ventaja: Más realista
Desventaja: Requiere modelado adicional
```

### Problema 3: Sobreajuste (Overfitting)

**Definición:** El modelo aprende tan bien los datos de entrenamiento que "se los memoriza", pero falla con datos nuevos.

**Analogía:**
```
Estudiante memoriza respuestas del libro exactamente
→ Examen del libro: 100%
→ Examen diferente: 40%
→ No entendió, solo memorizó
```

**En datos:**
```
Modelo entrenado en datos 2020-2023
→ Predice datos 2020-2023: 99% preciso
→ Predice datos 2024: 30% preciso
→ Sobreajuste: memoriza patrones específicos del 2020-2023
```

**Cómo detectarlo con EDA:**
- Dividir datos: 80% entrenamiento, 20% prueba
- Si accuracy en entrenamiento >> accuracy en prueba → sobreajuste
- Visualizar: ¿El modelo sigue cada punto o la tendencia general?

**Cómo evitarlo:**
- Usar regularización (penalizar complejidad)
- Simplificar modelos
- Aumentar datos de entrenamiento
- Usar validación cruzada

### Conexión con Clases Anteriores

- **Clase 2 (Estadística Descriptiva):** Proporcionó las herramientas básicas (media, mediana, desviación estándar)
- **Clase 3 (Estadística Inferencial):** Mostró cómo generalizar desde muestras a poblaciones
- **Clase 4 (EDA):** Integra ambas para **explorar y comprender** los datos antes de modelar

---

## 1b. Configuración Práctica del Entorno de Desarrollo

Antes de aplicar EDA con datos reales, es necesario preparar el ecosistema técnico. Dirigido por el profesor **Omar David Visitación Romero**, se establece la siguiente arquitectura:

### El Intérprete: Python

**Concepto:** Python es un **lenguaje interpretado**. Esto significa que no compila todo el código a un archivo ejecutable (`.exe`) de golpe. En su lugar, un **intérprete** traduce y ejecuta el código línea por línea.

**Instalación Recomendada:**
- **Versión:** 3.14.4 o superior
- **Paso crítico:** Marcar la casilla **"Add Python to PATH"** durante la instalación
  - Esto permite que el sistema operativo reconozca el comando `python` desde cualquier terminal
  - Sin esto, tendrías que escribir la ruta completa cada vez

**Verificación de Instalación:**
```bash
python --version
→ Debería retornar: Python 3.14.4 (o versión instalada)
```

---

### El Entorno de Desarrollo: Visual Studio Code (VS Code)

**Concepto:** VS Code es el **Entorno de Desarrollo Integrado (IDE)**. Es la "hoja" o interfaz gráfica donde escribes el código Python.

**Pasos de Configuración:**
1. Instala VS Code desde [code.visualstudio.com](https://code.visualstudio.com)
2. Abre VS Code
3. Ve a Extensions (icono de cuadrados en la izquierda)
4. Busca "Python" y instala la extensión oficial de Microsoft
5. VS Code detectará automáticamente el intérprete Python instalado

**Verificación:**
- Abre un archivo `.py` en VS Code
- Debería aparecer el intérprete detectado en la esquina inferior derecha
- Puedes presionar Ctrl+Shift+` para abrir terminal integrada

---

### Las Librerías Esenciales (Instalación vía PIP)

**¿Qué es PIP?** Es el **Package Manager** de Python. Te permite instalar librerías adicionales con un comando simple.

**Instalación de las 3 Librerías Fundamentales:**

```bash
pip install pandas numpy matplotlib
```

#### Librería 1: **Pandas** — Manejo de Datasets

**Propósito:** Trabajar con **tablas de datos** (filas y columnas).

**Concepto:** Un DataFrame de Pandas es como una hoja de Excel, pero programable.

**Ejemplo básico:**
```python
import pandas as pd

# Crear un DataFrame
df = pd.DataFrame({
    'Mes': [1, 2, 3, 4, 5],
    'Ventas': [100, 105, 110, 115, 120]
})

# Ver primeras filas
print(df.head())

# Estadísticas rápidas
print(df.describe())
```

**Funciones clave:**
- `pd.read_csv('archivo.csv')` — Cargar datos desde archivo
- `df.head()` — Ver primeras filas
- `df.describe()` — Estadísticas descriptivas automáticas
- `df.mean()`, `df.std()` — Media, desviación estándar

#### Librería 2: **NumPy** — Cálculos Matemáticos Complejos

**Propósito:** Realizar operaciones matemáticas en **vectores y matrices** (arreglos multidimensionales).

**Concepto:** NumPy es la base matemática sobre la que funcionan Pandas y Scikit-learn.

**Ejemplo básico:**
```python
import numpy as np

# Crear vectores
ventas = np.array([100, 105, 110, 115, 120])

# Operaciones vectorizadas
ventas_crecimiento = ventas * 1.1  # Aumentar 10%

# Funciones matemáticas
print(np.mean(ventas))  # Promedio
print(np.std(ventas))   # Desviación estándar
print(np.percentile(ventas, 75))  # Percentil 75
```

**Funciones clave:**
- `np.array()` — Crear matriz
- `np.mean()`, `np.std()`, `np.median()` — Estadísticas
- `np.percentile()` — Cuartiles y percentiles
- Operaciones elemento a elemento: `array * 2`, `array + 10`

#### Librería 3: **Matplotlib** — Visualización de Datos

**Propósito:** Crear **gráficos** para visualizar patrones en los datos.

**Concepto:** Matplotlib es la librería estándar para gráficos en Python.

**Ejemplo básico:**
```python
import matplotlib.pyplot as plt

# Datos
meses = [1, 2, 3, 4, 5]
ventas = [100, 105, 110, 115, 120]

# Crear gráfico
plt.figure(figsize=(10, 5))
plt.plot(meses, ventas, marker='o', linewidth=2)
plt.xlabel('Mes')
plt.ylabel('Ventas ($)')
plt.title('Tendencia de Ventas')
plt.grid(True)
plt.show()
```

**Gráficos disponibles:**
- `plt.plot()` — Gráfico de línea (tendencias)
- `plt.bar()` — Gráfico de barras (comparaciones)
- `plt.scatter()` — Gráfico de dispersión (correlaciones)
- `plt.hist()` — Histograma (distribuciones)
- `plt.boxplot()` — Box plot (cuartiles y outliers)

---

## 1c. Fundamentos de Programación en Python

Para aplicar EDA, necesitas entender conceptos básicos de Python:

### Variables y Tipado Dinámico

**Concepto:** Una variable es un "contenedor de datos".

**Tipado dinámico:** Python detecta automáticamente si un dato es:
- `int` (entero): 30, -5, 0
- `float` (decimal): 3.14, -0.5
- `str` (texto): "Hola", "Datos"
- `bool` (booleano): True, False

**Ejemplos:**
```python
hola = 30              # Python sabe que es int
prucio = 19.99         # Python sabe que es float
nombre = "Carlos"      # Python sabe que es str
es_valido = True       # Python sabe que es bool

print(hola)             # Imprime: 30
print("Mi edad es:", hola)  # Imprime: Mi edad es: 30
print(tipo(hola))      # Imprime: <class 'int'>
```

### Contraste: Python vs Lenguajes Compilados

| Aspecto | Python | C++ / Java |
|---|---|---|
| **Ejecución** | Intérprete (línea a línea) | Compilador (todo de golpe) |
| **Tipado** | Dinámico (Python decide) | Estático (tú declaras) |
| **Velocidad de desarrollo** | Rápida (escribir y ejecutar) | Lenta (compilar, después ejecutar) |
| **Velocidad de ejecución** | Más lenta | Más rápida |
| **Uso ideal** | Ciencia de datos, prototipado | Sistemas, videojuegos |

**Para EDA:** Python es ideal porque permite iterar rápidamente entre análisis y visualización.

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
Ventas mensuales de un negocio online:

Mes 1: $100
Mes 2: $105
Mes 3: $110
Mes 4: $115
Mes 5: $120
Mes 6: $125

Observación: Cada mes vende $5 más que el anterior.
Tendencia: ALCISTA CLARA (crecimiento de 25% en 6 meses)
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

**Ejemplo Simple: Consumo de Energía por Mes**

```
Promedio mensual de consumo = 100 kWh

Enero (invierno frío): 150 kWh → 50% más (gente usa calefacción)
Julio (verano caluroso): 150 kWh → 50% más (gente usa aire acondicionado)
Abril (primavera): 80 kWh → 20% menos (clima templado)

Patrón: Siempre hay consumo alto en extremos de temperatura.
Uso: Preparar más electricidad en enero y julio.
```

---

## 3. Herramientas Matemáticas para el Análisis

### A. Regresión Lineal

**Qué es:** Un modelo matemático que traza una línea a través de puntos dispersos para capturar la tendencia general y permitir predicciones.

**Ecuación:**
$$\hat{y} = \beta_1 x + \beta_0$$

**Cuadro de Símbolos:**

| Símbolo | Nombre | Significado |
|---------|--------|-------------|
| **$\hat{y}$** | Y predicha | La respuesta calculada |
| **$\beta_1$** | Pendiente | Cuánto sube/baja por mes |
| **$\beta_0$** | Intercepto | Valor inicial |
| **$x$** | X independiente | El mes (1, 2, 3...) |

**Interpretación de la Pendiente $\beta_1$:**

```
Si β₁ > 0: Tendencia CRECIENTE (↑ sube)
Si β₁ < 0: Tendencia DECRECIENTE (↓ baja)
Si β₁ = 0: Datos planos (→ ni sube ni baja)
```

**Ejemplo Paso a Paso:**

```
Datos de ventas:
Mes 1: $10   Mes 2: $12   Mes 3: $14
Mes 4: $16   Mes 5: $18

🔍 Análisis: Cada mes sube exactamente $2

Fórmula encontrada: Ŷ = 2X + 8

Desglose:
- β₁ = 2 (cada mes suma $2)
- β₀ = 8 (comenzamos en mes 0 con $8)

📊 Predicciones:
Mes 6: Ŷ = 2(6) + 8 = 12 + 8 = $20
Mes 10: Ŷ = 2(10) + 8 = 20 + 8 = $28
Mes 12: Ŷ = 2(12) + 8 = 24 + 8 = $32

✓ Si continúa la tendencia: mes 12 = $32
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

**Proceso simple:**

```
Datos originales de 6 días:
Día 1: 10
Día 2: 12
Día 3: 8
Día 4: 11
Día 5: 15
Día 6: 9

Promedio móvil de 3 días (ventana que avanza):
- Días 1-3: (10 + 12 + 8) / 3 = 10
- Días 2-4: (12 + 8 + 11) / 3 = 10.3
- Días 3-5: (8 + 11 + 15) / 3 = 11.3
- Días 4-6: (11 + 15 + 9) / 3 = 11.7

Ventaja: Los números suavizados (10, 10.3, 11.3, 11.7)
son más fáciles de leer que los originales (10, 12, 8, 11, 15, 9).
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

**Conceptos básicos (Cuartiles):**

```
¿Qué es un cuartil?
Si ordenas datos de menor a mayor en 4 partes iguales:

Datos: 5, 8, 10, 12, 14, 16, 18, 20, 22, 25, 28, 30
         ↓                    ↓                    ↓
        Q1                   Q2                  Q3
       (25%)               (50%)               (75%)

IQR = Q3 - Q1 (rango entre cuartiles)
```

**Regla de Detección (Visual):**

```
Límite Inferior = Q1 - 1.5 × IQR
         ↓
    [DATOS NORMALES]
    Q1 | Q2 (mediana) | Q3
         ↑
Límite Superior = Q3 + 1.5 × IQR

Si algo cae FUERA → ⚠️ ANOMALÍA
```

**Ejemplo Paso a Paso: Detección de Fraude**

```
Transacciones del cliente (10 días):
$10, $12, $11, $13, $9, $14, $10, $12, $15, $11

Paso 1: Ordenar de menor a mayor
$9, $10, $10, $11, $11, $12, $12, $13, $14, $15

Paso 2: Encontrar cuartiles
Q1 (25%) = $10.5
Q3 (75%) = $13
IQR = $13 - $10.5 = $2.5

Paso 3: Calcular límites
Límite Inferior = $10.5 - (1.5 × $2.5) = $6.75
Límite Superior = $13 + (1.5 × $2.5) = $16.75

Paso 4: Verificar nueva transacción
Nueva: $500
¿Entre $6.75 y $16.75? NO
→ ⚠️ ANOMALÍA = Posible fraude
```

---

#### Método 2: Z-Score (Puntuación Z)

**Qué es:** Mide cuántas **desviaciones estándar** se aleja un punto de la media.

**Fórmula:**
$$Z = \frac{x - \mu}{\sigma}$$

**Cuadro de Símbolos:**

| Símbolo | Nombre | Significado |
|---------|--------|-------------|
| **Z** | Puntuación Z | Cuántas desviaciones alejadas |
| **x** | Valor observado | El dato a evaluar |
| **μ** | Media | Promedio de todos los datos |
| **σ** | Sigma | Dispersión (desviación estándar) |

**Escala de Interpretación:**

```
← Muy bajo      Normal      Muy alto →
    |___________|___________|
   Z=-3         Z=0        Z=+3
   ↑ Anomalía           Esperado
   
Regla: |Z| > 3 → ⚠️ ALERTA
```

**Ejemplo Paso a Paso: Calificaciones**

```
Notas de examen en clase:
Estudiantes: 60, 65, 70, 75, 80

Paso 1: Calcular media
μ = (60+65+70+75+80)/5 = 70

Paso 2: Calcular desviación estándar
σ ≈ 8 (mide qué tan dispersas son)

Paso 3: Evaluar estudiante con nota 88
Z = (88 - 70) / 8 = 18 / 8 = 2.25
Interpretación: 2.25 desviaciones ARRIBA
→ ✓ Excelente, pero posible

Paso 4: Evaluar estudiante con nota 150
Z = (150 - 70) / 8 = 80 / 8 = 10
Interpretación: 10 desviaciones ARRIBA
→ ⚠️ IMPOSIBLE (máx es 100)
→ ERROR EN LOS DATOS
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

**Cuadro Visual de Correlación:**

```
r = +1.0        r = +0.5        r = 0          r = -0.7
Perfecta        Media          Ninguna         Fuerte
positiva        positiva       relación        negativa

  ↗              ↗              /-/             ↘
 /              /               /-/              
/              /                /-/               
•              •                /-/                •

Si X sube   Si X sube     X y Y        Si X sube
Y sube      Y sube poco  no tienen     Y baja
SIEMPRE     a veces       relación    SIEMPRE
```

**Ejemplo Paso a Paso: Publicidad vs Ventas**

```
Datos de 5 meses:
┌──────┬────────────┬──────────┐
│ Mes  │Publicidad($)│ Ventas($)│
├──────┼────────────┼──────────┤
│  1   │    $10     │   $50    │
│  2   │    $20     │  $100    │
│  3   │    $30     │  $150    │
│  4   │    $40     │  $200    │
│  5   │    $50     │  $250    │
└──────┴────────────┴──────────┘

Patrón observado:
Publicidad × 2 = Ventas × 2
Publicidad × 3 = Ventas × 3

Conclusión: RELACIÓN PERFECTA

Correlación: r = +1.0

✓ Decisión: Publicidad efectiva.
Invertir más = más ventas GARANTIZADO.
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

## 6b. Tendencias Futuras: IA, Deep Learning y Evolución de la Estadística

Mientras la estadística clásica (como EDA) sigue siendo fundamental, el mercado evoluciona hacia:

### El Rol Actual de la Estadística

**Automatización en Banca:**
- **Scoring crediticio:** Sistemas automáticos que deciden si aprobas un crédito
- **Detección de fraude:** Máquinas que detectan transacciones anómalas
- **Pero:** Estos sistemas usan **estadística** como base

### La Tendencia: Deep Learning y IA

**¿Por qué las empresas no usan solo ChatGPT?**
```
Razón 1: CONFIDENCIALIDAD
- Datos bancarios NO se suben a ChatGPT (riesgo legal)
- Las empresas prefieren desarrollar modelos propios (in-house)

Razón 2: PRECISIÓN
- Para problemas complejos, Deep Learning > Estadística clásica
- Pero Deep Learning requiere mucha data y potencia computacional

Razón 3: COSTO
- APIs de OpenAI: $0.02 por 1K tokens
- Modelos propios: Mayor inversión inicial, luego sin costo
```

**La Cadena de Evolución:**
```
Estadística Descriptiva (Clase 2)
        ↓
Estadística Inferencial (Clase 3)
        ↓
EDA - Análisis Exploratorio (Clase 4) ← AQUÍ
        ↓
Regresión y Clasificación (próximas clases)
        ↓
Machine Learning (Ciencia de Datos II)
        ↓
Deep Learning (Redes Neuronales)
        ↓
IA Generativa (ChatGPT, modelos grandes)
```

**Realidad del Mercado 2026:**
- 80% de empresas aún usan **estadística + ML tradicional**
- 20% experimenta con **Deep Learning**
- Pocas hacen producción pura con IA generativa (por riesgos)

**Para profesionales:**
- Dominar estadística sigue siendo **CRÍTICO**
- Deep Learning es el futuro pero requiere base sólida
- **El dato es el activo más valioso de cualquier empresa hoy en día**

---

## 7. Próximas Pasos: Aplicación Práctica con Python

> **Nota importante para la próxima clase:**

Usando la configuración establecida en esta clase, se comenzará a aplicar **Python** para aplicar todos estos conceptos en ejercicios prácticos:

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
- [ ] **Calidad de datos:** ¿Son precisos? ¿De fuentes confiables? ¿Hay sesgos?
- [ ] **Datos incompletos:** ¿Faltan valores? ¿Cuántos? ¿Estrategia de imputación?
- [ ] **Sobreajuste:** Si creo modelos, ¿funcionan en datos nuevos o solo en entrenamien?
- [ ] **Visualización:** ¿He creado gráficos que muestren patrones claramente?

---

## 9. Recordatorio Rápido: Fórmulas y Cuándo Usarlas

### Cheat Sheet de Fórmulas (Hoja de Trucos)

#### 1️⃣ Regresión Lineal

**Fórmula:**
$$\hat{y} = \beta_1 x + \beta_0$$

**Cuándo usarla:**
- Cuando quieres **predecir** un valor basado en un patrón
- Cuando necesitas saber si hay **tendencia clara**

**Pasos simples:**
```
1. Identifica: ¿Qué quiero predecir? (Y)
2. Identifica: ¿Con qué lo predigo? (X)
3. Busca el patrón: ¿Cuánto sube Y por cada X?
4. Aplica: Ŷ = (cambio por X) × X + (valor inicial)
5. Predice: Reemplaza X con el valor futuro
```

**Ejemplo Real:**
```
Ventas suben $2 cada mes, comenzando en $8.
¿Cuánto en mes 10?

Ŷ = 2(10) + 8 = $28

Uso: Presupuestar $28 para mes 10.
```

---

#### 2️⃣ Rango Intercuartílico (IQR)

**Fórmula:**
```
Límite Inferior = Q1 - 1.5 × IQR
Límite Superior = Q3 + 1.5 × IQR
```

**Cuándo usarla:**
- Cuando quieres **detectar fraudes**
- Cuando quieres **identificar datos anómalos**
- Datos con **valores extremos**

**Pasos simples:**
```
1. Ordena los datos de menor a mayor
2. Encuentra Q1 (25%) y Q3 (75%)
3. Calcula IQR = Q3 - Q1
4. Calcula los límites
5. Cualquier dato FUERA = ANOMALÍA
```

**Ejemplo Real:**
```
Transacciones normales: $10-$15
IQR detecta: $500 es imposible
→ Bloquear y investigar

Uso: Sistema automático de seguridad bancaria.
```

---

#### 3️⃣ Z-Score

**Fórmula:**
$$Z = \frac{x - \mu}{\sigma}$$

**Cuándo usarla:**
- Cuando quieres **comparar datos en diferentes escalas**
- Cuando quieres **saber cuán diferente es un valor**
- Datos **aproximadamente normales**

**Pasos simples:**
```
1. Calcula el promedio (μ)
2. Calcula cuán dispersos están (σ)
3. Resta el promedio al valor (x - μ)
4. Divide por la dispersión: Z = resultado / σ
5. Si |Z| > 3 = ANOMALÍA
```

**Ejemplo Real:**
```
Examen: promedio 70, dispersión 8
Estudiante sacó 88:
Z = (88-70)/8 = 2.25 → Excelente ✓

Estudiante sacó 150:
Z = (150-70)/8 = 10 → ¡IMPOSIBLE! ⚠️
→ Error en el sistema
```

---

#### 4️⃣ Promedio Móvil

**Fórmula:**
$$\text{Promedio Móvil} = \frac{x_1 + x_2 + ... + x_n}{n}$$

**Cuándo usarla:**
- Cuando quieres **suavizar datos ruidosos**
- Cuando quieres **ver tendencias sin ruido**
- Series de tiempo **con fluctuaciones**

**Pasos simples:**
```
1. Define una ventana (ej. últimos 3 días)
2. Suma los valores en la ventana
3. Divide por la cantidad de valores
4. Desplaza la ventana un periodo
5. Repite
```

**Ejemplo Real:**
```
Ventas: 10, 12, 8, 11, 15, 9

Promedio móvil 3 días:
(10+12+8)/3 = 10
(12+8+11)/3 = 10.3
(8+11+15)/3 = 11.3

Uso: Ver si ventas suben sin distracciones.
```

---

#### 5️⃣ Correlación de Pearson

**Fórmula:**
$$r = \frac{\sum (x_i - \bar{x})(y_i - \bar{y})}{\sqrt{\sum (x_i - \bar{x})^2 \sum (y_i - \bar{y})^2}}$$

**Cuándo usarla:**
- Cuando quieres **saber si dos cosas están relacionadas**
- Cuando necesitas **identificar variables que se mueven juntas**

**Pasos simples (versión rápida):**
```
1. Calcula: ¿Cuándo X sube, Y también sube?
2. Resultado entre -1 y +1
3. Cerca de +1 = relación positiva fuerte
4. Cerca de -1 = relación negativa fuerte
5. Cerca de 0 = sin relación
```

**Ejemplo Real:**
```
Publicidad: $10, $20, $30, $40, $50
Ventas:    $50, $100, $150, $200, $250

Patrón: Siempre Publicidad × 5 = Ventas
r = +1.0 (PERFECTA)

Uso: "Invertir más en publicidad garantiza más ventas"
```

---

### Tabla Comparativa: Cuál Usar Cuándo

| Problema | Fórmula | Por qué |
|----------|---------|--------|
| **¿Cuánto venderé el próximo mes?** | Regresión Lineal | Predice basado en patrón |
| **¿Esta transacción es fraude?** | IQR o Z-Score | Detecta valores anómalos |
| **¿Los datos suben o bajan?** | Regresión o Promedio Móvil | Identifica tendencia |
| **¿X causa Y?** | Correlación | Mide relación entre variables |
| **¿Está este estudiante fuera de lo normal?** | Z-Score | Compara con promedio |
| **¿Suavizo datos ruidosos?** | Promedio Móvil | Elimina fluctuaciones |

---

### Fórmulas Complementarias (Cálculos intermedios)

Estas fórmulas no son independientes pero son **pasos clave** en los métodos principales:

#### IQR (Rango Intercuartílico)

**Fórmula:**
```
IQR = Q3 - Q1
```

**Cuadro de Símbolos:**

| Símbolo | Significado |
|---------|-------------|
| **IQR** | Rango intercuartílico (distancia entre cuartiles) |
| **Q3** | Tercer cuartil (75% de los datos) |
| **Q1** | Primer cuartil (25% de los datos) |

**Uso en límites de detección:**
```
Límite Inferior = Q1 - 1.5 × IQR
Límite Superior = Q3 + 1.5 × IQR

Cualquier dato FUERA = ANOMALÍA
```

**Cuándo usarla:**
- Calcular rango normal de datos
- Establecer límites para detectar fraude
- Identificar valores extremos

---

#### Porcentaje de Cambio

**Fórmula:**
```
% Cambio = ((Valor Final - Valor Inicial) / Valor Inicial) × 100
```

**Cuadro de Símbolos:**

| Símbolo | Significado |
|---------|-------------|
| **Valor Final** | El número al final del período |
| **Valor Inicial** | El número al inicio del período |
| **× 100** | Convierte a porcentaje |

**Ejemplo:**
```
Ventas enero: $100
Ventas junio: $125

% Cambio = ((125 - 100) / 100) × 100 = 25%
Interpretación: Ventas crecieron 25% en 6 meses
```

---

## 10. Glosario Rápido de Símbolos Matemáticos

**Para no perderse en las fórmulas, aquí están todos los símbolos que usamos:**

| Símbolo | Nombre | Qué significa | Dónde lo vimos |
|---------|--------|---------------|----------------|
| **$\hat{y}$** | Y predicha | Valor calculado por la fórmula | Regresión lineal |
| **$\beta_1$** | Beta uno (pendiente) | Cuánto sube/baja cada vez | Regresión lineal |
| **$\beta_0$** | Beta cero (intercepto) | Punto de inicio de la línea | Regresión lineal |
| **$x$** | X | Variable independiente (el mes) | Regresión lineal |
| **$\mu$** | Mu (media) | Promedio de todos los datos | Z-Score |
| **$\sigma$** | Sigma (desv. est.) | Mide qué tan dispersos están los datos | Z-Score |
| **$Z$** | Puntuación Z | Cuántas desviaciones alejadas de la media | Z-Score |
| **Q1** | Primer cuartil | El 25% de los datos está debajo | IQR |
| **Q3** | Tercer cuartil | El 75% de los datos está debajo | IQR |
| **IQR** | Rango intercuartílico | La diferencia entre Q3 y Q1 | IQR |
| **$r$** | Coeficiente de correlación | Mide relación entre dos variables | Correlación |
| **$\bar{x}$** | X barra | Promedio de X | Fórmula de correlación |
| **$\bar{y}$** | Y barra | Promedio de Y | Fórmula de correlación |

**Regla de Oro:**

```
Cuando veas una fórmula complicada:
1. Identifica cada símbolo en la tabla
2. Lee qué significa cada uno
3. Observa un ejemplo paso a paso
4. La fórmula es solo "código" para hacer cálculos

¡No es magia, es proceso!
```

---

## 10. Referencia Visual

![Análisis Exploratorio de Datos — EDA: Conceptos, Métodos y Aplicaciones](./analisis-exploratorio-datos-eda-clase-4.png)

*Fuente: Presentación clase 4 — Materiales del curso*

---

## 11. Recursos Complementarios

- 📊 **Presentación (PDF):** [40097-S04-PRESENTACION.pdf](./40097-S04-PRESENTACION.pdf)
- 📑 **Presentación original (PPTX):** 40097-S04-PRESENTACION.pptx

---

---

## Sesión Práctica — Configuración Ambiental

**Dirigida por:** Omar David Visitación Romero  
**Tópicos:** Instalación de Python, VS Code, librerías (Pandas, NumPy, Matplotlib)  
**Resultado:** Entorno listo para ejercicios prácticos de EDA con datos reales

---

*Última actualización: 09/05/2026 | Clase 4: Análisis Exploratorio de Datos (EDA) — Versión integrada con sesión práctica*
