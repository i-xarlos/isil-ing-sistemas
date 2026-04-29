# RAPIDGO: Rediseño desde Customer Centricity
## Proceso de Aprendizaje 1 — Customer Centricity (2026-10)

---

## CARÁTULA

**CURSO:** Customer Centricity & Agilidad en Tecnologías de Información  
**NRC:** [Completar según corresponda]  
**PERÍODO:** 2026-1  
**DOCENTE:** Henry Joseph Paredes del Alamo  

**TÍTULO DEL TRABAJO:** Rediseño de RAPIDGO bajo enfoque Customer Centric con Framework Ágil

**INTEGRANTES DEL GRUPO:**
| APELLIDOS Y NOMBRES | PORCENTAJE DE PARTICIPACIÓN | CORREO ELECTRÓNICO |
|---|---|---|
| 1. [Alumno 1] | % | |
| 2. [Alumno 2] | % | |
| 3. [Alumno 3] | % | |
| 4. [Alumno 4] | % | |
| 5. [Alumno 5] | % | |

---

## PARTE 1: DIAGNÓSTICO CUSTOMER CENTRIC (20%)

### 1.1 Principales Fallas del Producto

#### Falla 1: Desconexión entre velocidad de crecimiento y experiencia del usuario

**Problema identificado:**
- RAPIDGO ha priorizado descargas y crecimiento rápido sobre la experiencia real del usuario.
- Resultado: alta tasa de abandono después del primer pedido (82% de los usuarios descarga pero no repite).

**Raíz del problema:**
- Las decisiones de producto se tomaron sin validar si los usuarios realmente querían lo que se estaba construyendo.
- No hay investigación cualitativa que respalde las funcionalidades lanzadas.
- El equipo de producto asumió que "más opciones = más usuarios felices", cuando en realidad más opciones pueden generar confusión.

**Impacto en negocio:**
- Costo de adquisición de usuario alto.
- Lifetime value bajo (usuario usa 1–2 veces y desaparece).
- Ineficiencia: gasto en marketing sin retorno.

---

#### Falla 2: Experiencia de seguimiento del pedido deficiente

**Problema identificado:**
- Reclamos frecuentes por tiempos de entrega incorrectos.
- Usuarios no saben dónde está su pedido en tiempo real.
- Mala comunicación entre la app, el repartidor y el usuario.

**Por qué sucede:**
- El sistema de tracking fue construido por TI sin observar cómo el usuario realmente quiere monitorear su pedido.
- No se realizaron entrevistas de usuario para entender ansiedad, expectativas de tiempo o preferencias de notificación.
- La interface del tracking es técnica, no intuitiva.

**Impacto:**
- Usuarios abandonan a mitad de la transacción.
- Reclamos → costo de servicio al cliente elevado.
- Reputación dañada en redes sociales.

---

#### Falla 3: Bajo engagement y frecuencia de uso

**Problema identificado:**
- Después del primer pedido, los usuarios desaparecen.
- No hay incentivos claros para usar RAPIDGO nuevamente.
- Falta de personalización: todos ven la misma app, sin consideración de preferencias individuales.

**Por qué sucede:**
- Decisión interna: "Lanzamos la app básica y vemos qué pasa". Sin validación previa de valor.
- No se invirtió en entender qué motiva a un usuario a elegir RAPIDGO sobre competidores (Rappi, Glovo).
- No hay feedback del cliente en el desarrollo.

**Impacto:**
- Tasa de retención cercana a cero.
- Sin usuarios recurrentes, no hay modelo de negocio sostenible.

---

### 1.2 Por qué no es Customer Centric

| Característica de no-CC | Evidencia en RAPIDGO |
|---|---|
| **Construcción sin validación previa** | El MVP se lanzó sin investigación de usuarios. Se adivinó qué querían los usuarios. |
| **Prioridad en velocidad sobre satisfacción** | "Crecimiento rápido" fue el norte, no "crear experiencia memorable". |
| **Decisiones internas sin participación del cliente** | Las funcionalidades se decidieron en reuniones internas, no en conversaciones con usuarios. |
| **Métricas de vanidad en lugar de valor real** | Se midieron descargas (vanidad), no retención o NPS (valor real). |
| **Falta de ciclo de feedback continuo** | No hay mecanismo visible para que el usuario influya en el roadmap del producto. |
| **Problemas resueltos sin entender la raíz** | Se lanzaron más features en lugar de preguntar "¿por qué los usuarios se van?" |

### 1.3 Decisiones Tomadas sin Considerar al Cliente

#### Decisión 1: Lanzamiento de MVP sin investigación
**Qué se decidió:** Lanzar app con delivery de comida, envíos y compras de supermercado en la versión 1.0.  
**Sin considerar al cliente:** No se validó si el usuario urbano limaño quería los tres servicios integrados o si prefería especializarse.  
**Consecuencia:** Interfaz compleja, usuario confundido sobre qué tipo de pedido hacer.

#### Decisión 2: Sistema de tracking técnico, no intuitivo
**Qué se decidió:** Backend conectado a GPS, notificaciones automáticas cada 5 min.  
**Sin considerar al cliente:** No se preguntó al usuario "¿cada cuánto quieres saber dónde está tu pedido?" o "¿qué información necesitas?"  
**Consecuencia:** Usuarios reciben información que no entienden, no saben si algo está mal.

#### Decisión 3: Sin incentivos de retención
**Qué se decidió:** Modelo simple: descarga, pide, paga.  
**Sin considerar al cliente:** No se investigó qué movería a un usuario a abrir la app nuevamente mañana.  
**Consecuencia:** Tasa de retención 0, usuario no regresa.

