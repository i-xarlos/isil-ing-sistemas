# Checklist Práctico: Implementación de Customer Metrics

**Clase 9 | Customer Centricity en Tecnologías de Información**

---

## 🎯 Antes de Comenzar: Planificación

### ☐ Define tu North Star Metric (NSM)

- [ ] Reúne a stakeholders de todas las áreas (Negocio, Producto, Tech, Atención)
- [ ] ¿Cuál es el valor principal que entregas al cliente?
- [ ] ¿Cuál es la métrica que refleja éxito a largo plazo?
- [ ] Documenta la NSM en un lugar visible (Wiki, Confluence, Notion)
- [ ] Alinea todas las decisiones de producto con la NSM

**Ejemplo**: Spotify → NSM = "Horas de escucha mensual"

---

## 📊 Fase 1: Implementar NPS

### ☐ Preparación

- [ ] Define la audiencia: ¿A quién preguntarás?
  - [ ] Todos los clientes
  - [ ] Clientes de un segmento específico
  - [ ] Clientes post-compra
  - [ ] Clientes activos mensualmente

- [ ] Define la frecuencia: ¿Cuándo preguntar?
  - [ ] Trimestral (recomendado para empresas grandes)
  - [ ] Post-evento importante (compra, soporte)
  - [ ] No más de 1-2 veces al mes (evita fatiga)

- [ ] Elige herramienta de encuesta
  - [ ] Typeform, SurveyMonkey, Qualtrics, Delighted
  - [ ] O encuestas en-app (Apptentive, Pendo)

### ☐ Ejecución

- [ ] Envía pregunta core: "Del 1 al 10, ¿qué tan probable es que recomiende nuestro [producto/empresa] a amigos o colegas?"
- [ ] Añade pregunta de seguimiento abierta: "¿Por qué diste esta calificación?"
- [ ] Realiza encuesta (mínimo 2 semanas, máximo 1 mes)
- [ ] Recopila mínimo 50-100 respuestas para primer ciclo

### ☐ Análisis

- [ ] Calcula NPS: `% Promotores (9-10) - % Detractores (0-6)`
- [ ] Documenta puntaje base
- [ ] Categoriza respuestas abiertas por tema
- [ ] Identifica los 3-5 temas principales en comentarios

### ☐ Acción Inmediata

- [ ] **Contacta detractores directamente** (en los siguientes 3 días)
  - [ ] Email personalizado con contexto
  - [ ] Explica que tomaste en serio su feedback
  - [ ] Comparte plan de acción específico
  - [ ] Invítalos a participar en solución
  
- [ ] Documenta historias de clientes clave
- [ ] Comparte resultados con toda la empresa
- [ ] Establece meta de mejora para próximo ciclo

---

## 😊 Fase 2: Implementar CSAT

### ☐ Preparación

- [ ] Identifica momentos críticos para CSAT
  - [ ] Post-compra (durante o 1 día después)
  - [ ] Post-soporte (después de resolver ticket)
  - [ ] Post-nueva-funcionalidad (primera interacción)
  - [ ] Post-actualización-mayor (onboarding completado)

- [ ] Define escala (recomendado 1-5)
- [ ] Elige herramienta
  - [ ] In-app surveys (Pendo, Apptentive, Fullstory)
  - [ ] Email surveys (Typeform, SurveyMonkey)
  - [ ] Chat surveys (Intercom, Drift)

### ☐ Ejecución

- [ ] Pregunta core: "Del 1 al 5, ¿qué tan satisfecho estás con [experiencia/funcionalidad/soporte]?"
- [ ] Pregunta cualitativa: "¿Por qué diste esta calificación?"
- [ ] Optional: "¿Qué podríamos hacer para mejorar?"
- [ ] **Tiempo**: Pregunta inmediatamente después de la interacción
- [ ] **Duración**: Objetivo <30 segundos para completar

### ☐ Análisis

- [ ] Calcula promedio CSAT
- [ ] Documenta distribución (% por calificación)
- [ ] Agrupa comentarios por tema
- [ ] Compara CSAT por tipo de interacción (soporte vs. compra vs. producto)
- [ ] Identifica patrones negativos

