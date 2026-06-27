# Métricas de Experiencia y Analítica Digital Aplicada (Clase 10)

**Curso:** Customer Centricity en Tecnologías de la Información (ISIL, 2026-1)  
**Docente:** Henry Joseph Paredes del Alamo  
**Fecha:** [Sesión 10]

---

## Introducción

**Gancho humano:** ¿Alguna vez completaste un formulario de 10 pasos para cancelar una suscripción y juraste no volver a usar ese servicio? Ese dolor exacto es lo que mide el CES. Y si nadie lo mide, nadie lo arregla.

**Pregunta guía:** ¿Cómo pasar de "saber si el cliente está satisfecho" a "entender exactamente qué hacer para mejorar su experiencia"?

**Objetivos de aprendizaje:**
- Distinguir CES, NPS y CSAT: cuándo usar cada métrica y qué decisiones informan
- Entender la analítica digital como complemento de las métricas de encuesta
- Aplicar eventos, propiedades y el framework HEART para medir productos digitales
- Conectar métricas de experiencia con herramientas como Google Analytics y Amplitude

---

## Parte 1: Métricas de Experiencia — CES vs NPS vs CSAT

### ¿Qué son estas métricas?

**Analogía:** Imagina un restaurant. El CES te dice si fue fácil pedir y pagar. El CSAT te dice si la comida estuvo buena. El NPS te dice si lo recomendarías a amigos. Los tres miden cosas distintas, pero juntos cuentan la historia completa de tu experiencia.

> **Principio clave:** El esfuerzo bajo no garantiza recomendación, pero el esfuerzo alto garantiza abandono.

### Cuadro comparativo

| Aspecto | **CES** (Customer Effort Score) | **NPS** (Net Promoter Score) | **CSAT** (Customer Satisfaction) |
|---|---|---|---|
| **Pregunta clave** | ¿Cuán fácil fue resolver tu problema? | ¿Qué tan probable es que recomiendes? | ¿Estás satisfecho con [X interacción]? |
| **Escala** | 1–5 o 1–10 (difícil → fácil) | 0–10 (nunca → definitivamente) | 1–5 (muy insatisfecho → muy satisfecho) |
| **Enfoque principal** | **Fricción/esfuerzo operativo** | **Lealtad/intención de promover** | **Satisfacción puntual** |
| **Mide** | Experiencia operativa | Predictor de crecimiento orgánico | Satisfacción con resultado específico |
| **Aplicación temporal** | Post-transacción (inmediato) | Post-experiencia completa | Post-cada-interacción |
| **Señal de éxito** | CES alto (≥4/5) = experiencia sin fricción | NPS ≥ 60 = buen predictor de crecimiento sostenido | CSAT ≥ 85% = usuarios contentos |
| **Indicador de riesgo** | CES bajo (<3/5) = abandono probable | NPS < 0 = riesgo crítico | CSAT < 70% = problemas operativos |
| **Correlación con churn** | **ALTA:** Esfuerzo alto = alta probabilidad de no retorno | **MEDIA-ALTA:** Baja recomendación sugiere baja lealtad | **MEDIA:** Insatisfacción puntual no implica abandono total |

---

### 1.1 CES: Customer Effort Score

**CES** mide cuánto esfuerzo tuvo que invertir un cliente para resolver su problema o completar una tarea. Es una métrica de **fricción operativa**.

**Pregunta típica:** *"En una escala de 1–5, ¿cuán fácil fue para usted hacer su transacción?"*

#### ¿Por qué es importante?

Un cliente no necesita estar "muy satisfecho" para volver. Lo que **realmente necesita** es no sufrir fricción innecesaria. Un usuario que logra su objetivo sin dolor volverá. Un usuario que logra su objetivo pero con 10 pasos de frustración probablemente no.

**Investigación de Forrester:** Clientes con **bajo esfuerzo** tienen 3.5× más probabilidad de permanecer leales que aquellos con **alto esfuerzo**.

#### Cuándo medir CES

- **Post-transacción específica:** después de comprar, contactar soporte, cambiar contraseña, cancelar suscripción
- **No es adecuado para:** medir lealtad global o intención de recomendación

#### Ejemplo práctico: RAPIDGO