#### Decisión 4: No hay diálogo post-lanzamiento
**Qué se decidió:** Lanzar y ver qué pasa.  
**Sin considerar al cliente:** No se configuraron canales de feedback estructurado (NPS, entrevistas, grupos focales).  
**Consecuencia:** El equipo descubre los problemas demasiado tarde (cuando los usuarios ya se fueron).

---

## PARTE 2: DEFINICIÓN DEL PROBLEMA DEL USUARIO (15%)

### 2.1 Problema Real del Usuario (User Problem Statement)

**Segmento 1: Usuario urbano de Lima**
- **Perfil:** Profesional joven (25–40 años), ingresos medio-altos, busca conveniencia.
- **Problema real:** "Necesito recibir mi pedido rápido y saber exactamente dónde está para poder estar listo cuando llegue, porque mi tiempo es escaso y valoro la previsibilidad."

**Segmento 2: Estudiante/trabajador de salario bajo**
- **Perfil:** 18–30 años, presupuesto limitado, busca economía.
- **Problema real:** "Quiero alimentos o paquetes baratos y rápidos, pero necesito confiar en que la app no me timbará ni me cobrará de sorpresa."

**Segmento 3: Compradores de supermercado**
- **Perfil:** Padres, adultos ocupados, amas de casa.
- **Problema real:** "Quiero que alguien traiga lo que necesito sin tener que hacer lista complicada, y que sepa identificar si el tomate está verde o maduro."

### 2.2 Hipótesis sobre Necesidades

| Necesidad | Hipótesis | Indicador de validación |
|---|---|---|
| **Confiabilidad en tiempos** | Los usuarios abandonan si no saben si llegarán en 20 o 60 minutos. | A/B test: mostrar tiempo exacto vs. rango. Medir % retención. |
| **Transparencia de precios** | Los usuarios desconfían si el precio cambia durante el pedido (surge charge). | Encuesta: "¿por qué no repites en RAPIDGO?" Analizar mencionas de precio. |
| **Control sobre el repartidor** | Usuarios quieren elegir repartidor o verlo en vivo, no confiar ciegamente. | Test: permitir ver foto/rating del repartidor. Medir conversión. |
| **Incentivos y lealtad** | Los usuarios repiten si ven valor diferenciador (descuentos, puntos, sorpresas). | Cohorte test con rewards. Comparar tasa de retención a 30 días. |
| **Asistencia rápida** | Si hay problema, el usuario quiere resolver en minutos, no horas. | Medir tiempo de respuesta de soporte. Medir NPS antes/después de mejorar. |

### 2.3 Problema con Mayor Impacto

**Problema de mayor impacto:** Baja retención por falta de confiabilidad en tiempos de entrega y transparencia.

**Razonamiento:**
1. **Acción inmediata:** Un usuario que descarga pero no repite es un usuario perdido. Si solucionamos esto, movemos la métrica de retención de 18% a 50%+ en 90 días.
2. **Escala:** 82% de usuarios abandonan después del primer pedido. Es una filtración masiva de potencial.
3. **Efecto cascada:** Si fijamos esto, los otros problemas (engagement, competencia) se resuelven parcialmente solos.
4. **Validable y medible:** Podemos probar cambios en 2 semanas y ver resultados claros.

---

## PARTE 3: DISEÑO DE INVESTIGACIÓN (20%)

### 3.1 Estrategia de Investigación: Cualitativa y Cuantitativa

#### Fase 1: Investigación Cualitativa (Semana 1–2)

**Objetivo:** Entender profundamente POR QUÉ los usuarios se van.

##### Entrevistas en profundidad

**Muestra:**
- 12 usuarios que usaron RAPIDGO 1 sola vez (hace 2–8 semanas)
- 4 usuarios que repiten (base de comparación)
- Reclutamiento: contactar vía SMS/email, ofrecer $20 USD por 45 min

**Guía de preguntas:**
1. "Cuéntame la última vez que usaste RAPIDGO. ¿Qué pasó?" (narrativa libre)
2. "¿Hay algo que te frustró?" (problema sin sugerir)
3. "¿Intentaste usar RAPIDGO nuevamente después de eso?" (intención)
4. "¿Qué app usan en su lugar?" (competencia)
5. "¿Qué haría que regresaras a RAPIDGO?" (deseabilidad)

**Formato:** Videollamada (evita sesgo de laboratorio) o café presencial.

**Análisis:** Coding de respuestas para identificar patrones. Síntesis en mapa de empatía por usuario.

---

#### Observación conductual

**Método:** Session replay de app (tool: Smartlook, Mixpanel)

**Qué medir:**
- ¿En qué punto del flujo el usuario abandona?
- ¿Dónde hace clic múltiples veces sin saber qué pasa?
- ¿Cuánto tiempo pasa entre descargar y hacer primer pedido?
- ¿Qué hace el usuario después de completar el pedido?

**Duración:** Analizar 100 sessiones de primer pedido para construir mapa de fricción.

---

#### Focus group (validación colectiva)

**Participantes:** 8 personas (mix de usuarios y no-usuarios de RAPIDGO)

**Dinámica:**
1. Mostrar flujo actual de la app (5 min).
2. "Sin tocar la app, cuéntame qué esperas que pase" — miden expectativas vs. realidad.
3. Presentar 3 conceptos de mejora (prototipo low-fi) — votan y dan feedback.

**Duración:** 90 minutos.

---

### 3.2 Investigación Cuantitativa (Semana 3–4)

**Objetivo:** Validar hipótesis en escala; medir magnitud del problema.

#### Encuesta online

**Muestra:** 200 usuarios (mix de activos, dormidos y churnados) vía email.

**Preguntas clave:**

