# Analítica Digital Aplicada II: Amplitude, Estrategia e Implementación (Clase 11)

**Curso:** Customer Centricity en Tecnologías de la Información (ISIL, 2026-1)  
**Docente:** Henry Joseph Paredes del Alamo  
**Fecha:** [Sesión 11]

---

## Introducción

**Gancho humano:** Tienes 50 iniciativas en el roadmap y solo recursos para 10. ¿Cuáles elegirías? Si la respuesta es "las que suenan mejor" o "las que pide el jefe", estás tomando decisiones a ciegas. La analítica digital te da el mapa para decidir con datos, no con corazonadas.

**Pregunta guía:** ¿Cómo conectar las métricas digitales con la estrategia de negocio para priorizar lo que realmente importa?

**Objetivos de aprendizaje:**
- Relacionar métricas digitales con la estrategia de negocio y el roadmap de producto
- Navegar las capacidades principales de Amplitude (funnels, retention, journeys, cohorts)
- Aplicar buenas prácticas para el uso de herramientas de analítica de producto
- Ejecutar el proceso de implementación de métricas digitales

---

## 1. Métricas Digitales y Estrategia de Negocio

### ¿Qué tiene que ver el roadmap con las métricas digitales?

**Analogía:** El roadmap es como un mapa de carreteras. Las métricas digitales son la gasolina: sin ellas, no sabes a cuánto puedes llegar, ni si el camino que elegiste te lleva a donde quieres.

Como dijo Porter: **la esencia de la estrategia es lo que decidimos no hacer.** En productos digitales, esto se materializa en el roadmap. Pero un roadmap sin métricas es solo una lista de deseos.

### El problema de priorizar sin datos

```
┌─────────────────────────────────────────────────────────────┐
│         EL DILEMA DEL ROADMAP SIN MÉTRICAS                  │
├─────────────────────────────────────────────────────────────┤
│                                                              │
│  50 iniciativas en el backlog                                │
│         │                                                    │
│         ▼                                                    │
│  ¿Cuáles elegir?                                            │
│    ├── "Las que suenan mejor" → Decisión subjetiva           │
│    ├── "Las que pide el jefe" → Decisión política            │
│    └── "Las que impactan más" → Decisión basada en datos ✅  │
│                                                              │
│  Para la opción 3 necesitas:                                │
│  • Métrica principal de negocio                             │
│  • Estimación de impacto de cada iniciativa                 │
│  • Forma de comparar entre ellas                            │
│                                                              │
└─────────────────────────────────────────────────────────────┘
```

### Opportunity Tree Map: la herramienta de decisión

Un **Opportunity Tree Map** agrupa las soluciones por el frente que buscan resolver, conectándolas con la métrica de negocio que impactan.

```
Métrica de Negocio (ej: Aumentar retención 15%)
├── Oportunidad 1: Reducir fricción en onboarding
│   ├── Solución 1.1: Simplificar registro (HEART: Adoption)
│   ├── Solución 1.2: Tutorial interactivo (HEART: Engagement)
│   └── Solución 1.3: Recordatorios push (HEART: Retention)
└── Oportunidad 2: Mejorar valor percibido
    ├── Solución 2.1: Nueva feature premium (HEART: Happiness)
    ├── Solución 2.2: Gamificación (HEART: Engagement)
    └── Solución 2.3: Contenido exclusivo (HEART: Retention)
```

**Paso a paso:**
1. Identificar la métrica principal de negocio
2. Descomponer en oportunidades (frentes de mejora)
3. Listar soluciones por oportunidad
4. Evaluar impacto esperado de cada solución (usando HEART)
5. Comparar e priorizar por valor esperado vs esfuerzo

> **Regla clave:** Si una iniciativa no impacta una métrica de negocio, no debería estar en el roadmap.

---

## 2. Amplitude: Herramienta de Análisis de Producto

### ¿Por qué Amplitude y no solo Google Analytics?

| Capacidad | Google Analytics | Amplitude |
|---|---|---|
| **Foco principal** | Tráfico web general | Comportamiento de producto digital |
| **Funnels** | Básico | Avanzado con segmentación |
| **Cohorts** | Limitado | Nativo y flexible |
| **Eventos** | Configuración básica | Eventos + propiedades detalladas |
| **Retención** | Básico | Análisis de cohorts de retención |
| **Journeys** | Flujo de navegación | Mapa de caminos completos del usuario |
| **Integraciones** | Google ecosystem | APIs, Slack, Snowflake, Facebook Ads |
| **Equipo principal** | Marketing | Producto + Desarrollo |