| Momento | Pregunta CES | Target | Acción si falla |
|---|---|---|---|
| Post-pedido | "¿Fue fácil hacer tu pedido?" | CES ≥ 4/5 | Reducir pasos de checkout |
| Post-cancelación | "¿Fue fácil cancelar?" | CES ≥ 4/5 | Permitir cancelación fácil |
| Post-soporte | "¿Fue fácil contactar soporte?" | CES ≥ 4/5 | Mejorar tiempos de respuesta |

#### Flujo de acción con CES bajo

```
CES bajo → Identificar paso problema → Simplificar/eliminar → Re-medir CES
```

**Ejemplo real:**
- **Problema:** Usuario reporta CES=2 al cambiar método de pago
- **Diagnóstico:** Formulario requiere 8 campos, upload de documento, verificación lenta
- **Solución:** Auto-rellenar campos, permitir foto del documento, verificación instantánea
- **Re-medición:** CES sube a 4.5

---

### 1.2 NPS: Net Promoter Score

**NPS** es una métrica de **lealtad y recomendación**. Mide la probabilidad de que un cliente promueva activamente tu producto.

**Pregunta:** *"En escala 0–10, ¿qué tan probable es que recomiendes [producto] a un amigo o colega?"*

#### Categorización de respuestas

| Categoría | Puntaje | Significado |
|---|---|---|
| **Promoters** | 9–10 | Clientes leales que recomiendan activamente |
| **Passives** | 7–8 | Satisfechos pero sin lealtad fuerte; riesgo si competencia mejora |
| **Detractors** | 0–6 | Insatisfechos, generan mala reputación boca a boca |

**Fórmula:** NPS = (% Promoters) − (% Detractors)  
**Rango:** −100 a +100

**Contexto por industria:**
- **Banca:** NPS promedio ≈ 30–45 (industria poco diferenciada)
- **Fintech:** NPS promedio ≈ 50–70 (alta competencia, expectativa de innovación)
- **Retail online:** NPS promedio ≈ 40–55

#### Cuándo medir NPS

- **Post-ciclo completo:** después de 3–5 transacciones, mensualmente para usuario activo, post-campaña o feature importante
- **No es adecuado para:** medir fricción operativa puntual

#### Ejemplo: RAPIDGO

- **Semana 1:** NPS = 35 (MVP básico)
- **Semana 4:** NPS ≥ 60 (meta de escalabilidad)

**Pregunta a usuarios:**
> "En escala 0–10: ¿Qué tan probable es que recomiendes RAPIDGO a un amigo que necesite delivery rápido?"

#### Flujo de acción con NPS bajo

```
NPS bajo → Entrevistar Detractors → Identificar razones → Priorizar fixes → Re-medir NPS
```

---

### 1.3 CSAT: Customer Satisfaction Score

**CSAT** mide satisfacción con una **acción o interacción específica**, no con el producto global.

**Pregunta:** *"¿Estás satisfecho con [X]?"* Escala 1–5 o 1–7.

#### Diferencia clave

- **CES:** ¿Sin fricción? (proceso)
- **CSAT:** ¿Satisfecho? (resultado)
- **NPS:** ¿Recomendarías? (lealtad)

---

### 1.4 El triángulo de validación del cliente

```
┌─────────────────────────────────────────────────────────────────┐
│                    FLUJO DE MÉTRICAS                            │
├─────────────────────────────────────────────────────────────────┤
│                                                                 │
│  Usuario interactúa con tu producto                            │
│         │                                                       │
│         ▼                                                       │
│  ¿Le resultó fácil?                                            │
│    ├── Sí, sin fricción → CES Alto (≥4/5) ──────────────┐     │
│    └── No, mucha fricción → CES Bajo (<3/5)              │     │
│         │                                                 │     │
│         │    ┌──────────────────────────────┘             │     │
│         │    │                                            │     │
│         ▼    ▼                                            │     │
│  ¿Logró su objetivo?                                     │     │
│    ├── Sí, completamente → CSAT Alto (≥85%) ─────────┐  │     │
│    └── Parcial o no → CSAT Bajo (<70%)                │  │     │
│         │                                              │  │     │
│         │    ┌─────────────────────────────┘           │  │     │
│         │    │                                         │  │     │
│         ▼    ▼                                         │  │     │
│  ¿Volverá a usar y recomendará?                       │  │     │
│    ├── Sí, fuerte → NPS Alto (Promoter 9–10)          │  │     │
│    └── No muy probable → NPS Bajo (Passive 7–8)       │  │     │
│                                                         │  │     │
│  Alto riesgo de abandono ←──────────────────────────────┘  │     │
│  Problema operativo ←───────────────────────────────────────┘     │
│  Vulnerabilidad a competencia                                    │
└─────────────────────────────────────────────────────────────────┘
```

