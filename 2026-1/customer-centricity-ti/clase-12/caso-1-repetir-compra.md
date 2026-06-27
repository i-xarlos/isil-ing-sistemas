# Caso: Aumentar Uso de "Repetir mi Compra" (Caso 1)

**Curso:** Customer Centricity en Tecnologías de la Información (ISIL, 2026-1)  
**Docente:** Henry Joseph Paredes del Alamo  
**Fecha:** 26/06/2026

---

## 1. Contexto del Problema

Una plataforma de e-commerce tiene una funcionalidad llamada **"Repetir mi compra"** diseñada para que los usuarios que compran productos similares cada semana puedan reordenar con un solo clic.

**Situación actual:**

| Señal | Dato |
|---|---|
| Muchos usuarios compran productos similares cada semana | Comportamiento recurrente confirmado |
| Pocos hacen clic en "Repetir mi compra" | Baja adopción de la feature |
| Algunos usuarios no encuentran la función | Problema de descubrimiento/visibilidad |
| Quienes sí la usan completan la compra más rápido | Valor de la feature validado |

**Diagnóstico:** La funcionalidad tiene valor comprobado (los que la usan compran más rápido), pero falla en **descubrimiento**: el usuario no sabe que existe o no la encuentra.

---

## 2. Análisis con Framework HEART

| Categoría | Estado actual | Pregunta clave |
|---|---|---|
| **Happiness** | No aplica directamente | ¿Los usuarios que la encuentran están satisfechos? |
| **Engagement** | Bajo | ¿Cuántos usuarios hacen clic en "Repetir mi compra"? |
| **Adoption** | Muy bajo | ¿Qué % de usuarios activos la ha usado al menos una vez? |
| **Retention** | No medido | ¿Los que la usan la vuelven a usar la semana siguiente? |
| **Task Success** | Alto (quienes la usan) | ¿Completan la compra? ¿En cuánto tiempo? |

---

## 3. Hipótesis Formuladas

### Hipótesis 1 — Visibilidad (descubrimiento)

> **Si** cambiamos la ubicación del botón "Repetir mi compra" a la pantalla principal del home, **entonces** aumentará el CTR de la función en un 30%, **porque** actualmente los usuarios no la encuentran porque está dentro de un menú secundario, y al exponerla donde ya navegan diariamente, la descubrirán sin esfuerzo adicional.

### Hipótesis 2 — Timing (momento correcto)

> **Si** mostramos un recordatorio contextual de "Repetir mi compra" 24 horas después de que el usuario completó un pedido similar, **entonces** aumentarán los clics en la función en un 25%, **porque** el usuario ya tiene la intención fresca de volver a comprar, y presentarle la opción en el momento de mayor intención reduce la fricción de tener que buscarla.

### Hipótesis 3 — Personalización (relevancia)

> **Si** reemplazamos el texto genérico "Repetir mi compra" por "Volver a pedir [nombre del producto que compró]", **entonces** la tasa de clics subirá un 20%, **porque** el contenido personalizado genera mayor relevancia percibida y el usuario identifica al instante qué va a obtener, eliminando la duda de a qué se refiere la función.

### Hipótesis 4 — Reducción de fricción (flujos)

> **Si** agregamos un botón flotante de "Repetir" en el detalle de pedidos anteriores, **entonces** la tasa de adopción crecerá un 35%, **porque** el usuario que ya está revisando su historial de compra tiene alta intención de reordenar, y poner la acción a un clic de distancia elimina la necesidad de navegar a otra pantalla.

---

## 4. Matriz de Priorización

| Hipótesis | Impacto esperado | Esfuerzo | Velocidad de aprendizaje | ¿Priorizar? |
|---|---|---|---|---|
| **1. Ubicación en home** | Alto | Bajo (cambio de layout) | Rápido (1–2 semanas) | ✅ Sí |
| **2. Recordatorio post-compra** | Medio-Alto | Medio (requiere lógica de timing) | Medio (2–3 semanas) | ✅ Sí |
| **3. Texto personalizado** | Medio | Bajo (cambio de copy) | Rápido (1 semana) | ✅ Sí |
| **4. Botón en historial** | Alto | Medio (nuevo componente) | Medio (2 semanas) | Evaluar |

