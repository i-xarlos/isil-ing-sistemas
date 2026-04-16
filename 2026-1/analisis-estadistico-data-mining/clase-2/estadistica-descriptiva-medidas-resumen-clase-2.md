# Estadística Descriptiva: Medidas de Resumen (Clase 2)

**Curso:** Análisis Estadístico y Data Mining (ISIL, 2026-1)  
**Docente:** Omar David Visitación Romero  
**Fecha:** 15/04/2026

---

## ¿Qué es la estadística descriptiva?

La estadística descriptiva es el conjunto de técnicas que permiten **resumir, organizar y describir** un conjunto de datos. En lugar de sacar conclusiones sobre una población entera, simplemente describe lo que tienes.

Las medidas de resumen más usadas son:

- **Media aritmética** (promedio)
- **Moda**
- **Mediana**
- **Varianza**
- **Desviación estándar**
- **Histograma** (herramienta visual)

---

## Media Aritmética

### ¿Qué es?

La **media aritmética** (o **promedio**) es el valor que obtienes al sumar todos los datos y dividir entre la cantidad de datos.

### Fórmula

```
x̄ = (x₁ + x₂ + ... + xₙ) / n
```

### Ejemplo

Notas de un estudiante: **12, 15, 13, 10**

- Suma = 12 + 15 + 13 + 10 = 50
- Cantidad de datos (n) = 4
- Media = 50 / 4 = **12.5**

### ¿Para qué sirve?

Representa el "centro de gravedad" de los datos. Es útil cuando los datos no tienen valores extremos muy alejados.

---

## Moda

### ¿Qué es?

La **moda** es el **valor que más se repite** en un conjunto de datos.

### Casos posibles

| Situación | Ejemplo | Resultado |
|---|---|---|
| Un valor se repite más | 2, 5, 5, 7, 9 | Moda = **5** |
| Ningún valor se repite | 1, 2, 3, 4 | **Sin moda** |
| Dos valores empatan | 3, 3, 4, 4, 6 | Moda = **3 y 4** (bimodal) |
| Todos los valores son iguales | 8, 8, 8, 8 | Moda = **8** |

### ¿Para qué sirve?

Es útil para encontrar el valor "más común" en una muestra. Se usa mucho en marketing, encuestas y análisis de comportamiento.

---

## Mediana

### ¿Qué es?

La **mediana** es el **valor central** cuando los datos están ordenados de menor a mayor.

### Cómo calcularla

1. Ordena los datos de menor a mayor.
2. Si la cantidad de datos es **impar** → la mediana es el valor del centro.
3. Si la cantidad de datos es **par** → la mediana es el promedio de los dos valores del centro.

### Caso impar

**Datos:** 9, 2, 5, 1, 7  
**Ordenados:** 1, 2, **5**, 7, 9  
Hay 5 datos → el del centro es el 3.º → **Mediana = 5**

> **Regla:** con n datos impares, la mediana es el dato en la posición (n + 1) / 2.

### Caso par

**Datos:** 9, 2, 5, 1, 7, 8  
**Ordenados:** 1, 2, **5, 7**, 8, 9  
Los dos del centro son **5 y 7** → Mediana = (5 + 7) / 2 = **6**

> **Regla:** con n datos pares, la mediana es el promedio de los valores en las posiciones n/2 y (n/2) + 1.

### ¿Para qué sirve?

La mediana es más robusta que la media cuando hay valores extremos (outliers). Por ejemplo, para describir salarios o precios de vivienda.

---

## Varianza

### ¿Qué es?

La **varianza** mide **qué tan dispersos** están los datos respecto a su media. Si la varianza es grande, los datos están muy separados entre sí; si es pequeña, están muy juntos.

### Varianza poblacional vs muestral

La diferencia clave está en el denominador:

| Tipo | Cuándo se usa | Fórmula |
|---|---|---|
| **Poblacional (σ²)** | Cuando tienes **todos** los datos de la población | Suma de cuadrados / N |
| **Muestral (s²)** | Cuando tienes solo una **muestra** de la población | Suma de cuadrados / (n − 1) |

Se divide entre n − 1 en la varianza muestral para corregir el sesgo al estimar la varianza real de la población (corrección de Bessel).