1. En una escala 0–10: "¿Qué tan probable es que recomiendes RAPIDGO a un amigo?" (NPS)
2. "¿Por qué no has usado RAPIDGO en el último mes?" (opción múltiple)
3. "¿Qué precio máximo estarías dispuesto a pagar por delivery en Lima?" (validación de modelo)
4. "¿Cuál es tu mayor frustración con apps de delivery?" (abiertas, 3 respuestas)
5. "Si RAPIDGO tuviera GPS en vivo y confirmación exacta de tiempo, ¿lo usarías?" (intención)

**Incentivar:** $5 descuento en próximo pedido.

**Análisis:** Tabular respuestas, cruzar NPS con razones de churn. Segmentar por edad/zona geográfica.

---

#### Análisis de datos in-app

**Acceso:** Dashboard Mixpanel / Google Analytics.

**Métricas a medir:**
- Funnel de primer pedido: % que completa cada paso (búsqueda → selección → pago → confirmación)
- Tiempo promedio desde descarga a primer pedido.
- Retención a 7 días, 30 días, 90 días.
- Tasa de error en checkout (cuántos intentan pagar pero fallan).
- Puntos donde usuarios ven el tracking (¿cuántos abren la app después de pedir?).

**Período:** Datos últimos 6 meses.

---

### 3.3 Definición: Qué Datos Recogerán, Cómo y A Quiénes

| Dato | Método | Muestra | Cadencia | Responsable |
|---|---|---|---|---|
| Razones de churn | Entrevista 1:1 | 12 churnados | Semana 1–2 | UX Researcher |
| Fricción en flujo | Session replay | 100 sesiones | Semana 1–2 | Analytics |
| Viabilidad de precio | Encuesta | 200 usuarios | Semana 3 | Product Manager |
| NPS y satisfacción | Encuesta | 200 usuarios | Semana 3 | Product Manager |
| Velocidad de adopción | Data in-app | Cohortes últimos 6 meses | Semana 4 | Analytics |

---

### 3.4 Preguntas Correctas (5)

#### Pregunta 1: Abierta sobre fricción
**"Cuéntame un momento en el que quisiste usar RAPIDGO pero terminaste usando otra app en su lugar. ¿Qué pasó?"**

**Por qué es buena:**
- Abierta: permite al usuario narrar sin sugestión.
- Específica: pide un momento concreto, no opinión vaga.
- Competitiva: identifica qué hace que pierdan a usuarios.
- Validable: respuestas son acciones concretas, medibles.

---

#### Pregunta 2: Sobre valor percibido
**"Si RAPIDGO hiciera una promesa de 'entrega en 25 minutos o es gratis', ¿cuántas veces al mes la usarías?"**

**Por qué es buena:**
- Hipotética pero anclada: no es "te gustaría...", sino "si pasara X...".
- Cuantificable: la respuesta es un número de frecuencia.
- De negocio: valida si el modelo de promesa puede funcionar.

---

#### Pregunta 3: De pain point profundo
**"¿Cuál es la parte más estresante de pedir comida/paquete por una app?"**

**Por qué es buena:**
- Dirección clara: pregunta por emoción negativa, no por features.
- Abierta: permite respuestas variadas y profundas.
- Insights sobre UX: revela dónde falla la experiencia.

---

#### Pregunta 4: Sobre lealtad y comparación
**"Entre Rappi, Glovo y RAPIDGO, ¿cuál prefieres y por qué?"**

**Por qué es buena:**
- Comparativa: fuerza al usuario a priorizar atributos reales.
- Identifica ventaja competitiva o falta de ella.
- Revela si tiene algún diferenciador claro.

---

#### Pregunta 5: Sobre NPS y recomendación
**"¿Qué tendría que pasar para que recomiendes RAPIDGO a tus amigos?"**

**Por qué es buena:**
- Futuro visible: no pregunta por qué no recomienda (negativa), sino qué lo haría recomendar.
- Accionable: respuestas sugieren features o mejoras específicas.
- De negocio: recomendaciones = adquisición barata.

---

### 3.5 Preguntas Incorrectas (3)

#### Pregunta incorrecta 1: Demasiado vaga
**"¿Te gusta RAPIDGO?"**

**Por qué es mala:**
- No especifica aspecto: ¿precio? ¿velocidad? ¿diseño?
- Respuesta fácil: "sí" o "no", sin insight.
- No es validable: no sabes qué significa "gustar".

**Cómo mejorarla:**
"¿Qué aspecto de RAPIDGO te gusta más: velocidad, precio o variedad? Explica por qué."

---

#### Pregunta incorrecta 2: Sugestiva y sesgada
**"¿No crees que RAPIDGO es mejor que Rappi porque somos más rápidos?"**

**Por qué es mala:**
- Contiene la respuesta deseada dentro de la pregunta.
- El usuario dirá "sí" para ser amable, no por opinión real.
- Sesgo de confirmación: solo obtiene validación falsa.

**Cómo mejorarla:**
"¿Qué app crees que entrega más rápido: Rappi o RAPIDGO? ¿Cómo lo sabes?"

---

#### Pregunta incorrecta 3: Hipotética sin anclaje
**"Si tuviéramos 1,000 features nuevas, ¿cuál te gustaría?"**

**Por qué es mala:**
- Fuera de contexto real: no puede decidir entre 1,000.
- Absurda: usuario no sabe qué responder.
- No es validable: respuestas serán fantasía, no intención real.

**Cómo mejorarla:**
"De estas 3 mejoras (muestra prototipos): GPS en vivo, confirmación de tiempo exacto, programa de lealtad... ¿cuál usarías primero?"

---

## PARTE 4: PROPUESTA DE MVP / MLP (15%)

### 4.1 MVP: Solución al Problema Principal

**Problema a resolver:** Baja retención por falta de confiabilidad en tiempos y transparencia.

#### MVP 1.1: "Promesa de Tiempo con Dinero de Vuelta"