### Capacidades principales de Amplitude

#### 2.1 Funnels y Evolución de Eventos

**Funnels** miden la conversión específica de un flujo ideal.

**Ejemplo marketplace:**
```
Home → Búsqueda → Detalle producto → Añadir al carrito → Compra
 │       │            │                  │               │
100%    72%          45%               28%             12%
                         Conversión total: 12%
```

**Preguntas que resuelve:**
- ¿Cuántos usuarios completaron el flujo completo?
- ¿En qué paso se pierde más gente?
- ¿Cuánto tiempo tardan en convertir?

**Evolución de eventos** mide comportamiento temporal:
- ¿Qué día de la semana compran más los usuarios?
- ¿Cómo varía el uso de una feature por hora del día?
- ¿Hay patrones estacionales?

#### 2.2 Análisis de Retención

La retención responde la pregunta más importante: **¿los usuarios vuelven?**

| Tipo de retención | Qué mide | Ejemplo |
|---|---|---|
| **N-day** | ¿Vuelve después de N días? | ¿Vuelve después de 7 días? |
| **Unbounded** | ¿Vuelve en algún momento? | ¿Alguna vez volvió después del primer uso? |
| **Bracket** | ¿Vuelve dentro de un rango? | ¿Vuelve entre el día 3 y el día 14? |

**Segmentación disponible:** Por propiedades de usuario, eventos previos, cohortes personalizados.

#### 2.3 Análisis de Journeys

Los **Journeys** muestran todos los caminos posibles que toman los usuarios para llegar a un resultado.

**Caso práctico:** Analizar desde qué rutas los usuarios llegan a ejecutar "on Hover Study Hours" en una app educativa.

```
┌─────────────────────────────────────────────────┐
│           MAPA DE JOURNEYS                       │
├─────────────────────────────────────────────────┤
│                                                  │
│  Home ──→ Búsqueda ──→ Detalle ──→ Hover ✅     │
│    │                      │                     │
│    │                      └──→ Menú ──→ ❌     │
│    │                                           │
│    └──→ Recomendaciones ──→ Hover ✅           │
│         │                                      │
│         └──→ Categorías ──→ ❌                 │
│                                                  │
│  Resultado: 3 caminos exitosos, 2 con fuga      │
└─────────────────────────────────────────────────┘
```

**Qué detecta:**
- Dónde se dan las fugas en flujos específicos
- Caminos alternativos no previstos
- Comportamientos inesperados del usuario

---

## 3. Buenas Prácticas para Amplitude

### 3.1 Instalar un Explorador de Eventos

Las herramientas de analítica digital tienen **extensiones de navegador** que muestran los eventos en tiempo real mientras navegas la app.

**Beneficios:**
- Probar en ambientes de desarrollo antes de producción
- Verificar que los eventos se envían correctamente
- Reconocer eventos en todas las páginas sin revisar código

**Cómo hacerlo:** Instalar la extensión de Amplitude / Mixpanel en Chrome y navegar por tu producto con la consola abierta.

### 3.2 Desarrolla y Comparte Dashboards

| Regla | Por qué |
|---|---|
| **Un dashboard por funcionalidad** | Visibilidad rápida del impacto de cada feature |
| **Acceso compartido** | Todo el equipo y stakeholders deben verlo |
| **Configurar alertas** | Notificaciones automáticas cuando las métricas cambian |
| **Integrar con canales** | Enviar datos a Slack, Microsoft Teams, etc. |

### 3.3 Crea Cohortes y Conecta con Ellos

Un **cohort** agrupa usuarios que comparten una característica. Una vez identificado, se puede:

| Acción | Ejemplo |
|---|---|
| **Retargeting de Ads** | Enviar usuarios inactivos a Facebook Ads |
| **Mailing específico** | Email personalizado a usuarios que abandonaron el carrito |
| **Push notifications** | Notificación a usuarios que no usan la nueva feature |
| **Llamadas directas** | Contactar usuarios premium que redujeron uso |
| **Exportar a Data Warehouse** | Enviar cohort a Snowflake o AWS para análisis avanzado |

### 3.4 Optimiza Constantemente

> **No siempre "más data es mejor."** Si una métrica se mide por curiosidad y no va a generar una decisión, no abrumar la plataforma. Cada evento tiene un costo en cuotas de la herramienta.

**Regla de oro:** Solo medir lo que va a generar un insight accionable.

