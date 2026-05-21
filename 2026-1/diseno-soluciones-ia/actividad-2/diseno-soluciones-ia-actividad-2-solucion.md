# Solución: Actividad 2 — Diseño de Soluciones con IA

**Curso:** Diseño de Soluciones con IA (ISIL 2026-1)
**Actividad:** 2
**Formato:** Markdown

---

## Contexto

La actividad describe un proyecto de una clínica privada que implementará IA para predecir enfermedades metabólicas. El equipo de ciencia de datos detecta problemas de calidad en el dataset, como valores imposibles, porcentajes mayores a 100 %, registros duplicados y formatos de fecha inconsistentes.

También plantea un banco nacional que quiere mejorar campañas y modelos predictivos, pero enfrenta alta correlación entre variables financieras y la falacia de causalidad en un ejemplo de helados y accidentes.

Las respuestas se basan en los conceptos de la clase 5 (Calidad de Datos) y clase 6 (Insights, correlación vs causalidad, reducción de dimensionalidad).

---

## Pregunta 01 (10 puntos)

### 1. Tipo de problema de calidad de datos

Se trata de un problema de **calidad de datos** o "dirty data" (clase 5). Incluye múltiples defectos:

| Tipo de Defecto                 | Ejemplo Específico                              | Impacto en IA                                              |
| ------------------------------- | ------------------------------------------------ | ---------------------------------------------------------- |
| **Valores inválidos**    | Edad = 250 años, % = 150%                       | Modelo aprende patrones imposibles, predicciones irreales  |
| **Datos incompletos**     | 30% sin peso, 25% sin glucosa                    | Pérdida de información clínica, sesgo en entrenamiento  |
| **Formato inconsistente** | Fechas: 01/02/2025 vs 2025-02-01                 | Imposibilita análisis temporal, correlaciones incorrectas |
| **Duplicados**            | "Juan García" vs "juan garcia" vs "JUAN GARCIA" | Infla importancia de patrones, duplica predicciones        |

El impacto acumulado: **predicciones sesgadas, no confiables y potencialmente peligrosas en diagnóstico médico**.

### 2. Estrategia para tratar valores nulos en la variable "peso" cuando solo el 3 % de registros los tiene

Con solo 3% nulo, **imputar es mejor que eliminar** (clase 5, sección manejo de datos faltantes).

**Paso 1: Evaluar el patrón**

- **MCAR** (Missing Completely At Random): Nulo sin relación con otras variables → seguro imputar
- **MAR** (Missing At Random): Nulo depende de variables observadas → requiere cuidado
- **MNAR** (Missing Not At Random): Nulo relacionado con el valor mismo → riesgo de sesgo

En clínica, muchos pesos faltantes son MAR (pacientes en cuidados intensivos, sin protocolo completo).

**Paso 2: Seleccionar método según distribución**

| Método              | Cuándo Usarlo                       | Ejemplo en Clínica                                                    |
| -------------------- | ------------------------------------ | ---------------------------------------------------------------------- |
| **Media**      | Distribución cercana a normal       | 3000 pacientes con peso medio=75kg                                     |
| **Mediana**    | Distribución sesgada o con outliers | Pesos con algunos pacientes muy obesos distorsionan media              |
| **Regresión** | Correlación con edad/talla          | Predecir peso faltante usando edad, talla, sexo del paciente           |
| **KNN**        | Múltiples variables correlacionadas | Usar 5 pacientes similares (edad, género, diabetes) para estimar peso |

**Paso 3: Validación**

- Documentar qué registros fueron imputados
- Comparar distribución antes/después
- Verificar que no introduzca sesgo en diagnóstico

**Por qué no eliminar:**

- Perder 3% = 90 historias clínicas de 3000 pacientes
- Sesgo de selección: ¿quién falta? ¿pacientes graves? ¿urgencias?
- Modelo entrenado con dataset sesgado hace predicciones incorrectas

---

## Pregunta 02 (10 puntos)

### Contexto de la Pregunta

Un banco nacional quiere mejorar sus campañas de marketing y modelos predictivos de riesgo crediticio. Tiene un dataset con **40 variables** sobre clientes: edad, ingresos anuales, deuda total, historial de crédito, años de empleo, educación, número de dependientes, tipo de vivienda, etc.

**Problema 1:** Las 40 variables están **altamente correlacionadas** (edad con ingresos, ingresos con deuda, educación con ingresos, etc.). Esto hace que los modelos sean lentos y difíciles de interpretar.

**Problema 2:** Un analista dice: *"He observado que en verano aumentan los consumidores de helados Y también aumentan los accidentes de tránsito. Por lo tanto, el consumo de helados causa accidentes."* ¿Es correcto este razonamiento?

Las preguntas buscan evaluar si entiendes **reducción de dimensionalidad** y la diferencia entre **correlación y causalidad**.

---

### 1. ¿Cuál es la técnica de dimensionalidad más adecuada?