**Qué es:**
- Usuario ve tiempo estimado claro: **"Tu comida llega en 25–30 minutos"** (no "hasta 60 min").
- Si el repartidor no llega en ese rango, el pedido es **gratis**.
- Dashboard en tiempo real con 3 estados simples: Preparando | En camino | Punto de llegar

**Funcionalidades MVP:**
1. Página inicial mejorada: búsqueda por categoría clara + restaurante destacado
2. Flujo de checkout simplificado: dirección → seleccionar items → confirmar
3. Tracker en vivo: mapa simple + estado (color: amarillo=espera, azul=entregando, verde=llegó)
4. Temporizador visible: "Llega en 22 minutos" + contador regresivo
5. Notificaciones push: "Tu comida salió", "Repartidor a 5 min", "Listo para recoger"
6. Chat 1:1 con soporte: botón visible si algo falla

**NO incluye:**
- Programa de lealtad elaborado
- IA de recomendaciones
- Integración con redes sociales
- Interfaz de administrador para restaurantes

**Por qué es MVP:**
- Resuelve el problema de confianza (80/20: 20% de features resuelven 80% del problema)
- Se construye en 3 semanas
- Es validable: podemos medir si retención sube

#### MVP 1.2: Rediseño de UX/UI

**Cambios de interfaz:**

| Elemento | Antes | Después |
|---|---|---|
| **Pantalla inicio** | 12 categorías, menú profundo | 4 categorías visuales grandes, 1 restaurante destacado |
| **Búsqueda** | Texto pequeño, fácil de perder | Barra grande, prominent, con sugerencias |
| **Checkout** | 8 pantallas (dirección, medio pago, promoción, etc.) | 4 pantallas máximo, pre-llenar datos |
| **Tracker** | Puntos GPS en mapa, mucha info | Mapa simple, 3 estados, contador visible |
| **Error/problema** | Chat bot lento o número de soporte | Botón "Ayuda" flotante, chat en vivo 24/7 |

---

### 4.2 Evolución a MLP: Experiencia Diferenciada y Amable

El MLP toma el MVP y agrega la emoción que hace que los usuarios **amen** la app.

#### MLP: "La app que te entiende"

**Cambios que lo hacen amable:**

1. **Personalización emocional**
   - Saludos por nombre cuando abre la app
   - Mensaje cuando completa primer pedido: "¡Bienvenido a RAPIDGO! 🎉"
   - Ofertas personalizadas según historial ("Te encanta la pizza, tenemos 15% de descuento hoy")

2. **Repartidor con cara humana**
   - Foto + nombre del repartidor aparece 2 min antes de que salga
   - Rating de repartidor visible
   - Opción de marcar como favorito si le gustó
   - Mensaje automático: "Hola, soy Juan, llegaré en 22 min 🏍"

3. **Gamificación sutil**
   - Progreso visual: "1 de 5 pedidos para unlock 20% descuento" (sin ser molesto)
   - Puntos al calificar (pequeño incentivo)
   - Insignia: "Delivery Master" tras 10 pedidos

4. **Transparencia absoluta en tiempo y precio**
   - Desglose: "Comida $10 + delivery $2.50 + impuesto $0.50 = Total $13"
   - Sin sorpresas en checkout
   - Aviso claro si hay cambio de precio

5. **Servicio al cliente delightful**
   - Si hay problema, se resuelve en <5 min
   - Si falla un delivery, se ofrece descuento en el siguiente SIN pedir al usuario
   - Encuesta NPS simple: 3 emojis (triste, neutral, feliz), sin formularios largos

6. **Diseño visual pulido**
   - Colores consistentes y reconocibles
   - Animaciones suaves en transiciones
   - Botones grandes y fáciles de tocar (target de 48px mínimo)
   - Tipografía clara, no pequeña

---

### 4.3 Aprendizaje y Validación

#### Qué aprendizaje buscan

| Aspecto | Métrica | Meta | Período |
|---|---|---|---|
| **Retención** | % de usuarios activos a 7 días | Pasar de 18% a 40% | 4 semanas |
| **Confianza** | NPS después del primer pedido | Pasar de 35 a 65 | 4 semanas |
| **Frecuencia** | Promedio de pedidos por usuario/mes | Pasar de 1.2 a 3.5 | 12 semanas |
| **Satisfacción con tiempo** | CSAT en entrega ("¿llegó a tiempo?") | 85%+ responden "Sí" | 4 semanas |
| **Abandonos reducidos** | % de checkout completado | Pasar de 62% a 80% | 2 semanas |

---

#### Cómo validarán el producto

**Fase 1: MVP Closed Beta (Semana 1–2)**
- 500 usuarios de test en Lima (seleccionados de existentes churnados)
- Pedir feedback diario via Slack bot: "¿Qué te frustra hoy?"
- Monitorear crash reports y sesiones perdidas
- Métricas: 0 crashes, 80%+ completan 1 pedido

**Fase 2: MVP Abierto Limitado (Semana 3–4)**
- Lanzar a 5,000 usuarios nuevos en 2 zonas de Lima (Miraflores, San Isidro)
- A/B test: 50% ven MVP, 50% ven versión anterior
- Comparar: retención, NPS, tiempo de entrega promedio
- Objetivo: MVP debe tener 30%+ más retención

**Fase 3: Validación de MLP (Semana 5–8)**
- Agregar features de MLP progresivamente (personalización, gamificación)
- Medir si cada feature incrementa engagement sin agregar fricción
- Focus groups cada 2 semanas para ajustar diseño

**Fase 4: Decisión de Pivot o Escala (Semana 9–12)**
- Si NPS >= 60 y retención >= 40%: escalar a toda Lima + expandir a otras ciudades
- Si no: revisar qué faltó + hacer segundo ciclo de MVP

---

## PARTE 5: ENFOQUE ÁGIL Y ORGANIZACIÓN (15%)