### ☐ Acción Inmediata

- [ ] **Contacta a clientes insatisfechos** (CSAT 1-2)
  - [ ] Entiende qué salió mal
  - [ ] Ofrece solución o compensación
  - [ ] Documenta lecciones aprendidas

- [ ] **Aprende de satisfechos** (CSAT 4-5)
  - [ ] ¿Qué hicieron bien?
  - [ ] ¿Qué pueden replicar en otros flujos?

---

## ⚡ Fase 3: Implementar CES

### ☐ Preparación

- [ ] Identifica tareas críticas en tu producto
  - [ ] Onboarding
  - [ ] Checkout/Compra
  - [ ] Feature principal
  - [ ] Cancelación/Offboarding
  - [ ] Solicitud de soporte

- [ ] Elige herramienta
  - [ ] In-app surveys (recomendado para CES)
  - [ ] Post-task surveys
  - [ ] Microsurveys en modal

### ☐ Ejecución

- [ ] Pregunta core: "¿Qué tan fácil fue para usted [completar la tarea]?"
- [ ] Escala sugerida: 1-5 o 1-7
- [ ] **Timing**: Inmediatamente después de completar la tarea
- [ ] **Ubicación**: In-app si es posible (mayor respuesta)
- [ ] Optional: "¿Qué podríamos hacer para facilitar esto?"

### ☐ Análisis

- [ ] Calcula CES promedio
- [ ] Agrupa por nivel (fácil, neutral, difícil)
- [ ] Compara CES por tarea específica
- [ ] Identifica cuello de botella (dónde es más difícil)
- [ ] Corrobora con comentarios abiertos

### ☐ Acción Inmediata

- [ ] **Rediseña flujos con CES bajo** (1-2)
  - [ ] Mapea pasos actuales
  - [ ] Simplifica: ¿qué pasos son innecesarios?
  - [ ] Experimenta con flujo mejorado
  - [ ] Re-mide CES en nuevo flujo

- [ ] **A/B Test**: Flujo actual vs. flujo propuesto
  - [ ] 50% usuarios → flujo A
  - [ ] 50% usuarios → flujo B
  - [ ] Mide CES en ambos durante 2 semanas
  - [ ] Implementa ganador

---

## 🔄 Fase 4: Integración Continua

### ☐ Ciclo Mensual

- [ ] **Semana 1**: Recopila datos (NPS, CSAT, CES)
- [ ] **Semana 2**: Análisis y extracción de insights
- [ ] **Semana 3**: Contacta clientes clave (promotores + detractores)
- [ ] **Semana 4**: Planning de mejoras + feedback a equipos

### ☐ Dashboard de Monitoreo

- [ ] Crea dashboard visible para toda la empresa
  - [ ] NPS actual + tendencia (meta vs. real)
  - [ ] CSAT por tipo de interacción
  - [ ] CES por tarea
  - [ ] Comentarios más comunes (positivos y negativos)
  - [ ] Acciones en progreso

- [ ] Herramientas recomendadas
  - [ ] Tableau, Looker, Mixpanel (dashboards personalizados)
  - [ ] Sprinklr, Qualtrics (plataformas de experiencia)
  - [ ] Notion, Airtable (simple y collaborative)

### ☐ Comunicación Interna

- [ ] **Monthly Metrics Review**
  - [ ] All-hands meeting: 15 minutos
  - [ ] Comparte 3 insights clave
  - [ ] Destaca 1 mejora basada en feedback
  - [ ] Celebra progreso

- [ ] **Quarterly Business Review (QBR)**
  - [ ] Deep dive en tendencias
  - [ ] Análisis segmentado por cliente/región/producto
  - [ ] Planificación de grandes mejoras

### ☐ Escalation Process

- [ ] Define escalation para métricas muy bajas
  - [ ] CSAT < 50% → urgent review
  - [ ] NPS < 0 → crisis mode
  - [ ] CES > 4 (escala 1-5) → rediseño necesario

---

## 🚀 Fase 5: Mejora Continua

### ☐ Feedback Loop