---

## 4. Proceso de Implementación de Métricas Digitales

### Las 4 fases

```
┌─────────────────────────────────────────────────────────────┐
│          PROCESO DE IMPLEMENTACIÓN PASO A PASO               │
├─────────────────────────────────────────────────────────────┤
│                                                              │
│  FASE 1: DEFINIR OBJETIVOS DE NEGOCIO                       │
│  ¿A qué métrica estamos buscando impactar?                  │
│  ¿Cómo va a suceder a través de la funcionalidad X?         │
│              │                                               │
│              ▼                                               │
│  FASE 2: ARMADO DE HEART                                     │
│  Definir Happiness, Engagement, Adoption,                    │
│  Retention y Task Success para el flujo                      │
│              │                                               │
│              ▼                                               │
│  FASE 3: OPTIMIZAR MÉTRICAS                                  │
│  ¿Es necesaria nueva implementación o con lo existente      │
│  se puede responder? No duplicar esfuerzo                   │
│              │                                               │
│              ▼                                               │
│  FASE 4: DOCUMENTAR Y EJECUTAR                               │
│  "Si no está escrito no existe."                            │
│  Documentar cada evento, propiedad y qué responde           │
│                                                              │
└─────────────────────────────────────────────────────────────┘
```

### Fase 1: Definir Objetivos de Negocio

Antes de tocar la herramienta, tener claro:
- ¿Cuál es la métrica principal del negocio?
- ¿Qué funcionalidad impacta esa métrica?
- ¿Qué preguntas queremos responder?

**Ejemplo:**
- **Objetivo:** Aumentar la retención de usuarios en 15%
- **Funcionalidad:** Programa de fidelización
- **Preguntas:** ¿Cuántos usuarios se inscriben? ¿Cuántos canjean puntos? ¿Cuántos vuelven después del canje?

### Fase 2: Armado de HEART

| Categoría | Pregunta | Métrica sugerida |
|---|---|---|
| **Happiness** | ¿Los usuarios están satisfechos con la feature? | CSAT post-interacción, CES en flujo |
| **Engagement** | ¿Qué tanto la usan? | Sesiones por semana, eventos por usuario |
| **Adoption** | ¿Cuántos la adoptan? | % usuarios que la usan en 30 días |
| **Retention** | ¿Vuelven a usarla? | % que regresa después de 7, 14, 30 días |
| **Task Success** | ¿Completan el flujo? | Conversión, tiempo para completar |

### Fase 3: Optimizar Métricas

**Pregunta crítica:** ¿Necesitamos implementar algo nuevo o con lo que ya tenemos es suficiente?

- Revisar eventos y propiedades ya existentes
- Evitar duplicar esfuerzo
- Priorizar lo que responde las preguntas de la Fase 1

### Fase 4: Documentar y Ejecutar

**"Si no está escrito, no existe."**

El documento de implementación debe incluir por cada evento:
- Nombre del evento
- Propiedades del evento
- Propiedades del usuario
- Qué pregunta responde
- Cuándo se dispara

**Referencia de implementación:**
- SDKs: https://amplitude.com/docs/sdks
- APIs: https://amplitude.com/docs/apis

---

## 5. Casos Reales por Industria

| Industria | Métrica prioritaria | Eventos clave | Decisión informada |
|---|---|---|---|
| **E-commerce** | Conversión de carrito | `add_to_cart`, `begin_checkout`, `purchase` | Optimizar checkout donde hay mayor abandono |
| **SaaS** | Activación de usuario | `signup`, `first_action`, `invite_teammate` | Simplificar onboarding si activación < 40% |
| **Streaming** | Retención semanal | `play_content`, `complete_episode`, `rate_content` | Crear recomendaciones si retención cae |
| **FinTech** | Uso de feature principal | `transfer_money`, `check_balance`, `set_alert` | Promover features subutilizadas con tours |
| **Educación** | Completado de curso | `start_lesson`, `complete_lesson`, `take_quiz` | Identificar lecciones con mayor abandono |

---

## Errores Comunes a Evitar