### Pasos para calcularla

1. Calcula la **media**.
2. Resta la media a cada dato: (xᵢ − media)
3. Eleva al cuadrado: (xᵢ − media)²
4. Suma esos cuadrados.
5. Divide entre **N** (población) o **n − 1** (muestra).

### Ejemplo numérico — Datos: 5, 7, 3, 9

**Paso 1 — Media:**

```
x̄ = (5 + 7 + 3 + 9) / 4 = 24 / 4 = 6
```

**Paso 2 y 3 — Diferencias y cuadrados:**

| xᵢ | xᵢ − x̄ | (xᵢ − x̄)² |
|---|---|---|
| 5 | −1 | 1 |
| 7 | +1 | 1 |
| 3 | −3 | 9 |
| 9 | +3 | 9 |

**Paso 4 — Suma de cuadrados:**

```
1 + 1 + 9 + 9 = 20
```

**Paso 5 — Varianza:**

- **Poblacional** (N = 4): σ² = 20 / 4 = **5**
- **Muestral** (n − 1 = 3): s² = 20 / 3 ≈ **6.67**

---

## Desviación Estándar

### ¿Qué es?

La **desviación estándar** es la **raíz cuadrada de la varianza**. Mide la dispersión de los datos en las **mismas unidades** que los datos originales (por eso es más fácil de interpretar que la varianza).

### Fórmulas

- **Poblacional:** σ = √σ²
- **Muestral:** s = √s²

### Ejemplo — continuación con datos 5, 7, 3, 9

Con la varianza calculada en la sección anterior:

| Tipo | Varianza | Desviación estándar |
|---|---|---|
| Poblacional | σ² = 5 | σ = √5 ≈ **2.24** |
| Muestral | s² ≈ 6.67 | s = √6.67 ≈ **2.58** |

### ¿Para qué sirve?

Permite saber cuánto se alejan los datos del promedio en promedio. Por ejemplo, si la media de notas es 14 y la desviación estándar es 2, la mayoría de notas están entre 12 y 16.

---

## Histograma

### ¿Qué es?

Un **histograma** es un gráfico que muestra **cómo se distribuyen** datos numéricos, agrupándolos en **intervalos** (también llamados *clases* o *bins*).

- **Eje X:** intervalos de valores
- **Eje Y:** frecuencia (cuántos datos caen en cada intervalo)
- Las **barras van pegadas** porque los intervalos son continuos

### Diferencia con un gráfico de barras

| Histograma | Gráfico de barras |
|---|---|
| Datos numéricos continuos | Datos categóricos |
| Barras pegadas | Barras separadas |
| Eje X son rangos | Eje X son categorías |

### Ejemplo

**Datos (edades):** 12, 13, 13, 14, 15, 15, 15, 16, 18, 19

**Paso 1 — Tabla de frecuencias** (intervalos de 2 años):

| Intervalo | Datos incluidos | Frecuencia |
|---|---|---|
| 12 – 13 | 12, 13, 13 | 3 |
| 14 – 15 | 14, 15, 15, 15 | 4 |
| 16 – 17 | 16 | 1 |
| 18 – 19 | 18, 19 | 2 |

**Paso 2 — Representación ASCII del histograma:**

```
Frecuencia
4 |   ████
3 | ████ ████
2 | ████ ████         ████
1 | ████ ████ ████    ████
  +----+----+----+----+----
   12  14  16  18  20   Edad
```

Las barras de mayor altura representan los intervalos con más datos. En este caso, el grupo de 14–15 años es el más frecuente.

### ¿Para qué sirve?

El histograma permite identificar rápidamente:

- Si los datos están distribuidos de forma simétrica o sesgada
- Dónde se concentran los valores (pico)
- Si hay valores extremos (barras aisladas)

---

## Resumen de conceptos

| Medida | ¿Qué mide? | Sensible a extremos |
|---|---|---|
| **Media** | Centro (promedio aritmético) | Sí |
| **Moda** | Valor más frecuente | No |
| **Mediana** | Centro posicional | No |
| **Varianza** | Dispersión (en unidades²) | Sí |
| **Desviación estándar** | Dispersión (en unidades originales) | Sí |
| **Histograma** | Distribución visual de los datos | — |