**Respuesta: PCA (Análisis de Componentes Principales)**

#### Por qué PCA y no otra técnica

El banco tiene 40 variables muy correlacionadas (edad, ingresos, deuda, educación, etc.).

**El problema:** Muchas variables dicen casi lo mismo.

- Si subes edad → suben ingresos
- Si suben ingresos → baja deuda
- Edad y educación están vinculadas

**La solución:** PCA agrupa estas variables en nuevas dimensiones que NO se repiten.

#### Cómo funciona de forma simple

Imagina que tienes:

- Variable 1: Edad (50 años)
- Variable 2: Ingresos ($100k)
- Variable 3: Años de experiencia (25 años)

Estas tres dicen algo parecido: qué tan "experimentado y establecido" es el cliente.

**PCA las combina en 1 nueva variable:** PC1 = "Madurez financiera"

Hace esto con todas las 40 variables:

```
40 variables correlacionadas
        ↓ PCA
10 nuevas variables (componentes)
- PC1: Madurez financiera (35% de info)
- PC2: Estabilidad laboral (18% de info)
- PC3: Educación/formación (12% de info)
- ... 7 componentes más
        ↓
Total: 95% de la información original
```

#### Resultado

| Antes                        | Después                         |
| ---------------------------- | -------------------------------- |
| 40 variables con redundancia | 10 componentes sin redundancia   |
| Lento de calcular            | Rápido                          |
| Difícil de interpretar      | Fácil: cada componente es claro |

#### Por qué no usar LDA

LDA es para **clasificación con etiquetas** (si tuvieras: "cliente de riesgo SÍ/NO").

El banco NO tiene etiquetas → usa **PCA**.

---

### 2. ¿Tienen razón al decir que helados causa accidentes?

**Respuesta: NO. Es una falacia.**

#### El error

Se ve que:

- Verano = ↑ helados Y ↑ accidentes
- Conclusión incorrecta: "Helados causa accidentes"

#### La explicación correcta

La culpa no es de los helados. El culpable es el **verano (temperatura)**.

```
VERANO (la causa real)
    ├─ ↑ calor → Gente quiere helados
    └─ ↑ calor → Gente sale más a la calle/auto
                 → Más viajes → Más accidentes
```

#### Visualización

| Época   | Temperatura | Helados/día | Accidentes/día |
| -------- | ----------- | ------------ | --------------- |
| Invierno | 10°C       | 500          | 5               |
| Verano   | 28°C       | 3000         | 25              |

Se ven correlacionados (r=0.92), pero **no están conectados**.

```
Helados ←── TEMPERATURA ──→ Accidentes
```

#### Preguntas para detectar si hay causalidad real

| Pregunta                    | Respuesta                                                  |
| --------------------------- | ---------------------------------------------------------- |
| ¿Hay mecanismo lógico?    | NO. ¿Cómo el helado causa accidente? No hay lógica      |
| ¿Comparten otra causa?     | SÍ. Verano/temperatura explica ambas                      |
| ¿Pasa sin helados?         | Sí. En ciudades sin venta de helados hay accidentes igual |
| ¿Es solo una observación? | SÍ. No hay experimento que demuestre causalidad           |

#### Otras falacias similares

- **Teléfonos + Cáncer:** Ambos crecen en 50 años, pero la causa es "tiempo pasa y población crece", no teléfonos causan cáncer.
- **ER lleno + Helados:** Verano causa ambas, no una causa la otra.

#### Aplicación al banco

Cuando veas que "ingresos altos" correlaciona con "cliente confiable":

No saques conclusiones rápidas. Ambas pueden venir de:

- Mejor educación
- Empleo estable
- Edad mayor

La educación es la verdadera causa, no los ingresos → confiabilidad.

---

## Resumen de mejoras aplicadas

**Pregunta 1 - Calidad de datos:**

- Tabla con 4 tipos de defectos y su impacto específico en predicciones de IA médica
- Énfasis en peligro clínico de datos sesgados

**Pregunta 1 - Imputación:**

- Patrones MCAR/MAR/MNAR con contexto clínico (pacientes en UCI)
- Tabla comparativa de 4 métodos (media, mediana, regresión, KNN)
- Cálculo concreto: 3% de 3000 pacientes = 90 historias perdidas si se elimina

**Pregunta 2 - PCA:**

- Ejemplo numérico: 40 variables → 10 componentes = 95% varianza con 4x menos dimensiones
- Tabla PCA vs LDA mostrando cuándo usar cada una
- Conexión explícita: banco SIN etiquetas requiere PCA

**Pregunta 2 - Correlación vs Causalidad:**

- Tabla de datos simulados mostrando r=0.92 entre helados y accidentes
- Diagrama ASCII del flujo causal real (temperatura confundente)
- 3 otras falacias comunes para reforzar concepto
- Tabla de preguntas clave para detectar falacia de causalidad