### 5.1 Framework de Trabajo Ágil

RAPIDGO adoptará **Scrum** con sprints de **2 semanas**.

#### Ciclo de Sprints

```
Planificación → Desarrollo (10 días) → Revisión → Retro → (vuelta al inicio)
```

**Duración de sprint:** 2 semanas (10 días de desarrollo, 2 días de ceremonia/buffer)

**Cadencia de entregas:** Cada 2 semanas hay versión nueva en producción (MVP to MLP).

---

#### Ceremonias Scrum (y su adaptación a RAPIDGO)

| Ceremonia | Duración | Participantes | Objetivo |
|---|---|---|---|
| **Sprint Planning** | 2 horas | Todo el equipo + PO | Definir qué se construye en los próximos 14 días |
| **Daily Standup** | 15 min | Dev team + SM | ¿Qué hiciste? ¿Qué harás hoy? ¿Bloqueos? |
| **Sprint Review** | 1.5 horas | Equipo + PO + stakeholders (CEO, ops) | Mostrar qué se completó; obtener feedback |
| **Sprint Retro** | 1 hora | Equipo + SM | Qué salió bien, qué mejorar, acción concreta |
| **Refinement** | 1 hora (2–3 veces/semana) | PO + Tech Lead | Preparar backlog para próximo sprint |

---

### 5.2 Roles Claros y Responsabilidades

#### Product Owner (PO)

**Quién:** Head de Producto o co-founder que entienda el negocio Y al cliente.

**Responsabilidades:**
- Traduce necesidades del cliente en historias de usuario claras
- Prioriza el backlog: ¿qué resuelve el mayor problema? ¿qué aprende más rápido?
- Participa en entrevistas de usuario (20% de su tiempo)
- Participa en Sprint Review para validar si lo construido es lo esperado
- Toma decisiones sobre qué pivotear vs. qué mantener

**Criterio de éxito:**
- Team entiende POR QUÉ cada historia está en el backlog
- Historias son claras: "Como usuario de 25 años, quiero ver el repartidor en vivo, porque me da seguridad"
- El PO valida con usuario real al menos 1 vez por semana

---

#### Scrum Master (SM)

**Quién:** Facilitador experimentado en Scrum, no necesariamente técnico.

**Responsabilidades:**
- Facilita ceremonia (no dirige): asegura que no se desvíen del propósito
- Elimina bloqueos: si alguien dice "estoy bloqueado por X", SM resuelve
- Cuida la salud del equipo: si ven burnout, lo escala
- Mentoriza al equipo en madurez ágil (si es nuevo en Scrum)

**Criterio de éxito:**
- Standup dura exactamente 15 min, cada día
- Si hay bloqueo, se resuelve en <24 horas
- Retrospectivas producen 1–2 acciones concretas que se implementan

---

#### Development Team (Equipo de Desarrollo)

**Composición (para MVP a MLP):**
- 1 Product Manager (overlaps con PO)
- 2 Frontend engineers (iOS + Android)
- 1 Backend engineer
- 1 UX/UI designer
- 1 QA/tester
- **Total: 6 personas** (interfuncional, autoorganizado)

**Responsabilidades de cada rol:**

| Rol | Qué hace | Responsabilidad en Sprint |
|---|---|---|
| **PM/PO** | Entiende usuario, prioriza | Historias claras, acepta trabajo terminado |
| **Frontend** | Codifica app (UI/interacción) | Tests unitarios + demo en Daily |
| **Backend** | APIs, base de datos, seguridad | Código escalable, documentación |
| **UX/UI** | Diseña interfaz, valida con usuarios | Prototipos antes de codificar, user testing |
| **QA** | Prueba, automation, casos edge | Sin bugs en producción, reporte diario |

**Autoorganización:**
- El equipo decide cómo distribuye el trabajo dentro del sprint
- Sin que PM/SM asigne tareas día a día (eso es comando, no agilidad)
- Daily standup es coordinación horizontal, no reporte a jefe

---

### 5.3 Integración del Feedback del Cliente

El cliente (usuario real) está integrado en el ciclo, no solo al final.

#### Cadencia de integración

**Cada sprint (2 semanas):**
1. **Día 0–2:** UX/Designer hace entrevistas + observación (4–5 usuarios mínimo)
2. **Día 3:** Retroalimentación se traduce en user stories para backlog
3. **Día 4–10:** Dev team construye
4. **Día 11–12:** QA + UX hacen testing con usuarios (5–10 usuarios)
5. **Día 13:** Sprint Review con feedback de usuarios presente o vídeos de testing
6. **Día 14:** Retro: qué aprendimos de los usuarios, qué pivotear

#### Mecanismos de feedback

| Mecanismo | Cuándo | Quién escucha | Qué se aprende |
|---|---|---|---|
| **User testing sessions** | Post-sprint, antes de lanzar | Diseñador, PO, 1–2 devs | Fricción real, emociones |
| **In-app feedback** | Continuo en producción | Analytics team | Donde abandonan, dónde clikean |
| **NPS semanal** | Post-cada-pedido (usuarios activos) | PO, Product team | Satisfacción general |
| **Chat del app** | Diario | Soporte + PO | Reclamos, requests, problemas reales |
| **Focus groups** | Cada 4 sprints | PO, diseñador | Validar dirección estratégica |

---

## PARTE 6: PLAN DE ITERACIÓN Y MÉTRICAS (10%)

### 6.1 Métricas que Evaluarán

#### Métrica 1: Retención (impacto principal)

- **Definición:** % de usuarios que activos a X días post-primer pedido
- **Meta:** 40% de usuarios repite dentro de 7 días (vs. actual 18%)
- **Cómo se mide:** Cohortes en Mixpanel: [Descargó app] → [Hizo pedido en día X] → [Abierto la app en día X+7]
- **Responsable:** Analytics team
- **Cadencia:** Diaria