#### Lectura del diagrama

1. **CES alto → CSAT alto → NPS alto:** El flujo perfecto. Experiencia fácil, logra objetivo, recomendará.
2. **CES bajo → Abandono inmediato.** Mucha fricción mata cualquier producto.
3. **CES alto pero CSAT bajo:** Proceso fácil pero resultado insatisfactorio. Promesa incumplida.
4. **CSAT alto pero NPS bajo (Passive):** Satisfecho puntualmente, pero no leal. Riesgo de migración.

---

### 1.5 Decisiones estratégicas según métricas

| Métrica baja | Problema | Stakeholder | Solución | Éxito en |
|---|---|---|---|---|
| **CES** | Experiencia operativa compleja | Diseño UX/UI + Desarrollo | Simplificar flujos, reducir pasos | 2–3 sprints |
| **CSAT** | Promesa no cumplida | Operaciones + Producto | Mejorar SLA, alinear promesa con realidad | 4 semanas |
| **NPS** | Falta de lealtad | Producto + Liderazgo | Entrevistar Detractors, innovar valor | 2–3 meses |

---

## Parte 2: Analítica Digital Aplicada

### ¿Por qué no basta con encuestas?

**Analogía:** Las métricas de encuesta (NPS, CSAT, CES) son como preguntarle a alguien cómo fue su viaje después de llegar a casa. La analítica digital es como tener un GPS que registra cada giro, cada parada y cada atasco **en tiempo real**.

**Dato clave:** Un buen NPS por sí solo no te dice nada de las features que sacaste a la luz, ni de la experiencia de inicio a fin del flujo del producto.

### Analítica tradicional vs Analítica digital

| Aspecto | **Analítica Tradicional** | **Analítica Digital** |
|---|---|---|
| **Acceso a data** | Rudimentaria e inexacta | Tiempo real, precisa y exacta |
| **Predictibilidad** | Imprecisa por inputs erróneos | Mayor predictibilidad de resultados |
| **Feedback** | Tardío, no permite reacción veloz | Veloz y medible a través de interacciones |
| **Herramientas** | Automatización y visualización por desarrollar | Conectadas e integradas para recolección, análisis y reportería |
| **Experimentos** | Lentitud y alto costo | Pruebas A/B fáciles de implementar y analizar |

### Beneficios de la analítica digital

1. **Personalización:** Con información de navegación, preferencias y patrones de compra, se crean experiencias personalizadas (sugerencias, contenido relevante, navegación adaptada).
2. **Impacto directo en UX:** Identificar fricciones permite replantear secciones y reintroducirlas en el diseño.
3. **Input para decisiones:** Predecir comportamientos, identificar tendencias y oportunidades con datos, no con suposiciones.

---

### 2.1 Conceptos clave de analítica digital

| Concepto | Definición | Ejemplo |
|---|---|---|
| **Conversión** | Acción específica que queremos que realice un usuario | Comprar un producto, completar un formulario |
| **Funnels** | Camino desde un punto de partida hasta la conversión deseada | Registro → Verificación → Primera compra |
| **A/B Testing** | Experimentos con variantes de app/web con cambios mínimos | Botón azul vs botón verde para "Comprar" |
| **Heatmaps** | Representación visual de interacción (clicks) en una página | Zonas calientes de clics en una landing page |
| **CTA** | Acciones que disponemos a que usuarios ejecuten | Botón "Compra aquí", enlace "Suscribirme" |
| **Bounce Rate** | Porcentaje de usuarios que abandonan una página | 40% de visitantes se van sin interactuar |
| **Cookies** | Archivos de texto en el navegador para reconocer al usuario | Recordar preferencias en visitas posteriores |
| **Tracking Pixels** | Imagen invisible que recopila información de comportamiento | Saber si un usuario abrió un email |
| **Cohorts** | Grupos de usuarios que comparten una característica en un periodo | Usuarios que se registraron en enero 2026 |

---

### 2.2 Eventos y Propiedades