---

## 5. Plan de Experimentación

### Experimento A: Ubicación del botón (Semana 1)

| Variable | Valor |
|---|---|
| **Control** | Botón actual en menú secundario |
| **Variante** | Botón en pantalla principal del home |
| **Métrica principal** | CTR del botón "Repetir mi compra" |
| **Público** | 50% de usuarios activos |
| **Duración** | 2 semanas |
| **Significancia** | 95% |

### Experimento B: Texto personalizado (Semana 2)

| Variable | Valor |
|---|---|
| **Control** | Texto "Repetir mi compra" |
| **Variante** | "Volver a pedir [nombre del producto]" |
| **Métrica principal** | CTR sobre los que ya vieron el botón |
| **Segmento** | Usuarios con compra en últimos 7 días |
| **Duración** | 1 semana |
| **Significancia** | 95% |

### Experimento C: Recordatorio post-compra (Semana 3)

| Variable | Valor |
|---|---|
| **Control** | Sin recordatorio |
| **Variante** | Push notification 24h post-compra |
| **Métrica principal** | Tasa de retorno a la app via notificación |
| **Público** | Usuarios con 2+ compras similares |
| **Duración** | 2 semanas |
| **Significancia** | 95% |

---

## 6. Métricas a Monitorear

| Métrica | Qué mide | Target |
|---|---|---|
| **CTR "Repetir mi compra"** | Descubrimiento y interés | ≥ 15% de usuarios activos |
| **Tasa de conversión post-clic** | Calidad del flujo | ≥ 60% completan la compra |
| **Tiempo de compra** | Fricción (CES del flujo) | Reducir 40% vs compra manual |
| **Retención semanal** | Impacto en lealtad | +10% en usuarios que usan la feature |
| **Adopción mensual** | % de usuarios activos que la usan | Alcanzar 25% en 30 días |

---

## 7. Errores a Evitar

| Error | Consecuencia |
|---|---|
| Escalar sin significancia estadística | Resultados por azar, no por efecto real |
| No definir métrica antes del experimento | Confirmation bias, conclusiones inválidas |
| Probar todos los experimentos a la vez | Resultados contaminados, imposible aislar efectos |
| No documentar resultados | Perder aprendizajes, repetir errores |
| Ignorar resultados negativos | Insights valiosos desaprovechados |

---

## 8. Conclusión

La funcionalidad "Repetir mi compra" tiene **valor comprobado** (quienes la usan compran más rápido). El problema no es de producto, sino de **descubrimiento y exposición**. Las hipótesis se enfocan en:

1. **Visibilidad** — Poner el botón donde el usuario ya está
2. **Timing** — Mostrar la opción en el momento de mayor intención
3. **Personalización** — Hacer que el texto conecte con lo que el usuario compró
4. **Fricción** — Reducir clics hasta completar la acción

> **Frase clave:** "No construyas una feature mejor. Haz que la feature que ya tienes sea imposible de ignorar."

---

## Fuentes

| # | Fuente | Tipo | URL |
|---|--------|------|-----|
| 1 | Dixon, M., Toman, N., & DeLisi, R. (2013). *The Effortless Experience* | Libro | https://www.penguinrandomhouse.com/books/310798/the-effortless-experience/ |
| 2 | Kohavi, R., Tang, D., & Xu, Y. (2020). *Trustworthy Online Controlled Experiments* | Libro | https://www.trustworthyexperiments.com/ |
| 3 | Amplitude. *HEART Framework* | Oficial | https://research.google/pubs/the-heart-framework-for-measuring-ux/ |

---

*Última verificación: 26/06/2026.*
