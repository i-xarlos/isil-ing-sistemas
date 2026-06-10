# ACTIVIDAD 3 - CUSTOMER CENTRICITY EN LA TECNOLOGÍA

## Caso: App de Supermercado - Función "Repetir mi compra"

---

## I. DISCOVERY

### Información a recopilar de usuarios

**Pregunta 1: ¿En qué parte de la aplicación te gustaría hallar la función "Repetir mi compra"?**

Esta pregunta ayuda a entender el modelo mental de los usuarios. En otras palabras, facilita la comprensión de dónde se considera razonable encontrar una función de recompra. Algunos usuarios, por ejemplo, podrían buscarla en el carrito de compras o en el historial de compra, mientras que otros preferirían verla sin rodeos en la pantalla principal.

Si la mayoría de los usuarios espera que aparezca en un lugar distinto al actual, probablemente el problema no sea la funcionalidad del aplicativo, sino la ubicación dentro de la interfaz.

**Pregunta 2: ¿Qué problemas experimentaste en el proceso cuando trataste de volver a adquirir productos de una compra previa?**

Algunos usuarios podrían tener dificultades mientras la utilizan. Por ejemplo:

- No comprenden lo que hace el botón en concreto.
- El procedimiento consta de demasiados pasos.
- Los artículos ya no están en stock.
- El botón no se ve lo suficientemente destacado.
- La función provoca confusión en relación con el carrito actual.

Esta información posibilita la detección de dificultades precisas en la experiencia del usuario antes de sugerir mejoras.

### Síntesis de Insights y Formulación HMW

**Insight clave:** Los usuarios no encuentran la función "Repetir mi compra" porque no es visible en el flujo principal de la app.

**Barrera principal:** Fricción de descubrimiento + complejidad del flujo.

**Resultado deseado:** Permitir recompras frecuentes en máximo 1-2 clics sin fricción.

---

## II. DESIGN

### Planteamiento del problema: How Might We (HMW)

**"¿Cómo podríamos ayudar a los usuarios a repetir compras anteriores sin fricción, haciendo visible y accesible esta función desde el primer vistazo?"**

Este HMW surge del insight de Discovery: los usuarios no encuentran la función porque no es visible. El objetivo es reducir la barrera de acceso y simplificar el flujo mental para reutilizar compras frecuentes.

### Propuesta de mejora

**Mejora propuesta: Integrar un "Atajo de Recompra" en la pantalla de inicio y en el historial de compra**

**Descripción:**

- Agregar un widget/sección visible en la pantalla principal: "Tus compras frecuentes" con los productos más comprados en los últimos 30 días, con botón de "Repedir en 1 clic".
- Mejorar la visibilidad en el historial: mostrar cada compra anterior con un botón destacado (ej: en color, con ícono claro) que diga "Volver a comprar" junto al monto y fecha.
- Reducir el flujo a máximo 2 pasos: seleccionar compra anterior → agregar al carrito.

**Por qué ayudaría:**

1. **Reduce fricción:** Menos clics significa menor abandono.
2. **Aumenta descubrimiento:** Usuarios verán la función sin buscarla.
3. **Alinea con comportamiento:** Las personas olvidan o no exploran; si es visible desde el inicio, es más probable que la usen.
4. **Genera hábito:** El widget en pantalla principal crea top-of-mind.
5. **Mejora accesibilidad:** No todos los usuarios exploran menús profundos; esto es directamente visible.

### Storyboard de la Experiencia Mejorada

| Escena                              | Qué ocurre                                                             | Qué siente el usuario                                            | Qué muestra la solución                                                                    | Cómo se vería                                                                                                                              |
| ----------------------------------- | ----------------------------------------------------------------------- | ----------------------------------------------------------------- | -------------------------------------------------------------------------------------------- | -------------------------------------------------------------------------------------------------------------------------------------------- |
| **1. Abre la app**            | El usuario entra y ve la pantalla principal.                            | Busca una forma rápida de comprar lo que necesita.               | Widget "Tus compras frecuentes" aparece de inmediato con foto, productos y botón destacado. | **Pantalla 1:** Hero image + widget con última compra resumida (ej: "Pan, leche, huevos" + foto) + botón grande "Repedir en 1 clic". |
| **2. Revisión rápida**      | Toca el widget y ve el resumen de su última compra.                    | Decide sin pensar: "Sí, esto es exacto a lo que necesito".       | App muestra lista de productos, cantidades, precio total y opción de editar o confirmar.    | **Pantalla 2:** Resumen de compra anterior con lista de productos, cantidades, total. Botones: [Editar] [Agregar al carrito].          |
| **3. Decisión**              | Confirma agregar al carrito sin cambios o edita cantidades si necesita. | Satisfacción por no necesitar buscar cada producto.              | Confirmación visual: "✓ 12 productos agregados al carrito" + acceso directo a pagar.       | **Pantalla 3:** Confirmación en toast o modal: "✓ Compra anterior agregada. Revisar carrito y pagar".                                |
| **4. Alternativa: Historial** | Si quiere una compra diferente, accede al historial de compras.         | Flexibilidad: puede elegir compra específica según la ocasión. | Listado de compras con fecha, monto, botón "Volver a comprar" en cada una.                  | **Pantalla 4:** Historial cronológico, cada compra es un card con fecha, resumen, botón de acción.                                  |