**¿Qué es un evento?**  
Etiqueta las acciones que los usuarios ejecutan al usar el producto. Incluye CTAs, hovers, tooltips, navegaciones, etc. Responde: **¿qué está haciendo nuestro usuario?**

**¿Qué son las propiedades?**  
Atributos que dan detalle de la acción o del usuario.

| Tipo de propiedad | Qué responde | Ejemplo |
|---|---|---|
| **User Properties** | ¿Quién nos está utilizando? | Empresa, segmento, plan, ubicación |
| **Event Properties** | ¿Qué producto compró? ¿Desde qué canal? | Categoría del producto, keyword de búsqueda, dispositivo |

**Ejemplo práctico:**

```
Evento: "búsqueda_realizada"
├── Event Properties:
│   ├── keyword: "auriculares bluetooth"
│   ├── canal: "web"
│   └── dispositivo: "mobile"
└── User Properties:
    ├── empresa: "Acme Corp"
    └── segmento: "enterprise"
```

---

### 2.3 Herramientas del mercado

| Tipo | Herramientas | Enfoque principal | Equipo que la usa |
|---|---|---|---|
| **Análisis web estándar** | Google Analytics, Adobe Analytics, Matomo | Comportamiento 360° del sitio: tráfico, sesiones, duración | Marketing y contenidos |
| **Análisis de productos digitales** | Amplitude, Mixpanel, Hotjar, VWO | Detalle de flujos: funnels, cohortes, segmentación, eventos | Producto, diseño y desarrollo |

#### ¿Cuándo usar cada tipo?

- **Google Analytics:** Para medir tráfico, adquisición, comportamiento general del sitio. Implementación sencilla para su enfoque principal, pero se complejiza para flujos de producto específicos.
- **Amplitude / Mixpanel:** Para analizar eventos específicos, cohortes, segmentación profunda y experimentos. Requiere configuración de eventos y propiedades, pero ofrece visibilidad mucho más detallada.

#### Overview rápido

**Google Analytics** permite vistas por:
- Audiencia (demografía, tecnologías, intereses)
- Flujos de adquisición (conectado con Google Ads)
- Comportamiento (velocidad del sitio, eventos)
- Conversiones (objetivos configurados)

**Amplitude** permite:
- Medir actividad (visitas, tráfico, eventos)
- Crear gráficos y dashboards integrados
- Espacios compartidos con equipos y stakeholders
- Integraciones y experimentos

---

### 2.4 Framework HEART para idear métricas

**HEART** fue diseñado por Google para medir la experiencia de usuario a escala de producto completo. También puede aplicarse a funcionalidades individuales mediante el proceso **Goal → Signals → Metrics**.

| Categoría | Qué mide | Ejemplo de métrica |
|---|---|---|
| **Happiness** | Satisfacción y agrado del usuario | CSAT post-interacción, CES en checkout |
| **Engagement** | Nivel de uso de la funcionalidad | Sesiones por usuario, tiempo en app, frecuencia de uso |
| **Adoption** | Atracción de nuevos usuarios | % de usuarios que usan la nueva feature en 30 días |
| **Retention** | Vuelta de usuarios | % de usuarios que regresan después de 7 días |
| **Task Success** | Conversión y eficiencia del flujo | Tiempo para completar tarea, tasa de conversión |

#### Proceso: Goal → Signals → Metrics

```
┌─────────────────────────────────────────────────────────────┐
│              PROCESO HEART PASO A PASO                       │
├─────────────────────────────────────────────────────────────┤
│                                                              │
│  1. DEFINIR OBJETIVOS                                       │
│     Revisar hipótesis y propósito de la funcionalidad       │
│     ¿Qué queremos lograr?                                   │
│              │                                               │
│              ▼                                               │
│  2. DETERMINAR SEÑALES                                      │
│     Basadas en hipótesis: ¿qué debe hacer el usuario        │
│     para contribuir al éxito/fracaso?                        │
│              │                                               │
│              ▼                                               │
│  3. FACTIBILIDAD Y ESFUERZO                                 │
│     ¿Es posible medir cada señal?                           │
│     Armar listado de propiedades de usuario y eventos       │
│              │                                               │
│              ▼                                               │
│  4. PRIORIZACIÓN Y MEDICIÓN                                 │
│     Separar "vanity metrics" de las que realmente importan  │
│     Priorizar impacto sobre lo más relevante                │
│                                                              │
└─────────────────────────────────────────────────────────────┘
```