---

#### Métrica 2: NPS (Net Promoter Score)

- **Definición:** "¿Qué tan probable es que recomiendes RAPIDGO? 0–10"
- **Cálculo:** (% promotores 9–10) − (% detractores 0–6)
- **Meta:** 60+ (de actual ~35)
- **Cómo se mide:** Post-pedido, popup simple 3 emojis (fácil responder)
- **Responsable:** Product team
- **Cadencia:** Semanal (agregar en dashboard)

---

#### Métrica 3: Frecuencia de Uso (LTV indirecto)

- **Definición:** Promedio de pedidos por usuario activo en mes
- **Meta:** 3.5 pedidos/mes (vs. actual 1.2)
- **Cómo se mide:** User ID + evento "pedido completado" en analytics
- **Responsable:** Analytics team
- **Cadencia:** Semanal

---

#### Métrica 4: CSAT en Entrega (Customer Satisfaction)

- **Definición:** "¿Tu pedido llegó a tiempo?" Sí/No/Parcialmente
- **Meta:** 85% responde "Sí"
- **Cómo se mide:** Post-entrega, notificación in-app pregunta simple
- **Responsable:** Operaciones + Product
- **Cadencia:** Diaria

---

#### Métrica 5: Tasa de Abandono en Checkout

- **Definición:** % de usuarios que inician un pedido pero no pagan
- **Meta:** Reducir de 38% a 15% en 4 sprints
- **Cómo se mide:** Funnel: [agregó item al carrito] → [fue a checkout] → [completó pago]
- **Responsable:** Analytics + UX/design
- **Cadencia:** Semanal

---

#### Métrica 6: Tiempo de Resolución de Soporte

- **Definición:** Minutos desde que usuario abre chat hasta que se resuelve
- **Meta:** <5 minutos para problema (ej: perdido el pedido)
- **Cómo se mide:** Timestamp en sistema de chat
- **Responsable:** Customer support
- **Cadencia:** Diaria

---

#### Métrica 7: Precisión de Tiempos de Entrega

- **Definición:** % de pedidos que llegan en el rango prometido ±5 minutos
- **Meta:** 90%
- **Cómo se mide:** Hora estimada vs. hora real de entrega (datos de GPS + confirmación)
- **Responsable:** Operaciones + Analytics
- **Cadencia:** Diaria

---

### 6.2 Cómo Tomarán Decisiones (Basadas en Data + Aprendizaje)

#### Reunión semanal: "Data + Decisiones"

**Cuándo:** Viernes 4pm (post-Daily, pre-Retro)  
**Participantes:** PO, SM, Tech Lead, Analytics  
**Duración:** 30 min

**Agenda:**
1. ¿Retención subió? Comparar cohortes de esta semana vs. semana anterior
2. ¿NPS se movió? Si bajó, ¿por qué? Correlacionar con eventos (feature nueva, bug, reclamo)
3. ¿Hay algún bloqueo en datos que impida tomar decisión?
4. Decisión: ¿continuamos en esta dirección o ajustamos?

**Ejemplo:**
- Lunes: Lanzaron new feature "repartidor con cara"
- Viernes: NPS subió de 40 a 52, retención pasó de 22% a 31%
- **Decisión:** Mantener, pulir, preparar para escalado

---

#### Reunión mensual: "Pivot o Escala"

**Cuándo:** Día 28 de cada mes  
**Participantes:** Equipo completo + CEO/inversores  
**Duración:** 1.5 horas

**Preguntas que responden:**

1. **¿Las métricas principales se movieron en la dirección correcta?**
   - Retención sí/no
   - NPS sí/no
   - Churn reducido sí/no

2. **¿Aprendimos algo que cambie nuestra hipótesis original?**
   - Ej: "Descubrimos que el usuario no quiere GPS en vivo, quiere notificaciones"
   - **Decisión:** Cancelar GPS, priorizar notificaciones

3. **¿Hay un patrón de fracaso que requiera pivot estratégico?**
   - Ej: "RAPIDGO es útil solo para comida, no supermercados"
   - **Decisión:** Dividir app, enfocarse en delivery de comida

4. **¿Escalamos a más ciudades o mejoramos base existente?**
   - Si retención >= 40% y NPS >= 60: escalar a Arequipa + Cusco
   - Si no: segunda iteración en Lima

---

### 6.3 Cuándo Pivotar (Criterios Claros)

**Pivot significa:** cambiar estrategia de producto, público o modelo de negocio.

#### Señales de Pivot (rojo / amarillo / verde)

| Métrica | 🔴 Rojo (Pivot) | 🟡 Amarillo (Ajuste) | 🟢 Verde (Continuar) |
|---|---|---|---|
| **Retención 7d** | <15% | 15–30% | >30% |
| **NPS** | <40 | 40–60 | >60 |
| **CSAT entrega** | <60% | 60–80% | >85% |
| **Tasa abandono checkout** | >50% | 30–50% | <15% |
| **Soporte time-to-resolve** | >30 min | 10–30 min | <5 min |

#### Ejemplos de pivots posibles

**Pivot 1: Especializarse solo en delivery de comida**
- **Cuándo:** Si datos muestran que usuarios usan 90% para comida, 5% supermercado, 5% paquetes
- **Por qué:** Mejor ROI, focus, mejor UX
- **Acción:** Suprimir categorías no-comida, rediseñar app alrededor de comida

**Pivot 2: Cambiar modelo de negocio (commission vs. markup)**
- **Cuándo:** Si restaurantes dicen "no puedo usar RAPIDGO, 30% de comisión mata mi margen"
- **Cómo:** Investigar: % que sí usa vs. % que rechaza
- **Acción:** Modelo freemium o suscripción (restaurante paga $500/mes)

