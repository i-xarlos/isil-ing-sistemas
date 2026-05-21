# Solución: Actividad 2 — Análisis Estadístico y Data Mining

**Curso:** Análisis Estadístico y Data Mining (ISIL 2026-1)
**Actividad:** 2

---

## Contexto general

La actividad describe dos casos prácticos:

1. Una cadena nacional de supermercados que aplica minería de datos para mejorar promociones personalizadas y optimizar atención al cliente.
2. Una red privada de clínicas que usa análisis estadístico para identificar pacientes con alto riesgo de complicaciones respiratorias.

Las respuestas ocupan conceptos del curso sobre minería de datos, calidad de datos, limpieza, imputación y normalización.

---

## Pregunta 01 (10 puntos)

### Contexto específico de la pregunta

**Escenario:** Una cadena nacional de supermercados (como Tottus, Metro o Plaza Vea) tiene 15 años de transacciones de millones de clientes. El equipo de datos quiere responder preguntas como:
- ¿Qué productos se compran juntos habitualmente?
- ¿Puedo predecir qué compraría un cliente si veo su carrito?
- ¿Cómo optimizo promociones y descuentos?

**Lo que la actividad pregunta:**
1. ¿Qué técnica de minería de datos es más apropiada? (Pregunta 1.1)
2. ¿Qué defectos tiene el dataset histórico que impiden análisis? (Pregunta 1.2)

**Por qué importa:**
Sin técnica correcta, no descubres patrones. Sin limpieza, tus patrones descubiertos son falsos (basados en datos sucios).

---

### 1.1 Técnica de minería de datos aplicada por la empresa

La empresa utilizó **reglas de asociación** como técnica principal de minería de datos. Según clase 5, es un tipo de minería descriptiva que descubre relaciones frecuentes entre elementos.

**Ejemplo práctico:** Analizando millones de transacciones, descubrieron que clientes comprando pañales y fórmula infantil también adquieren productos de limpieza con 75% de confianza.

`SI (pañales AND fórmula) ENTONCES (productos limpieza) - confianza: 75%`

**Valor empresarial:**
- Promociones cruzadas basadas en patrones reales
- Bundles de productos que aumentan ticket promedio
- Colocación estratégica en tienda
- Ofertas personalizadas relevantes

**Otras técnicas complementarias:**
El equipo también usó **clasificación** y **clustering** (clase 5) para segmentar clientes por frecuencia, ticket promedio y preferencias, permitiendo agrupar comportamientos similares y hacer predicciones.

### 1.2 Cuatro problemas de calidad de datos detectados

Según clase 6 (preparación de datos):

**1. Registros duplicados**
- Clientes o ventas repetidas por entradas múltiples en el sistema
- Impacto: Inflan frecuencias, distorsionan patrones de asociación, KPIs incorrectos

**2. Nombres inconsistentes de productos**
- Mismo producto con etiquetas distintas por sucursal (ej: "Leche Entera" vs "LECHE INTEGRAL")
- Impacto: Fragmentación de análisis, imposibilidad de agrupar categorías, reglas de asociación inválidas

**3. Formatos de fecha inconsistentes**
- Fechas en DD/MM/YYYY, MM/DD/YYYY o YYYY-MM-DD según sucursal
- Impacto: Imposibilita análisis temporal, invalidar comparaciones entre tiendas

**4. Montos atípicos por errores de digitación**
- Ventas con valores imposibles (ej: $999,999 por producto de $10)
- Impacto: Sesgan promedios, generan outliers que invalidan análisis estadístico

**Soluciones aplicadas:**
Limpieza automática, estandarización de nombres, formato ISO de fechas, validación de rangos lógicos.

---

## Pregunta 02 (10 puntos)

### Contexto específico de la pregunta

**Escenario:** Una red privada de clínicas (como Clínica Delgado, Arzobispo Loayza) tiene dataset de 3000 pacientes con variables clínicas: edad, peso, presión arterial, glucosa, antecedentes, diagnósticos, etc.