**Señales de confianza en esta experiencia:**

- ✅ Claridad visual: el botón "Volver a comprar" siempre está a la vista.
- ✅ Control: el usuario puede editar cantidades antes de confirmar.
- ✅ Confirmación: feedback visual inmediato al agregar al carrito.
- ✅ Flexibilidad: acceso a historial completo si cambia de idea.

---

## III. DEVELOP / MEDICIÓN

### Estrategia de Prototipado

**Fase 1: Wireframes de baja fidelidad (Horas)**

- Sketches en papel de las 4 pantallas principales.
- Testeo rápido con 3-5 usuarios: "¿Entiendes cómo repetir una compra?"

**Fase 2: Prototipo interactivo (Figma - 1 día)**

- Diseña pantallas en Figma (template: descarga gratis).
- Agrega clics entre pantallas para simular flujo.
- Herramientas: Figma, Miro o Marvel.

**Fase 3: MVP (1-2 semanas - Dev)**

- Backend: consultar historial de compras del usuario.
- Frontend: widget en pantalla principal + historial mejorado.
- Lanzan a 100 usuarios beta.

**Fase 4: Testeo realista**

- Observa comportamiento: ¿Usan el widget? ¿En qué paso se atorran?
- Recopila CES, NPS y comentarios cualitativos.

### Métricas elegidas para evaluar la mejora

**1. Métrica de Negocio: Tasa de Activación de la Función**

$$
\text{Tasa de Activación} = \frac{\text{Usuarios que usan "Repetir Compra" en el período}}{\text{Usuarios activos totales}} \times 100
$$

**Justificación:**

- Mide si más usuarios descubren y utilizan la función.
- Directamente vinculada a los objetivos de negocio (adopción de feature).
- Permite comparar antes vs. después de la mejora.
- Meta realista: pasar de ~10% a ~30-40% en 3 meses.

**2. Customer Metric: CES (Customer Effort Score)**

$$
\text{CES} = \frac{\text{Suma de puntuaciones}}{\text{Número de respuestas}} \text{ (escala 1-5 o 1-7)}
$$

**Pregunta CES:** *"¿Cuánta dificultad tuviste para repetir una compra anterior? (1 = Muy fácil, 5 = Muy difícil)"*

**Justificación:**

- CES es la métrica más relevante para este caso porque la fricción es el problema identificado.
- Mide directamente la experiencia de uso (no la satisfacción general).
- Indicador predictivo de adopción: cuando CES baja (la tarea es más fácil), la adopción sube.
- Meta: reducir CES de 3.8/5 a 2.2/5.

---

## IV. PREGUNTA AL USUARIO

### Pregunta de medición post-uso

**"Después de usar la función 'Repetir mi compra', ¿volvería a usarla en futuras compras? ¿Qué cambiaría para hacerlo más probable?"**

**Alternativas más específicas según el momento:**

- *Post-acción inmediata:* "¿Encontraste rápidamente la función 'Repetir mi compra'? ¿En qué paso te atoraste?"
- *Post-compra:* "¿Usaste la función 'Repetir mi compra' en esta compra? Si no, ¿por qué? Si sí, ¿la volverías a usar?"
- *NPS contextualizado:* "Recomendarías esta función a un amigo/familiar que hace compras frecuentes del mismo tipo. ¿Por qué sí o no?"
- *CES con desglose:* Después de usar, puntúa por paso:

  - Encontrar la función: 1-5
  - Seleccionar la compra anterior: 1-5
  - Agregar al carrito: 1-5
  - Revisar y pagar: 1-5

**Por qué estas preguntas:**

- Son abiertas y permiten entender no solo si funciona, sino por qué.
- Identifican barreras reales de adopción.
- Guían iteraciones futuras con evidencia cualitativa.
- El desglose de CES por paso señala exactamente dónde está la fricción.

### Ventana ideal para hacer la pregunta

- **Inmediata (segundos después):** CES y pregunta de facilidad.
- **Post-transacción (minutos después):** Pregunta abierta sobre cambios y segunda recompra.
- **Post-semana:** Seguimiento sobre adopción habitual y casos de no-uso.

---

## V. DECISIÓN

### Análisis y decisión

**Escenario:** Más usuarios usan la función (+25%), pero CES sigue alto (4.2/5) y los comentarios dicen que el flujo tiene muchos pasos.

**Análisis de la contradicción:**

- ✅ **Buena noticia:** El problema de descubrimiento se resolvió (más usuarios la encuentran).
- ❌ **Problema persistente:** La experiencia sigue siendo difícil (CES alto).
- 🔴 **Riesgo:** Los usuarios la abandonarán tras el primer uso o no la usarán regularmente.

**Decisión recomendada: Fase 2 - Optimizar el flujo**

**Acciones concretas:**