**Pivot 3: Cambiar público objetivo (B2B vs. B2C)**
- **Cuándo:** Si datos muestran que corporativos (offices) orden 10x más que individuos
- **Por qué:** Mayor LTV, más predecible
- **Acción:** Crear endpoint para HR, ofertas corporativas, facturas

---

## PARTE 7: EXPOSICIÓN FINAL (5%)

### Presentación de 10 minutos: "RAPIDGO 2.0"

#### Estructura recomendada

**Minuto 0–1: Hook (El Problema)**
> "RAPIDGO descargó 500K veces en 8 meses. Pero 82% de usuarios nunca repite. ¿Qué pasó?"

**Minuto 1–2: Diagnóstico (Por Qué No Es Customer Centric)**
> Mostrar slide con 3 fallas principales:
> 1. Construyeron sin preguntar al usuario
> 2. Prioridad en crecimiento, no en experiencia
> 3. Ningún feedback del cliente en el desarrollo

**Minuto 2–3: Problema Real Identificado**
> "El usuario no sabe si su comida llegará en 20 o 60 minutos. No confía."

**Minuto 3–5: Solución (MVP + MLP)**
> Mostrar prototipo de UX mejorada:
> - Tracker en vivo simple (no complicado)
> - Promesa clara: "25–30 min o es gratis"
> - Notificaciones en tiempo real
> - Soporte disponible si falla

> Luego MLP: foto del repartidor, gamificación, personalización.

**Minuto 5–6: Cómo Validaremos (Investigación)**
> "Entrevistaremos 12 usuarios que se fueron, haremos survey de 200, analizaremos datos 6 meses. En 4 sprints sabremos si retención sube de 18% a 40%."

**Minuto 6–7: Cómo Lo Haremos (Ágil)**
> "Scrum de 2 semanas. Cada sprint lanzamos cambio nuevo a producción. Feedback del usuario cada 14 días."

**Minuto 7–9: Métricas que Importan**
> Tabla simple:
> - Retención 7d: 18% → 40%
> - NPS: 35 → 60
> - Pedidos/mes: 1.2 → 3.5

**Minuto 9–10: Decisión (Pivot o Escala)**
> "Si en 12 semanas logramos estas métricas, escalamos a Arequipa. Si no, analizamos qué faltó y hacemos segundo ciclo."

---

## CONSIDERACIONES FINALES

### Fortalezas de esta Propuesta

1. **Customer-centric:** Cada decisión nace de investigación real, no supuesto
2. **Ágil:** Aprender rápido, adaptar rápido, no invertir 6 meses en rumbo equivocado
3. **Medible:** Cada acción tiene métrica. Sabemos si funciona o no
4. **Humano:** El usuario está adentro del proceso, no afuera

### Riesgos y Mitigación

| Riesgo | Probabilidad | Mitigación |
|---|---|---|
| Operaciones no puede cumplir "25 min garantizado" | Alta | Piloto en zona alta densidad (Miraflores), contratar 50 repartidores extra |
| Competencia (Rappi) copia la idea | Alta | Ir rápido: primeros 30 días defines diferencia |
| Equipo no tiene experiencia en Scrum | Media | Contratar Scrum Master experienciado, 2 capacitaciones |
| CEO quiere todo para ayer | Alta | Mostrar datos: "MVP en 3 semanas vs. rediseño perfecto en 6 meses" |

---

## REFERENCIAS

- Henry Joseph Paredes del Alamo (2026). "Customer Centricity y Agilidad en Tecnologías de Información". Clase 1–2, ISIL.
- Ries, E. (2011). *The Lean Startup*. Crown Business.
- Gothelf, J., & Seiden, J. (2013). *Lean UX*. O'Reilly Media.
- Schwaber, K., & Sutherland, J. (2020). *The Scrum Guide*. Scrum.org.

---

## GLOSARIO DE TÉRMINOS

### A
**Agilidad**
Capacidad de adaptarse y responder rápidamente a cambios en el entorno. No significa "trabajar más rápido", sino aprender continuamente y ajustar el rumbo. Es un mindset, no solo un proceso.

**A/B Testing**
Técnica de experimentación donde se prueba una versión (A) del producto contra una versión alternativa (B) para determinar cuál funciona mejor. Usado para validar hipótesis en producción.

**Abandono en Checkout**
Cuando un usuario inicia un pedido o transacción pero no la completa. En RAPIDGO, 38% de usuarios abandona antes de pagar.

### B
**Backlog de Producto**
Lista priorizada de todas las funcionalidades, mejoras y correcciones que el producto necesita. Es dinámico: cambia según feedback y aprendizaje.

**Burndown Chart**
Gráfico que muestra el trabajo pendiente (en horas o puntos) vs. días en un sprint. Ayuda a visualizar si el equipo está en ritmo o retrasado.

### C
**CSAT (Customer Satisfaction Score)**
Métrica que mide satisfacción del cliente en un momento puntual. Pregunta simple: "¿Estás satisfecho?" (escala 0–10). Diferente de NPS que mide lealtad general.

**Customer Centricity**
Modelo operativo donde todas las decisiones de la empresa nacen de la perspectiva del cliente, no de tecnología. Requiere validación directa con usuarios.

**Churn**
Tasa de pérdida de usuarios. Si 100 usuarios se registran y 82 nunca repiten, churn es 82%.

### D
**Deuda Técnica**
Código o arquitectura de baja calidad que se acumula por priorizar velocidad. Eventualmente frena el desarrollo porque los cambios se vuelven frágiles.

**Daily Standup**
Ceremonia Scrum diaria de 15 minutos donde el equipo reporta: ¿qué hiciste ayer? ¿qué harás hoy? ¿bloqueos?