- [ ] Recopila → Analiza → Actúa → Mide → Repite
- [ ] Asigna owner por métrica
  - [ ] NPS: Head of Product o CEO
  - [ ] CSAT: VP Customer Success
  - [ ] CES: Lead UX o Product Designer

### ☐ Experimentos Basados en Métricas

- [ ] Para cada métrica baja, diseña 1-2 experimentos
  - [ ] ¿Qué hipótesis explicaría la baja métrica?
  - [ ] ¿Cómo testearía esa hipótesis?
  - [ ] ¿Cómo mediría mejora?

### ☐ Revisión Trimestral

- [ ] Compara métricas: Q1 vs. Q2 vs. Q3 vs. Q4
- [ ] ¿Tendencia positiva o negativa?
- [ ] ¿Qué cambios en producto impactaron?
- [ ] ¿Qué acciones fueron efectivas?
- [ ] Plan para próximo trimestre

---

## ⚠️ Mitos que Debes Evitar

### ❌ "Buen NPS = Producto perfecto"

**Realidad**: NPS mide lealtad a la EMPRESA (producto + marca + servicio). Un buen NPS puede esconder problemas en UX si no lo combinas con CSAT y CES.

**Acción**: Siempre interpreta NPS junto con CSAT y CES.

---

### ❌ "Si vendo más después del release = fue exitoso"

**Realidad**: Muchos factores afectan ventas (marketing, temporada, competencia). No confundas correlación con causalidad.

**Acción**: Mide CSAT y CES ANTES y DESPUÉS del release. Compara tendencias.

---

### ❌ "Hago encuestas todos los días"

**Realidad**: Cansancio del cliente. Las respuestas se vuelven automáticas y no reflejan realidad.

**Acción**: Encuestas en momentos específicos, no constantemente.

---

### ❌ "Ignoro comentarios negativos"

**Realidad**: Ignorar feedback = perder oportunidad de convertir detractores en promotores.

**Acción**: Contacta detractores en 48-72 horas. Muestra que escuchas.

---

## 📋 Checklist Pre-Launch

Antes de lanzar cualquier nueva funcionalidad:

- [ ] ¿Existe NSM clara?
- [ ] ¿Cómo esta feature afecta la NSM?
- [ ] ¿He definido métrica de éxito (CES, CSAT)?
- [ ] ¿Tengo baseline (métrica antes del cambio)?
- [ ] ¿Puedo hacer A/B test?
- [ ] ¿Tengo plan para recopilar feedback post-launch?
- [ ] ¿Sé a quién contactar si las métricas bajan?
- [ ] ¿Tengo 2-3 acciones alternativas si no funciona?

---

## 📚 Recursos Recomendados

### Libros
- **Fred Reichheld** - "The Ultimate Question" (Origen del NPS)
- **Clayton Christensen** - "Jobs to be Done" (Contexto de CSAT/CES)

### Herramientas
- **Delighted.com** - NPS automático
- **Typeform.com** - Surveys bonitas y fáciles
- **Pendo.com** - In-app surveys + analytics
- **Tableau/Looker** - Dashboards avanzados

### Blogs
- ProductTank.com
- ProductCompass.pm
- Reforge.com (cursos online)

---

## 🎯 Primeros 30 Días: Plan de Acción Rápida

### Semana 1
- [ ] Reúne stakeholders y define NSM
- [ ] Elige herramientas para NPS y CSAT
- [ ] Prepara encuesta NPS básica

### Semana 2
- [ ] Lanza encuesta NPS (target: 50-100 respuestas)
- [ ] Implementa CSAT en 1 flujo crítico (ej: checkout)
- [ ] Documenta baseline de ambas

### Semana 3
- [ ] Analiza primeros resultados de NPS
- [ ] **Contacta 5 detractores y 5 promotores** (aprender)
- [ ] Implementa CES en otra tarea crítica

### Semana 4
- [ ] Documenta todos los insights
- [ ] Presenta resultados a empresa
- [ ] Define 2-3 mejoras prioritarias para próximo mes
- [ ] **Celebra el inicio del viaje customer-centric**

---

**Última actualización**: Clase 9 | 2026-1  
**Curso**: Customer Centricity en Tecnologías de Información
