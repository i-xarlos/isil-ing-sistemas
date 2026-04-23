# Análisis Estadístico y Data Mining — Tema 02: Estadística Inferencial (Clase 3)

**Curso:** Análisis Estadístico y Data Mining (ISIL, 2026-1)  
**Docente:** [Por confirmar]  
**Fecha:** 22/04/2026

---

## 1. Introducción: Dos Ramas de la Estadística

> **Esencia:** Trabajar con datos para entender patrones y tomar decisiones bajo incertidumbre.

| **Rama** | **Qué hace** | **Scope** | **Pregunta típica** |
|----------|-------------|----------|-------------------|
| **Descriptiva** | Resume datos existentes | Lo que YA mediste | ¿Cuál es el promedio de mis datos? |
| **Inferencial** | Generaliza desde muestra a población | Lo que NO mediste | ¿Qué podemos decir de TODA la población basándonos en una muestra? |

### Ejemplo comparativo:
- **Descriptiva:** En tu salón hay 30 alumnos con notas 6, 7, 8, 9. **Promedio:** 7.5.
- **Inferencial:** Encuestamos 500 personas y 60% apoya una idea. **Estimamos:** ~60% de TODA la ciudad lo apoya (margen de error: ±3%).

---

## 2. Conceptos Fundamentales

![Estadística Inferencial: Conceptos, Probabilidad y Pruebas de Hipótesis](./estadistica-inferencial-conceptos-probabilidad-hipotesis-clase-3.png)

### Vocabulario clave:

| **Término** | **Definición** | **Ejemplo** |
|-----------|--------------|----------|
| **Población** | Todos los individuos que te interesan | Todos los votantes de un país |
| **Muestra** | Una parte representativa de la población | 1,000 votantes seleccionados aleatoriamente |
| **Parámetro** | Característica desconocida de la población | Media poblacional μ (mu) |
| **Estimador** | Valor calculado de la muestra | Media muestral x̄ (x barra) |
| **Estimación** | Cálculo aproximado del parámetro poblacional | Creemos que μ ≈ 65 |
| **Intervalo de Confianza** | Rango donde probablemente está el valor real | Con 95% confianza: μ está entre 62 y 68 |
| **Prueba de Hipótesis** | Test para decidir si una diferencia es real o por azar | ¿Este medicamento realmente funciona o solo por suerte? |
| **Nivel de Significancia (α)** | Probabilidad de cometer error tipo 1 | Típicamente 0.05 (5%) |
| **P-valor** | Probabilidad de observar datos si la hipótesis nula es verdadera | Si p-valor < 0.05 → rechazamos hipótesis nula |

### Glosario visual rápido:

> **Población:** *todos* los que te interesan.  
> Ej.: "toda la ciudad", "todos los clientes de un banco".

> **Muestra:** *una parte* representativa de esa población.  
> Ej.: "1,000 personas", "200 transacciones aleatorias".

> **Estimación:** un **cálculo aproximado** del total usando la muestra.  
> Ej.: "estimamos que 60% apoya esta política".

> **Intervalo de confianza:** un **rango** donde probablemente está el valor real.  
> Ej.: "con 95% confianza, está entre 57% y 63%".

> **Prueba de hipótesis:** decidir si una diferencia es **real** o fue **por suerte/azar**.  
> Ej.: "¿este método de estudio mejora las notas o solo parece?"

---

## 3. Estadística Inferencial: La Rama Principal

**La estadística inferencial** (también llamada **estadística diferencial**) es la parte de la estadística que:

> **Usa datos de una muestra** → **Para sacar conclusiones, estimar valores o tomar decisiones sobre una población completa** → Cuando no puedes medir a todos.

### ¿En qué se diferencia de la descriptiva?

| Aspecto | Descriptiva | Inferencial |
|--------|-----------|-------------|
| **Objetivo** | Resumir datos | Generalizar a población |
| **Herramientas** | Promedios, medianas, gráficos | Intervalos, pruebas de hipótesis, modelos |
| **Incertidumbre** | No cuantifica error | Siempre habla de probabilidad y confianza |
| **Muestra vs Población** | Solo describe muestra | Estima población desde muestra |

---

## 4. Herramientas de Estadística Inferencial

### A. Estimación

**Concepto:** Predecir el valor de un parámetro poblacional usando datos muestrales.

**Tipos:**
- **Estimación puntual:** un único número (ej: "el promedio es 65")
- **Estimación por intervalo:** rango con nivel de confianza (ej: "entre 62 y 68 con 95% confianza")

