# Proceso de Aprendizaje 01 — Análisis Estadístico y Data Mining

**Curso:** Análisis Estadístico y Data Mining (ISIL, 2026-1)
**Tipo:** Actividad Individual
**Fecha:** 27/04/2026

---

## PREGUNTA 01: Estadística Descriptiva en Toma de Decisiones (10 puntos)

### Contexto

Una tienda pequeña de abarrotes en un barrio de Lima registra sus ventas diarias durante dos semanas. La mayoría de los días vende cantidades similares, pero un día en particular vendió mucho más debido a una promoción especial.

El dueño necesita:

- Decidir cuántos productos comprar para la siguiente semana
- Saber si su negocio es estable o si las ventas varían mucho
- Comunicar esta información a su familia de forma sencilla

---

### Respuesta

#### 1. ¿Qué medida usarías para representar mejor las ventas?

**Respuesta:** Usaría la **mediana**, no la media aritmética.

**Justificación:**

La media (promedio) sumará todos los valores y los dividirá entre el número de días. El problema es que el día de promoción es un valor muy alto que "jalará" artificialmente hacia arriba el promedio, haciendo que parezca que las ventas normales son mayores de lo que realmente son.

**Comparación:**

- **Media:** Se ve afectada por el outlier (día de promoción). Resultado: número engañoso para la toma de decisiones.
- **Mediana:** Es el valor central cuando ordenas los datos. No se ve afectada por valores extremos. Resultado: representa mejor lo que vende un día "típico".

**Ejemplo práctico:**
Si las ventas fueron: 10, 12, 11, 13, 10, 11, 12, 60 (día de promoción), 10, 11, 10, 12, 11, 10

- Media = (10+12+11+13+10+11+12+60+10+11+10+12+11+10) / 14 = 171 / 14 ≈ **12.2** (engañoso)
- Mediana = (11 + 11) / 2 = **11** (representa mejor la realidad)

El dueño vería que vende "en promedio 12.2", pero eso es falso. La mediana de 11 es más honesta.

---

#### 2. ¿Crees que el día de promoción afecta el análisis? ¿Por qué?

**Respuesta:** **Sí, definitivamente afecta el análisis**, pero de formas diferentes dependiendo de la medida que uses.

**Efectos según la medida:**

| Medida                          | ¿Se ve afectada?    | Impacto                                                      |
| ------------------------------- | -------------------- | ------------------------------------------------------------ |
| **Media**                 | ✅ Muy afectada      | El valor extremo (60) aumenta el promedio significativamente |
| **Mediana**               | ❌ No se ve afectada | Sigue siendo el valor central; el outlier no la cambia       |
| **Desviación Estándar** | ✅ Muy afectada      | Mide la dispersión; un outlier la aumenta mucho             |
| **Moda**                  | ❌ Posiblemente no   | Depende de si el valor 60 se repite                          |

**Conclusión:** El día de promoción es un **valor atípico (outlier)**. Para decisiones de compra de stock regular, el dueño debe ignorar ese día y usar la mediana para planificar compras "normales".

---

#### 3. ¿Las ventas parecen estables o cambian mucho?

**Respuesta:** **Las ventas parecen bastante estables**, con una variación "normal" entre días.

**Cómo lo sabemos:**

1. **Rango pequeño:** Si excluyes el día de promoción, las ventas van de 10 a 13 unidades. Solo 3 unidades de diferencia.
2. **Desviación estándar:** Sin el día de promoción, la mayoría de días varían muy poco alrededor de la mediana (11). La desviación sería pequeña, lo que indica estabilidad.
3. **Patrón consistente:** El dueño dice que "la mayoría de los días vende cantidades similares", lo que confirma estabilidad.

**Interpretación práctica:**

- El negocio es predecible.
- Las variaciones día a día son pequeñas y normales (quizás algunos días hay menos clientes, otros días más, pero siempre cerca del promedio).
- El día de promoción fue una **excepción**, no la norma.

---

#### 4. ¿Qué gráfico sencillo usarías para mostrar las ventas?

**Respuesta:** Un **histograma** o un **gráfico de líneas temporal**.

**Opción 1: Histograma**

Un histograma agrupa los datos en intervalos y muestra qué tan frecuente es cada rango de ventas.