| Error | Ejemplo real | Consecuencia |
|---|---|---|
| **Priorizar roadmap sin métricas de impacto** | Equipo elige features por intuición, no por datos | Recursos desperdiciados en iniciativas de bajo impacto |
| **Medir todo sin criterio** | 200 eventos configurados, la mayoría sin uso | Costos inflados, ruido en dashboards, parálisis |
| **No documentar implementación** | Desarrollador configura eventos sin documentar qué miden | Nadie más del equipo puede interpretar los datos |
| **Usar solo dashboards** | Equipo crea gráficos bonitos pero nunca actúa | Analítica de ornamento, no de decisión |
| **Ignorar cohortes** | No segmentar usuarios, tratar a todos igual | Estrategias genéricas que no funcionan para ningún segmento |
| **No compartir dashboards** | Solo el desarrollador ve los datos | Stakeholders desinformados, decisiones a ciegas |

---

## Conclusiones

1. **Las métricas digitales deben estar conectadas con la estrategia de negocio.** Un roadmap sin métricas de impacto es una lista de deseos. El Opportunity Tree Map ayuda a priorizar con datos.

2. **Amplitude y herramientas similares ofrecen mucho más que dashboards.** Funnels, cohorts, journeys y retención son capacidades que la analítica web estándar no cubre.

3. **La implementación requiere disciplina.** Definir objetivos → Armado HEART → Optimizar → Documentar. El paso de documentar es el más saltado y el más costoso a largo plazo.

4. **No más data, mejor data.** Medir solo lo que genera decisiones. Cada evento tiene un costo en la plataforma.

5. **Compartir es poder.** Dashboards accesibles para todo el equipo y stakeholders facilitan la toma de decisiones colectiva.

**Frase clave:**
> "Un dashboard que nadie mira es como un GPS apagado: tiene toda la información, pero no te lleva a ningún lado."

---

## Glosario

| Término | Definición | Ejemplo |
|---|---|---|
| **Roadmap** | Hoja de ruta del producto con priorización de iniciativas | Plan trimestral de features a desarrollar |
| **Opportunity Tree Map** | Árbol de oportunidades que conecta soluciones con métricas de negocio | Árbol que muestra qué soluciones impactan la retención |
| **Funnel** | Flujo de eventos donde se mide conversión paso a paso | Registro → Verificación → Primera compra |
| **Cohort** | Grupo de usuarios que comparten una característica en un periodo | Usuarios que se registraron en enero 2026 |
| **Retención** | Métrica que mide si los usuarios vuelven a usar el producto | % de usuarios que regresan después de 7 días |
| **Journey** | Mapa de todos los caminos que toman los usuarios para llegar a un resultado | Rutas desde home hasta "comprar producto" |
| **HEART** | Framework: Happiness, Engagement, Adoption, Retention, Task Success | Framework para idear métricas de producto |
| **Explorador de Eventos** | Extensión de navegador que muestra eventos en tiempo real | Extensión de Amplitude en Chrome |
| **SDK** | Kit de desarrollo de software para integrar herramientas | Amplitude SDK para iOS, Android, Web |
| **Vanity Metrics** | Métricas que se ven bien pero no generan decisiones | "Total de visitas" sin contexto de conversión |

---

## Preguntas de Reflexión

1. **Pregunta estratégica:** "Piensa en un producto digital que uses frecuentemente. Si tuvieras que armar un Opportunity Tree Map para mejorar su retención, ¿qué oportunidades y soluciones identificarías?"

2. **Pregunta técnica:** "¿Cuál es la diferencia entre medir con Google Analytics y medir con Amplitude? ¿Para qué tipo de preguntas cada herramienta es más útil?"

3. **Pregunta práctica:** "Si tuvieras que implementar el proceso HEART para la app de tu banco, ¿qué 5 eventos definirías primero y por qué?"

4. **Pregunta crítica:** "¿Alguna vez has visto un dashboard que nadie usa? ¿Por qué crees que ocurre y cómo lo evitarías?"

---

## Fuentes

| # | Fuente | Tipo | URL |
|---|--------|------|-----|
| 1 | Amplitude. *SDK Documentation* | Oficial | https://amplitude.com/docs/sdks |
| 2 | Amplitude. *API Documentation* | Oficial | https://amplitude.com/docs/apis |
| 3 | Amplitude. *Data Planning Playbook* | Oficial | https://amplitude.com/docs/data/data-planning-playbook |
| 4 | Amplitude. *FAQ & Limits* | Oficial | https://amplitude.com/docs/faq/limits |
| 5 | Google. *HEART Framework for Measuring UX* | Oficial | https://research.google/pubs/the-heart-framework-for-measuring-ux/ |
| 6 | Porter, M. (1996). *What is Strategy?* | Harvard Business Review | https://hbr.org/1996/11/what-is-strategy |

---

*Última verificación: 26/06/2026.*