> **Regla de oro:** No se trata de medir absolutamente todo, sino de medir lo que vale la pena analizar para tomar decisiones.

---

### 2.5 Analítica digital en procesos de Discovery y Delivery

| Fase del producto | Qué aporta la analítica digital | Métricas relacionadas |
|---|---|---|
| **Discovery** | Entender patrones del cliente, identificar oportunidades en navegación, analizar funnels con bajo índice de éxito | NPS, CSAT, CES + eventos digitales |
| **Delivery y mejora continua** | Medir performance de funcionalidades lanzadas vs objetivos trazados, identificar segmentos impactados | CES, CSAT + eventos, cohortes |

---

## Parte 3: Integración — De las métricas a la acción

### Casos reales por industria

| Industria | Métrica clave | Dato recopilado | Uso | Beneficio |
|---|---|---|---|---|
| **Banca** | CES + NPS | Tiempos de transferencia, satisfacción con app | Reducir fricción en operaciones digitales | Mayor retención, menos llamadas a soporte |
| **Retail** | CSAT + Eventos | Historial de compras, heatmaps de browsig | Recomendaciones personalizadas | Mayor ticket promedio |
| **Delivery** | CES + Funnels | Tiempos de pedido, abandono de carrito | Optimizar checkout, mejorar SLA | Menos cancelaciones, más pedidos completados |
| **SaaS** | NPS + Cohorts | Uso de features por segmento, retención mensual | Decidir qué features desarrollar | Reducción de churn, expansión de cuenta |
| **Salud** | CSAT + Tracked Events | Historial de citas, satisfacción con plataforma | Diagnóstico asistido, gestión de pacientes | Precisión médica, experiencia del paciente |

### Ejemplo integrado: App bancaria

| Métrica | Escenario | Interpretación | Acción |
|---|---|---|---|
| **CES** | Transferencia en 3 pasos, CES = 4.8/5 | ✅ Proceso optimizado | Mantener estándares |
| **CSAT** | Dinero llegó en 2 horas, CSAT = 92% | ✅ Promesa cumplida | Explorar nuevas features |
| **NPS** | "La recomendaría al cambiar de trabajo", NPS = 72 | ✅ Lealtad alta | Programa de referidos |
| **Eventos** | 80% usa transferencia rápida, 20% usa transferencia programada | Feature estrella identificada | Invertir en optimizar transferencia rápida |

---

## Errores comunes a evitar

| Error | Ejemplo real | Consecuencia |
|---|---|---|
| **Medir solo NPS** | Empresa confía en NPS alto pero no sabe por qué los usuarios abandonan el checkout | Pierde ventas por fricción no detectada |
| **Confundir CES con CSAT** | Equipo cree que "satisfecho" = "fácil" y no simplifica flujos | CES bajo persiste a pesar de CSAT aceptable |
| **Usar Google Analytics para todo** | Equipo de producto intenta analizar flujos específicos con GA | Datos incompletos, decisiones basadas en información parcial |
| **No priorizar métricas** | Equipo mide 50 eventos sin saber cuáles importan | Parálisis por análisis, "vanity metrics" que no generan acción |
| **Ignorar Detractors** | Empresa con NPS = 40 no investiga los 0–6 | Los problemas se repiten, NPS sigue bajando |
| **No cerrar el ciclo** | Se recolecta CES pero no se actúa sobre resultados | Clientes frustrados, percepción de que la empresa no escucha |

---

## Conclusiones

1. **CES, NPS y CSAT no son intercambiables.** Cada una responde una pregunta distinta: ¿fue fácil? (CES), ¿estás satisfecho? (CSAT), ¿recomendarías? (NPS). Usar la métrica equivocada lleva a decisiones incorrectas.

2. **Las encuestas no alcanzan.** La analítica digital complementa las métricas de encuesta al ofrecer datos en tiempo real, segmentación profunda y visibilidad sobre comportamiento real del usuario.

3. **Los eventos y propiedades son la materia prima.** Sin una buena definición de qué eventos medir y qué propiedades extraer, la analítica digital es solo ruido.

4. **El framework HEART estructura la medición.** En vez de medir todo, enfócate en Happiness, Engagement, Adoption, Retention y Task Success para tu funcionalidad.