### E
**Engagement**
Nivel de interacción del usuario con el producto. Usuarios con alto engagement usan la app frecuentemente y exploran múltiples features.

### F
**Focus Group**
Sesión grupal (8–12 personas) donde se recopila feedback sobre concepto, prototipo o problema. Más rápido que entrevistas individuales, pero menos profundo.

**Funnel (Embudo de conversión)**
Visualización del camino que hace el usuario: desde conocer el producto hasta convertirse en usuario activo/pagador. Ej: descarga → primer pedido → pago.

### G
**Gamificación**
Incorporar elementos de juegos (puntos, insignias, rankings) en un producto para aumentar engagement. Debe ser sutil, no invasiva.

### H
**Hipótesis**
Suposición validable sobre qué hará que el usuario use el producto. Ej: "Si mostramos el repartidor en vivo, el usuario tendrá más confianza".

### I
**Iteración**
Ciclo corto de construir-medir-aprender. En Scrum, cada sprint es una iteración de 1–4 semanas.

### L
**Lifetime Value (LTV)**
Ingreso total que genera un usuario durante su relación con la empresa. Un usuario que pide 10 veces al mes por un año = LTV alto.

**Lean UX**
Metodología que aplica principios lean (eliminar desperdicio) al diseño UX. Prioriza feedback rápido sobre documentación exhaustiva.

### M
**Métricas de Vanidad**
Números que se ven bien pero no reflejan valor real. Ej: "500K descargas" sin medir retención. Engañoso porque esconde lo que importa.

**MLP (Minimum Lovable Product)**
Versión mínima de un producto que genera experiencia positiva desde el inicio. Va más allá del MVP: incluye diseño pulido, emociones, detalles que hacen amar el producto.

**MVP (Minimum Viable Product)**
Versión más simple de un producto que permite probar si la idea funciona. Objetivo: aprender lo máximo con mínima inversión. No es "perfecto", es "válido".

### N
**NPS (Net Promoter Score)**
Métrica que mide lealtad del cliente. Pregunta: "¿Qué tan probable es que recomiendes este producto?" (0–10). Fórmula: (% promotores 9–10) − (% detractores 0–6). Rango: −100 a +100.

### O
**OKR (Objectives and Key Results)**
Marco de establecimiento de objetivos: define QUÉ se quiere lograr (objetivo) y CÓMO se medirá (resultados clave). Ej: Objetivo = "Aumentar retención", KR = "40% repite en 7 días".

### P
**Persona**
Representación ficticia semi-detallada de un usuario. Ej: "María, 28 años, ejecutiva en banca, usa apps para eficiencia". Ayuda a empatizar sin hablar de "usuarios genéricos".

**Pivot**
Cambio estratégico en dirección: puede ser producto (qué construimos), público (a quién), o modelo de negocio (cómo ganamos dinero). No es fracaso, es aprendizaje.

**Product Owner (PO)**
En Scrum, responsable de entender al cliente y traducir necesidades en historias de usuario. Define QUÉ se construye.

### R
**Retención**
% de usuarios que siguen siendo activos después de X días. Ej: "Retención a 7 días = 18%" significa que solo 18% de usuarios regresa en los primeros 7 días.

**Retrospectiva (Retro)**
Ceremonia Scrum donde el equipo reflexiona: ¿qué salió bien? ¿qué mejorar? Se produce 1–2 acciones concretas para el próximo sprint.

### S
**Session Replay**
Herramienta que graba cómo un usuario interactúa con la app: dónde hace clic, dónde se queda atrapado, qué flujo sigue. Valioso para identificar fricción UX.

**Scrum**
Framework ágil que estructura el trabajo en sprints cortos (1–4 semanas), con roles claros (PO, SM, Dev Team) y ceremonias (planning, standup, review, retro).

**Scrum Master (SM)**
En Scrum, facilitador que elimina bloqueos y cuida la salud del equipo. NO es jefe ni asigna tareas.

**Sprint**
Período fijo (usualmente 2 semanas) durante el cual el equipo trabaja en completar un conjunto de historias de usuario. Al final, hay demo del trabajo.

**Sprint Planning**
Ceremonia donde el equipo decide qué trabajo entra en el próximo sprint. PO presenta qué necesita, team estima y auto-asigna tareas.

**Sprint Review**
Ceremonia donde el equipo muestra el trabajo completado a stakeholders/cliente y recibe feedback.

### T
**Tasa de Conversión**
% de usuarios que completan una acción deseada. Ej: "Tasa de conversión en pago = 62%" significa que 62% de usuarios que van a checkout completan la compra.

**Testing de Usuario**
Sesión donde 5–10 usuarios reales interactúan con un prototipo o versión del producto mientras alguien observa. Invaluable para encontrar fricción.

**Tiempo de Resolución de Soporte**
Minutos/horas que toma resolver un problema del usuario desde que lo reporta hasta que se resuelve.

### U
**UX (User Experience)**
Experiencia completa del usuario al interactuar con el producto: facilidad, claridad, emoción, efectividad. Diferente de UI (diseño visual).

**UI (User Interface)**
Diseño visual: botones, colores, tipografía, layouts. Es una parte de la UX total.

### V
**Validación**
Proceso de confirmar que una hipótesis es correcta mediante datos o feedback real. Ej: entrevistas, encuestas, A/B test.

**VUCA**
Acrónimo que describe el entorno actual: Volátil, Incierto, Complejo, Ambiguo. Justifica por qué agilidad es crítica.

### Z
**Zachman Framework**
Matriz de 6×6 usada en arquitectura empresarial para mapear perspectivas (ejecutiva, propietario, diseñador, constructor, etc.) vs. dimensiones (qué, cómo, dónde, quién, cuándo, por qué).

---

**Documento preparado:** Abril 2026  
**Último update:** 25/04/2026