- **Eje X:** Intervalos de ventas (10-11, 12-13, 14+, etc.)
- **Eje Y:** Cantidad de días en cada intervalo

**Beneficio:** La familia verá de una ojeada que "la mayoría de días las ventas caen en el intervalo 10-13".

**Opción 2: Gráfico de líneas temporal**

Mostraría cada día en el eje X y las ventas en el eje Y, conectando los puntos.

- **Beneficio:** La familia verá que las ventas son estables excepto por el **pico** del día de promoción.

**Mi recomendación:** **Gráfico de líneas**, porque:

1. Muestra visualmente la estabilidad.
2. El pico de promoción es evidente y claramente separado de lo "normal".
3. Es más intuitivo para explicar "esto es una venta normal, esto fue especial".

---

## PREGUNTA 02: Pruebas de Hipótesis en Mejora de Servicios (10 puntos)

### Contexto

Una empresa de atención al cliente dice que normalmente atiende a las personas en 10 minutos. Recientemente implementó un nuevo sistema y los trabajadores sienten que ahora atienden más rápido. El jefe quiere comprobar si el mejoramiento es real.

El equipo necesita entender qué significa trabajar con 95% de confianza y cómo decidir si el cambio es real o solo una impresión.

---

### Respuesta

#### 1. ¿Qué quiere comprobar la empresa con los datos?

**Respuesta:** La empresa quiere comprobar **si el nuevo sistema de atención realmente redujo el tiempo de servicio** o si solo es una sensación de los trabajadores sin base real en los datos.

**Objetivo específico:**
Recolectar datos (medir tiempos reales de atención con el nuevo sistema) y compararlos contra el estándar anterior (10 minutos) para determinar si hay una mejora **estadísticamente significativa**.

---

#### 2. ¿Qué sería la hipótesis inicial (H₀)?

**Respuesta:**

**H₀ (Hipótesis Nula):** *"El tiempo promedio de atención sigue siendo 10 minutos"* o *"El nuevo sistema NO reduce el tiempo de atención"*

En términos estadísticos:

```
H₀: μ = 10 minutos
```

**Explicación:**

La hipótesis nula es la afirmación "neutral" o de *no efecto*. Es lo que asumimos como cierto hasta que los datos prueben lo contrario. En este caso, asumimos que el nuevo sistema no funciona (o no cambia nada) hasta que tengamos evidencia de que sí funciona.

---

#### 3. ¿Qué significaría que el sistema "sí mejoró"?

**Respuesta:** Significaría que **el tiempo promedio de atención es ahora menor a 10 minutos**.

**Hipótesis Alternativa (H₁):**

```
H₁: μ < 10 minutos
```

**En palabras simples:**

Si los datos muestran que el tiempo promedio es, por ejemplo, 8.5 minutos en lugar de 10 minutos, y esa diferencia es **estadísticamente significativa** (no por puro azar), entonces decimos que el sistema mejoró.

**Ejemplo concreto:**

- Recolectamos datos de 100 atenciones con el nuevo sistema.
- Encontramos que el promedio es 8.7 minutos.
- El análisis estadístico (prueba t de una muestra) da p-valor = 0.02.
- **Conclusión:** Rechazamos H₀ y concluimos que el sistema SÍ mejoró, porque 0.02 < 0.05.

---

#### 4. ¿Qué significa trabajar con 95% de confianza en términos sencillos?

**Respuesta:** Significa que **estamos dispuestos a tolerar un 5% de probabilidad de equivocarnos** al decir "el sistema mejoró".

**Desglose:**

| Concepto                          | Significado                                                                                      |
| --------------------------------- | ------------------------------------------------------------------------------------------------ |
| **95% de confianza**        | De cada 100 veces que usemos este método de prueba, 95 veces llegamos a la conclusión correcta |
| **5% de error (α = 0.05)** | De cada 100 veces, 5 veces nos equivocamos (rechazamos H₀ cuando en realidad es verdadera)      |
| **Nivel de significancia**  | El umbral es p-valor < 0.05 para rechazar H₀                                                    |

**Analógía simple:**

Imagina que tienes una prueba para detectar si alguien tiene fiebre:

- **95% confianza** = La prueba es correcta en 95 de cada 100 casos.
- **5% error** = En 5 de cada 100 casos, puede dar falsos positivos (dice "tienes fiebre" cuando no la tienes) o falsos negativos.

Si usas esta prueba de confianza en 100 pacientes:

- Esperas estar correcto ~95 veces.
- Esperas equivocarte ~5 veces.

**En el contexto del nuevo sistema:**

Si después de recopilar datos, el p-valor es 0.02 (menor que 0.05):

- Decimos: "Con 95% de confianza, el nuevo sistema redujo el tiempo de atención".
- Esto significa: "Hay solo 2% de probabilidad de que esta conclusión sea incorrecta debido al azar".

---

#### 5. Imagina que un trabajador dice: "sí ha mejorado el sistema porque ahora atendemos más rápido", ¿por qué esa afirmación no es suficiente sin datos?

**Respuesta:** Esa afirmación no es suficiente por **tres razones clave**:

---

##### **Razón 1: Sesgo de percepción**

Los trabajadores pueden *sentir* que atienden más rápido porque:

- Están motivados por la novedad del sistema (efecto placebo).
- Se esfuerzan más porque saben que se está midiendo.
- Solo recuerdan los casos rápidos y olvidan los lentos (sesgo de memoria).

**Ejemplo:** Si normalmente atienden un caso en 10 min y otro en 15 min, pueden recordar solo los rápidos y pensar "sí es más rápido", aunque el promedio siga siendo 12.5 min.

---

##### **Razón 2: No hay comparación rigurosa**

La afirmación no cuantifica:

- ¿Cuánto más rápido? ¿1 minuto? ¿30 segundos?
- ¿Es consistente o solo algunos días?
- ¿En comparación con qué? (¿con el sistema anterior o con sus propias percepciones?)

**Sin números, no sabemos si es una mejora real o una variación normal.**

**Ejemplo:** Alguien dice "el café es más fuerte hoy". Podría ser verdad, o podría ser que tengas más hambre, o que hace más frío. Sin medir la cantidad de café, no sabes.

---

##### **Razón 3: No descarta el azar o factores externos**

Si midieran tiempos sin rigor, no sabrían si la mejora es:

- Real efecto del nuevo sistema.
- Variación aleatoria normal (algunos días atienden más rápido, otros más lento).
- Efecto de otros factores (menos clientes hoy, equipo más experimentado, mejor conexión de internet).

**Ejemplo de azar:**
Lanzas una moneda 5 veces: sale cara 4 veces. ¿La moneda está sesgada? Probablemente no; es solo azar. Necesitarías 1,000 lanzamientos para saber si es verdaderamente sesgada.

---

##### **¿Qué se necesita entonces?**

Para afirmar "el sistema mejoró", se requiere:

1. **Datos numéricos:**

   - Medir tiempo de atención antes (con sistema antiguo).
   - Medir tiempo de atención después (con sistema nuevo).
   - Calcular promedios reales.
2. **Muestra suficiente:**

   - No 3 casos, sino 50, 100 o más.
   - Esto reduce el efecto del azar.
3. **Prueba de hipótesis:**

   - Usar métodos estadísticos (prueba t, por ejemplo).
   - Obtener p-valor < 0.05 para validar la mejora.
4. **Control de variables externas:**

   - Asegurar que otros factores (volumen de clientes, tipo de consulta, etc.) sean similares antes y después.

**Conclusión:**

La percepción es valiosa como señal inicial, pero los datos son la **evidencia rigurosa** que distingue entre una mejora real y una impresión. Es como la diferencia entre:

- "Me siento mejor" (percepción subjetiva).
- "Mis síntomas bajaron de 8/10 a 3/10 según esta escala validada" (dato medible).

---

## Síntesis de Conceptos Aplicados

### En Pregunta 01:

- **Medida de tendencia central:** Mediana vs Media
- **Medida de dispersión:** Desviación estándar, varianza
- **Valores atípicos (outliers):** Impacto en análisis
- **Visualización:** Histograma, gráficos temporales

### En Pregunta 02:

- **Hipótesis nula (H₀) y alternativa (H₁)**
- **Nivel de significancia (α = 0.05)**
- **Confianza del 95%**
- **P-valor**
- **Diferencia entre percepción y evidencia estadística**

---

**Fin de la actividad**