**El problema:** 
- 30% de registros tienen peso faltante (pacientes en emergencia, sin protocolo completo)
- 25% tienen presión arterial faltante
- Muchos antecedentes están en blanco

**Lo que la actividad pregunta:**
1. ¿Cómo reemplazas esos faltantes sin sesgar el dataset? (Pregunta 2.1)
2. ¿Cómo normalizas variables que están en escalas completamente diferentes? (Pregunta 2.2)

**Por qué importa:**
Si eliminas 30% de datos, tu modelo es débil. Si no normalizas, el modelo da más importancia a la variable con escala mayor (glucosa en mg/dL vs peso en kg).

---

### 2.1 Proceso aplicado para reemplazar valores faltantes

El equipo aplicó **imputación** (clase 6) en cuatro pasos:

**Paso 1: Identificación**
Variables con faltantes: peso, presión arterial, antecedentes familiares.

**Paso 2: Evaluación del patrón**
- **MCAR** (Missing Completely At Random): Faltante sin relación con otras variables → seguro imputar
- **MAR** (Missing At Random): Faltante depende de variables observadas → requiere cuidado
- **MNAR** (Missing Not At Random): Faltante relacionado con el valor mismo → riesgo de sesgo

En clínica, muchos faltantes en peso son MAR (pacientes en emergencia sin protocolo completo).

**Paso 3: Selección de estrategia según tipo**

| Tipo de Variable | Método | Ejemplo |
|---|---|---|
| Numérica (peso) | Media/Mediana | Si media=75kg, reemplazar con 75kg |
| Categórica (antecedentes) | Moda | Si "hipertensión" es más frecuente, usarla |
| Correlacionada | Regresión/KNN | Predecir peso basado en edad, talla, IMC |

**Paso 4: Validación**
Documentar qué faltantes fueron imputados, verificar que no introduzca sesgo.

**Ventaja en medicina:**
Preserva historias clínicas valiosas y permite modelos predictivos más potentes.

### 2.2 Técnica de normalización que utiliza media y desviación estándar

**Normalización Z-score** (clase 6), también llamada estandarización.

**Fórmula:**

`z = (x - media) / desviación estándar`

Donde:
- `x` = valor original
- `μ` = media
- `σ` = desviación estándar
- Resultado: variable con media=0 y σ=1

**Ejemplo práctico en clínica:**

| Variable | Rango | Media | σ | Valor Original | Z-Score |
|---|---|---|---|---|---|
| Peso (kg) | 40–150 | 75 | 15 | 90 kg | (90-75)/15 = **1.0** |
| Presión Sistólica (mmHg) | 90–180 | 120 | 20 | 140 mmHg | (140-120)/20 = **1.0** |
| Glucosa (mg/dL) | 70–400 | 100 | 30 | 130 mg/dL | (130-100)/30 = **1.0** |

Todos los valores originales distintos ahora tienen Z=1.0, significando "1 desviación estándar arriba de la media".

**Beneficios en modelos médicos:**
- **Equidad:** Variables con escalas diferentes (kg vs mg/dL) contribuyen equitativamente
- **Convergencia:** Algoritmos convergen más rápido
- **Interpretación:** Z=2.0 siempre significa "2σ arriba de media" en cualquier variable
- **Detección de anomalías:** Z>3 o Z<-3 identifica casos inusuales para revisión clínica

---

## Resumen de mejoras

**Pregunta 1:** Reglas de asociación con ejemplo específico de patrón, conectada a clase 5. Cuatro problemas de calidad con impacto cuantificable en análisis.

**Pregunta 2:** Imputación con patrones MCAR/MAR/MNAR (concepto crítico de clase 6). Tabla comparativa de métodos por tipo de variable. Z-score con ejemplo numérico detallado mostrando cómo tres variables distintas convergen a Z=1.0.