**Ejemplo:**
```
Muestra de 100 clientes: gasto promedio = $500
→ Estimamos que TODOS los clientes gastan ~$500
→ Intervalo 95% confianza: [$480 - $520]
```

### B. Pruebas de Hipótesis

**Concepto:** Test estadístico para decidir entre dos hipótesis:
- **H₀ (Hipótesis Nula):** No hay diferencia / el efecto no existe
- **H₁ (Hipótesis Alternativa):** Hay diferencia / el efecto existe

**Proceso típico:**
1. Plantear hipótesis (H₀ y H₁)
2. Recolectar datos
3. Calcular estadístico de prueba (t, χ², F, etc.)
4. Comparar p-valor con nivel de significancia (α = 0.05)
5. Decisión: rechazar H₀ o no

**Tipos de Pruebas Comunes:**

| **Prueba** | **Caso de uso** | **Variables** | **Ejemplo** |
|-----------|----------------|--------------|----------|
| **t-test** | Comparar promedios entre 2 grupos | Continuas, normal | ¿Dos métodos de estudio dan diferentes notas? |
| **ANOVA** | Comparar promedios entre 3+ grupos | Continuas, normal | ¿3 dietas producen diferentes pérdidas de peso? |
| **Chi-cuadrado (χ²)** | Relación entre variables categóricas | Categóricas | ¿El género está relacionado con preferencia de producto? |
| **Pearson (r)** | Correlación entre 2 variables continuas | Continuas | ¿Hay relación entre años de experiencia y salario? |
| **Wilcoxon, Mann-Whitney** | Cuando datos NO son normales | Ordinales, no-normales | Test no-paramétrico alternativo a t-test |

### C. Modelos y Predicción

**Regresión Lineal:** Predecir una variable continua basada en otra(s).

```
Ejemplo: Salario = 30,000 + (5,000 × Años_experiencia)
Si tienes 5 años → Salario estimado = 55,000
```

**Regresión Logística:** Predecir probabilidad de un evento binario (sí/no).

```
Ejemplo: Probabilidad de compra = función(edad, ingreso, historial)
```

### D. Diseño de Experimentos y Muestreo

**Muestreo aleatorio:** Garantiza que la muestra represente a la población.

- **Aleatorio simple:** cada individuo tiene igual probabilidad
- **Estratificado:** divide en subgrupos (estratos) representados proporcionalmente
- **Sistemático:** toma cada k-ésimo individuo
- **Por conglomerados:** agrupa y selecciona clusters

**Tamaño de muestra:** Depende de confianza deseada, margen de error y variabilidad.

---

## 5. Aplicaciones Prácticas

| **Industria** | **Caso de uso** | **Pregunta inferencial** | **Herramienta** |
|--------------|----------------|----------------------|----------------|
| **Medicina** | Ensayos clínicos | ¿Este medicamento funciona mejor que placebo? | Prueba t, ANOVA |
| **Marketing** | A/B testing | ¿El nuevo diseño web aumenta conversiones? | Prueba χ², diferencia de proporciones |
| **Manufactura** | Control de calidad | ¿El lote cumple especificaciones? | Muestreo, prueba de hipótesis |
| **Política** | Encuestas | ¿Cuál es la intención de voto? | Intervalo de confianza, margen de error |
| **Educación** | Evaluación método | ¿El nuevo sistema mejora aprendizaje? | Prueba t, ANOVA |
| **Finanzas** | Riesgo crediticio | ¿Quién tiene riesgo de default? | Regresión logística |
| **Tecnología** | Análisis de datos | ¿Qué factores predicen abandono de usuario? | Regresión, correlación |

---

## 6. Idea Clave: El Triángulo de la Inferencia

```
        POBLACIÓN
       (desconocida)
            ↑
         (estimamos)
            |
        MUESTRA ↔ EXPERIMENTO
        (medimos)  (diseñamos)
            |
            (recolectamos datos)
            ↓
        CONCLUSIÓN
      (con confianza ~95%)
```

> **Recuerda:** Como trabajas con muestras, la estadística inferencial siempre habla en términos de **probabilidad, error y confianza**. Nunca da "certezas absolutas", sino **márgenes razonables de incertidumbre**.

---

## 7. Próximas Clases

En siguientes sesiones veremos:
- Cálculo detallado de intervalos de confianza
- Interpretación de p-valores (y errores comunes)
- Diseño de experimentos con rigor estadístico
- Herramientas software: R, Python (scipy, statsmodels)

---

*Última actualización: 22/04/2026 | Tema 02: Estadística Inferencial*