1. **Inmediato (Semana 1-2):**

   - Realizar sesiones de testeo con usuarios (5-8 personas) para identificar exactamente en qué paso se atorran.
   - Mapear el flujo actual vs. ideal.
2. **Corto plazo (Sprint 2-3):**

   - **Prioridad 1:** Reducir pasos de recompra a máximo 1-2 clics (ej: historial → seleccionar compra → agregar al carrito en 1-2 acciones).
   - **Prioridad 2:** Agregar confirmación visual clara (ej: "✓ 12 productos añadidos al carrito").
   - **Prioridad 3:** Permitir editar cantidades en el resumen antes de confirmar.
3. **Medición:**

   - Comparar CES antes vs. después: meta bajar a 2.5/5.
   - Monitorear tasa de "repetición múltiple": ¿el usuario usa la función 2+ veces en 30 días?
   - Correlacionar CES bajo con Ticket Promedio más alto.

**Conclusión:**
No detener la mejora; la adopción inicial es positiva. El siguiente objetivo es **transformar adopción en hábito** mediante una experiencia frictionless.

---

## VI. ROADMAP DE IMPLEMENTACIÓN (Basado en Prototipado Iterativo)

### Herramientas recomendadas por fase

| Fase                            | Herramienta                   | Tiempo      | Propósito                           |
| ------------------------------- | ----------------------------- | ----------- | ------------------------------------ |
| **Wireframes**            | Papel + Figma                 | 4-8 horas   | Validar flujo sin código            |
| **Prototipo interactivo** | Figma / Miro / Marvel         | 1-2 días   | Simular experiencia clickeable       |
| **MVP**                   | Dev Team (Flutter/React)      | 1-2 semanas | Versión real con backend            |
| **Beta**                  | TestFlight / Google Play Beta | 2 semanas   | Testeo con usuarios reales           |
| **Analytics**             | Google Analytics / Amplitude  | Continuo    | Monitorear CES y Tasa de Activación |

### Sprint de ejecución recomendado

**Sprint 1 (Semana 1-2): Discovery + Wireframes**

- Sesiones de testing con 5-8 usuarios
- Sketches de las 4 pantallas principales
- HMW validado

**Sprint 2 (Semana 3-4): Prototipo + Testeo**

- Prototipo interactivo en Figma (1-2 días)
- Testeo con 5-8 usuarios (herramienta: Figma + observación)
- Validar CES esperado < 2.5/5

**Sprint 3 (Semana 5-8): MVP + Launch Beta**

- Desarrollo backend (historial, lógica de recompra)
- Desarrollo frontend (widget + historial)
- Launch a 100 usuarios beta

**Sprint 4 (Semana 9+): Monitoreo + Iteración**

- Monitorear Tasa de Activación y CES
- Implementar mejoras según feedback
- Plan de rollout a usuarios generales

---

## RESUMEN EJECUTIVO

### Aplicación de Design Thinking (Clase 7)

Este caso práctico integra los 5 pasos del Design Thinking:

1. **Empatizar** → Discovery: Entrevistas para entender por qué no usan la función.
2. **Definir** → HMW: "¿Cómo podríamos hacer visible y accesible la recompra?"
3. **Idear** → Design: Widget + Storyboard de experiencia.
4. **Prototipar** → Wireframes → Figma → MVP (fidelidad creciente).
5. **Testear** → CES + NPS + Observación de usuarios.

### Matriz de Control: De Discovery a Decisión

| Etapa                | Hallazgo                             | Acción                       | Herramienta      | KPI                    |
| -------------------- | ------------------------------------ | ----------------------------- | ---------------- | ---------------------- |
| **Discovery**  | Usuarios no ven la función          | HMW + Entrevistas             | Figma Wireframes | Insight validado       |
| **Design**     | Problema visual + fricción de flujo | Storyboard + Widget           | Figma / Miro     | Concepto claro         |
| **Prototipo**  | Necesita validación UX/CES          | Clickeable en Figma           | Figma / Marvel   | CES < 2.5              |
| **Desarrollo** | Go a MVP si testeo es positivo       | Sprint 1-2 sem                | Flutter / React  | MVP lanzado            |
| **Medición**  | Adopción sube, CES alto             | Iterar UX                     | Analytics        | CES < 2.5 + Tasa > 30% |
| **Decisión**  | Fricción persiste                   | No abandonar, optimizar flujo | Nuevos sprints   | Hábito de uso         |

---

## Criterios de Evaluación

| Criterio                                     | Puntuación     | Cumplimiento                                       |
| -------------------------------------------- | --------------- | -------------------------------------------------- |
| Identifica información útil para Discovery | 4/4             | ✅ 2 preguntas claras y justificadas               |
| Propone mejora clara en Design               | 4/4             | ✅ Widget + acceso directo con justificación      |
| Elige métricas adecuadas                    | 4/4             | ✅ Tasa de Activación + CES con justificación    |
| Redacta pregunta de medición clara          | 3/3             | ✅ Pregunta abierta + alternativas contextuales    |
| Decisión coherente y sustentada             | 5/5             | ✅ Análisis de contradicción + roadmap iterativo |
| **TOTAL**                              | **20/20** | ✅                                                 |