5. **La métrica sin acción es un adorno.** Medir es el primer paso; lo que importa es qué haces con lo que descubres.

**Frase clave:**
> "Los datos sin acción son como un GPS sin conductor: te dicen dónde estás, pero no te llevan a ningún lado."

---

## Glosario

| Término | Definición | Ejemplo |
|---|---|---|
| **CES** | Customer Effort Score — mide el esfuerzo del cliente para completar una tarea | "¿Cuán fácil fue transferir dinero?" |
| **NPS** | Net Promoter Score — mide la probabilidad de recomendación | "¿Recomendarías esta app a un amigo?" |
| **CSAT** | Customer Satisfaction Score — mide satisfacción con una interacción específica | "¿Estás satisfecho con tu entrega?" |
| **Evento** | Acción que un usuario ejecuta al usar el producto | Clic en "Comprar", navegación a "Mi cuenta" |
| **Propiedad** | Atributo que da detalle a un evento o al usuario | Categoría del producto, canal de origen, segmento |
| **Funnel** | Secuencia de pasos desde un punto de partida hasta la conversión | Registro → Verificación → Primera compra |
| **Cohort** | Grupo de usuarios que comparten una característica en un periodo | Usuarios que se registraron en enero 2026 |
| **Heatmap** | Representación visual de interacción (clicks, scrolls) en una página | Zonas calientes del botón "Comprar" |
| **A/B Testing** | Experimento con variantes de un elemento para medir impacto | Botón azul vs botón verde |
| **Bounce Rate** | Porcentaje de usuarios que abandonan una página sin interactuar | 40% de visitantes se van de la landing page |
| **HEART** | Framework de Google: Happiness, Engagement, Adoption, Retention, Task Success | Framework para idear métricas de producto |
| **Promoters** | Usuarios con NPS 9–10 que recomiendan activamente |.Cliente que recomienda la app a 5 amigos |
| **Detractors** | Usuarios con NPS 0–6 que generan mala reputación | Usuario que publica reseña negativa |
| **Passives** | Usuarios con NPS 7–8 satisfechos pero no leales | Usuario que usa la app pero cambiaría si surge mejor opción |

---

## Preguntas de Reflexión

1. **Pregunta aplicada:** "Si tuvieras una tienda online y solo pudieras medir UNA métrica (CES, NPS o CSAT), ¿cuál elegirías y por qué? ¿Qué information estarías perdiendo?"

2. **Pregunta comparativa:** "¿Cuál de las tres métricas (CES, NPS, CSAT) ves más aplicada en los servicios digitales que usas diariamente? ¿Notas alguna diferencia en cómo te tratan las empresas que la usan?"

3. **Pregunta crítica:** "Si un producto tiene CES alto pero NPS bajo, ¿qué podría estar pasando? Diseña una hipótesis y piensa en qué datos digitales confirmarían o descartarían esa hipótesis."

4. **Pregunta técnica:** "¿Algún dato tuyo se está usando sin que lo sepas? Piensa en las cookies y tracking pixels: ¿sabes qué empresas rastrean tu comportamiento y para qué lo usan?"

---

## Fuentes

| # | Fuente | Tipo | URL |
|---|--------|------|-----|
| 1 | Dixon, M., Toman, N., & DeLisi, R. (2013). *The Effortless Experience*. Penguin | Libro | https://www.penguinrandomhouse.com/books/310798/the-effortless-experience-by-matthew-dixon-nick-toman-and-ricardo-de-lisi/ |
| 2 | Reichheld, F. (2003). *The One Number You Need to Grow*. Harvard Business Review | Artículo | https://hbr.org/2003/12/the-one-number-you-need-to-grow |
| 3 | Google. *HEART Framework for Measuring UX* | Oficial | https://research.google/pubs/the-heart-framework-for-measuring-ux/ |
| 4 | Medium. *Utilizando el Google HEART Framework* | Tercero | https://medium.com/@Juan-gallardo/utilizando-el-googles-heart-framework-para-definir-las-métricas-ux-de-un-producto-o-funcionalidad-c94a9fd67841 |
| 5 | Forrester Research. *The Customer Experience Index* | Oficial | https://www.forrester.com/report/the-customer-experience-index/ |
| 6 | Amplitude. *Product Analytics Documentation* | Oficial | https://amplitude.com/docs |

---

*Última verificación: 26/06/2026.*
