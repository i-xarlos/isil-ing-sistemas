# Customer Metrics en el Entorno Digital

**Clase 9 | Customer Centricity en Tecnologías de Información**

---

## Propósito de esta clase

Después de diseñar soluciones centradas en el cliente, es fundamental medir cuán efectivo fue el esfuerzo. Esta clase explora cómo monitorear el éxito de productos digitales a través de métricas específicas que conectan la experiencia del cliente con los resultados del negocio.

---

## 1. La cadena de valor: Métricas de negocio y customer metrics

### ¿De qué hablamos?

Una empresa funciona con dos tipos de métricas que **están directamente relacionadas**:

- **Business Metrics**: Ventas, utilidad, ingreso recurrente anual (ARR), churn, costo de adquisición (CAC)
- **Customer Metrics**: NPS, CSAT, CES, lealtad, satisfacción

**La realidad**: No todas las empresas tienen claras estas métricas, pero puedes darte cuenta por las decisiones que toman.

### Impacto directo: De Customer Metrics a Business Metrics

```mermaid
graph TD
    A["🎯 Experiencia del Cliente<br/>NPS, CSAT, CES"] -->|Impacto Directo| B["💼 Métricas de Negocio<br/>Ventas, ARR, Utilidad"]
    C["📊 Lealtad del Cliente"] -->|Genera| D["🔄 Recomendaciones<br/>& Referrals"]
    D -->|Reduce| E["💰 Costo de Adquisición<br/>CAC"]
    E -->|Mejora| B
    F["🛑 Churn Reducido"] -->|Impacta| G["📈 Ingresos<br/>Recurrentes"]
    A -->|Determina| F
    G -->|Contribuye a| B
    
    style A fill:#4A90E2,stroke:#2E5C8A,color:#fff
    style B fill:#F5A623,stroke:#C17E1B,color:#fff
    style C fill:#7ED321,stroke:#5AA81A,color:#fff
    style F fill:#FF6B6B,stroke:#C92A2A,color:#fff
```

### North Star Metric (NSM)

Es el faro de toda la organización. Define qué éxito significa para tu empresa.

**Definición**: Métrica única que refleja el valor principal que el cliente obtiene del producto y que la empresa identifica como motor de crecimiento a largo plazo.

**Características**:
- Debe reflejar el esfuerzo de TODAS las áreas (negocio, desarrollo, diseño, atención)
- Difícil de definir porque afecta toda la dirección estratégica
- Guía la priorización de todas las decisiones

```mermaid
graph LR
    A["🌟 North Star Metric<br/>(NSM)"]
    A -->|Guía| B["Product<br/>Development"]
    A -->|Guía| C["Marketing &<br/>Growth"]
    A -->|Guía| D["Customer<br/>Success"]
    A -->|Guía| E["Technology &<br/>Operations"]
    
    B & C & D & E -->|Todas las áreas<br/>se alinean| A
    
    style A fill:#FFD700,stroke:#B8860B,color:#000
    style B fill:#4A90E2,stroke:#2E5C8A,color:#fff
    style C fill:#7ED321,stroke:#5AA81A,color:#fff
    style D fill:#FF6B6B,stroke:#C92A2A,color:#fff
    style E fill:#A28BFA,stroke:#7C3AED,color:#fff
```

### Relación entre Customer Metrics y Business Metrics

**Conexión clave**: Ninguna empresa puede sobrevivir de forma sostenible teniendo malas métricas de cliente. El mercado actual es transparente y viral: malos clientes = mala reputación = fuga a competidores.

---

## 2. Indicadores principales: NPS, CSAT, CES

### Net Promoter Score (NPS)

**La pregunta**: Del 1 al 10, ¿qué tan probable es que recomiende nuestro producto a amigos o familiares?

**Cómo se calcula**:
```
NPS = % Promotores - % Detractores

Promotores (9-10) = Clientes leales que recomiendan
Neutros (7-8)     = Satisfechos pero sin lealtad
Detractores (0-6) = Insatisfechos, riesgo de fuga
```

**Interpretación**:
- **Cercano a 100%**: Excelente, abundancia de promotores
- **≥ 0**: Equilibrio entre promotores y detractores
- **< 0**: Problema grave, hay más detractores que promotores

```mermaid
graph TD
    A["Del 1 al 10<br/>¿Qué tan probable recomendar?"]
    A --> B["9-10: Promotores"]
    A --> C["7-8: Neutros"]
    A --> D["0-6: Detractores"]
    
    B -->|Leales, recomiendan| E["Incrementan:<br/>Referrals & LTV"]
    C -->|Satisfechos pero sin<br/>compromiso| F["Oportunidad<br/>de conversión"]
    D -->|Insatisfechos, riesgo| G["Riesgo de Churn<br/>& Mala reputación"]
    
    H["NPS = % Promotores - % Detractores"]
    
    style A fill:#4A90E2,stroke:#2E5C8A,color:#fff
    style B fill:#7ED321,stroke:#5AA81A,color:#fff
    style C fill:#F5A623,stroke:#C17E1B,color:#fff
    style D fill:#FF6B6B,stroke:#C92A2A,color:#fff
    style E fill:#7ED321,stroke:#5AA81A,color:#fff
    style F fill:#F5A623,stroke:#C17E1B,color:#fff
    style G fill:#FF6B6B,stroke:#C92A2A,color:#fff
    style H fill:#E8E8E8,stroke:#999,color:#000
```

**Preguntas de seguimiento** (dependiendo de la respuesta):
- **Promotores**: ¿Qué podemos hacer para mantener su satisfacción? ¿Qué le gusta más?
- **Neutros**: ¿Qué nos falta para que nos recomiende?
- **Detractores**: ¿Qué problemas tuvo? ¿Qué podríamos mejorar?

---

### Customer Satisfaction Score (CSAT)

**La pregunta**: Del 1 al 5, ¿qué tan satisfecho estás con nuestro producto/servicio?

**Cuándo se usa**: Directamente después de que el cliente use el producto o interactúe con un flujo.

**Interpretación**:
- **70-100%**: Producto satisfaciendo el mercado
- **10-70%**: Rango típico (presencia de insatisfechos)
- **< 10%**: Crisis, casi nadie satisfecho

```mermaid
graph TD
    A["Del 1 al 5<br/>¿Qué tan satisfecho con esta experiencia?"]
    A -->|Momento clave| B["Post-Compra"]
    A -->|Momento clave| C["Post-Soporte"]
    A -->|Momento clave| D["Post-Interacción<br/>con Flujo"]
    
    B & C & D -->|Genera| E["Satisfacción Puntual<br/>de Funcionalidades"]
    E --> F["Identifica áreas<br/>de mejora"]
    
    G["Interpretación:<br/>70-100%: Bueno | 10-70%: Típico | <10%: Crisis"]
    
    style A fill:#4A90E2,stroke:#2E5C8A,color:#fff
    style B fill:#7ED321,stroke:#5AA81A,color:#fff
    style C fill:#7ED321,stroke:#5AA81A,color:#fff
    style D fill:#7ED321,stroke:#5AA81A,color:#fff
    style E fill:#F5A623,stroke:#C17E1B,color:#fff
    style F fill:#A28BFA,stroke:#7C3AED,color:#fff
    style G fill:#E8E8E8,stroke:#999,color:#000
```

**Preguntas de seguimiento**:
- **General**: ¿Por qué nos dio esta calificación?
- **Promotores**: ¿Qué podríamos mejorar aún más?
- **Neutros**: ¿Qué haría más satisfactoria su próxima compra?
- **Detractores**: ¿Qué cambios sugeriría?

---

### Customer Effort Score (CES)

**La pregunta**: ¿Qué tan fácil fue para usted realizar esta tarea?

**Por qué importa**: Los clientes en 2026 no toleran procesos complejos. Mayor facilidad = mayor lealtad.

**Interpretación**:
- **4-5**: Muy bueno, no requiere inversión urgente
- **2-4**: Oportunidades claras de mejora en UX
- **0-2**: Necesario rediseño del flujo completo

```mermaid
graph TD
    A["¿Qué tan fácil fue<br/>realizar esta tarea?"]
    A --> B["4-5: Muy Fácil"]
    A --> C["3: Neutral"]
    A --> D["1-2: Muy Difícil"]
    
    B -->|No requiere<br/>inversión urgente| E["Mantener"]
    C -->|Oportunidades<br/>de mejora UX| F["Optimizar"]
    D -->|Necesario<br/>rediseño completo| G["Rediseñar"]
    
    E & F & G -->|Impacta| H["Mayor Lealtad<br/>& Retención"]
    
    style A fill:#4A90E2,stroke:#2E5C8A,color:#fff
    style B fill:#7ED321,stroke:#5AA81A,color:#fff
    style C fill:#F5A623,stroke:#C17E1B,color:#fff
    style D fill:#FF6B6B,stroke:#C92A2A,color:#fff
    style H fill:#7ED321,stroke:#5AA81A,color:#fff
```

**Preguntas de seguimiento**:
- **Altas (4-5)**: ¿Qué aspectos encontró fáciles? ¿Algo para destacar?
- **Neutra (3)**: ¿Cómo lo hacemos más sencillo? ¿Qué paso fue innecesario?
- **Bajas (1-2)**: ¿Qué obstáculos encontró? ¿Cómo simplificar?

---

### Comparativa de los 3 Indicadores Principales

```mermaid
graph LR
    A["NPS"]
    B["CSAT"]
    C["CES"]
    
    A -->|Mide| A1["Lealtad General<br/>a la Empresa"]
    B -->|Mide| B1["Satisfacción<br/>en Interacción Puntual"]
    C -->|Mide| C1["Facilidad de<br/>Uso del Flujo"]
    
    A -->|Pregunta| A2["¿Qué tan probable<br/>recomendar?"]
    B -->|Pregunta| B2["¿Qué tan satisfecho<br/>con esto?"]
    C -->|Pregunta| C2["¿Qué tan fácil<br/>fue esto?"]
    
    A -->|Timing| A3["Post-relación<br/>o periódicamente"]
    B -->|Timing| B3["Post-compra<br/>o interacción"]
    C -->|Timing| C3["Post-tarea<br/>específica"]
    
    style A fill:#4A90E2,stroke:#2E5C8A,color:#fff
    style B fill:#F5A623,stroke:#C17E1B,color:#fff
    style C fill:#7ED321,stroke:#5AA81A,color:#fff
    style A1 fill:#4A90E2,stroke:#2E5C8A,color:#fff
    style B1 fill:#F5A623,stroke:#C17E1B,color:#fff
    style C1 fill:#7ED321,stroke:#5AA81A,color:#fff
```

---

## 3. Integración de métricas en el proceso de diseño

### Discovery & Research

Usa NPS, CSAT y CES para **identificar oportunidades de mejora**, no solo para medir lo que ya existe.

**Ejemplos de uso**:
- Alto CES + alto esfuerzo → prioridad máxima
- Comentarios repetidos sobre una funcionalidad en NPS detractores → insights para redesign
- Patrones en CES bajo → rediseño de flujo completo

### Delivery y Mejora Continua

Durante el lanzamiento (especialmente CSAT y CES) se pueden:
- Experimentar con diferentes flujos
- Medir mejoras iterativas
- Tomar insights de clientes para evolucionar la UX

```mermaid
graph LR
    A["🔍 Discovery"] -->|NPS, CSAT, CES<br/>comentarios| B["Insights &<br/>Oportunidades"]
    B -->|Identifica| C["🎨 Design"]
    C -->|Experimenta con| D["Diferentes Flujos"]
    D -->|Mide| E["CSAT, CES<br/>por Flujo"]
    
    E -->|Ganador| F["🚀 Development"]
    F -->|Lanzamiento| G["📊 Delivery"]
    
    G -->|NPS, CSAT, CES<br/>post-launch| H["Feedback Loop"]
    H -->|Mejora| A
    
    style A fill:#4A90E2,stroke:#2E5C8A,color:#fff
    style B fill:#F5A623,stroke:#C17E1B,color:#fff
    style C fill:#A28BFA,stroke:#7C3AED,color:#fff
    style D fill:#7ED321,stroke:#5AA81A,color:#fff
    style E fill:#F5A623,stroke:#C17E1B,color:#fff
    style F fill:#FF6B6B,stroke:#C92A2A,color:#fff
    style G fill:#4A90E2,stroke:#2E5C8A,color:#fff
    style H fill:#7ED321,stroke:#5AA81A,color:#fff
```

### Experimentación A/B con Métricas

```mermaid
graph TD
    A["Flujo Actual"]
    B["Flujo Propuesto"]
    
    A -->|Medir| C["CSAT: 65%<br/>CES: 3.2"]
    B -->|Medir| D["CSAT: 78%<br/>CES: 4.1"]
    
    C & D -->|Comparar| E{"¿Flujo Propuesto<br/>mejor?"}
    
    E -->|SÍ| F["Implementar<br/>en 100%"]
    E -->|NO| G["Iterar &<br/>Experimentar"]
    
    G -->|Nuevo test| A
    F -->|Celebrar| H["Mejora Validada"]
    
    style A fill:#4A90E2,stroke:#2E5C8A,color:#fff
    style B fill:#4A90E2,stroke:#2E5C8A,color:#fff
    style C fill:#F5A623,stroke:#C17E1B,color:#fff
    style D fill:#7ED321,stroke:#5AA81A,color:#fff
    style E fill:#E8E8E8,stroke:#999,color:#000
    style F fill:#7ED321,stroke:#5AA81A,color:#fff
    style G fill:#FF6B6B,stroke:#C92A2A,color:#fff
    style H fill:#7ED321,stroke:#5AA81A,color:#fff
```

---

## 4. Ciclo de Mejora Continua

```mermaid
graph TD
    A["📊 Recopilar Métricas<br/>NPS, CSAT, CES"]
    A -->|Análisis| B["💭 Identificar Patrones<br/>& Problemas"]
    B -->|Filtrar| C["🎯 Contactar Clientes<br/>Detractores"]
    C -->|Comunicar| D["📢 Plan de Acción<br/>Específico"]
    D -->|Involucrar| E["👥 Hacer partícipes<br/>en solución"]
    E -->|Implementar| F["⚙️ Mejoras en<br/>Producto/Flujo"]
    F -->|Validar| G["✅ Re-medir<br/>Métricas"]
    G -->|Mejora visible| H["🎉 Convertir detractores<br/>en promotores"]
    
    style A fill:#4A90E2,stroke:#2E5C8A,color:#fff
    style B fill:#F5A623,stroke:#C17E1B,color:#fff
    style C fill:#A28BFA,stroke:#7C3AED,color:#fff
    style D fill:#7ED321,stroke:#5AA81A,color:#fff
    style E fill:#7ED321,stroke:#5AA81A,color:#fff
    style F fill:#FF6B6B,stroke:#C92A2A,color:#fff
    style G fill:#4A90E2,stroke:#2E5C8A,color:#fff
    style H fill:#7ED321,stroke:#5AA81A,color:#fff
```

---

## 5. Mitos comunes (y la verdad)

### ❌ Mito 1: Buen NPS = Producto excelente

**Verdad**: NPS mide lealtad a la EMPRESA, no solo al producto. Incluye:
- Atención al cliente
- Experiencia post-venta
- Marca y reputación
- El producto es solo UN factor

### ❌ Mito 2: Si vendo más después de un release = fue exitoso

**Verdad**: Hay muchos factores en juego. Debe medirse cada release con:
- CES específico para ese flujo
- CSAT sobre la nueva funcionalidad
- Impacto directo en el producto, no confundir con marketing o promoción

### ❌ Mito 3: Hacer encuestas todos los días

**Verdad**: Los clientes se aburren y dan respuestas "automáticas". Mejor:
- Hacer preguntas en momentos específicos
- Después de usar un flujo o tarea relevante
- Cuando TÚ necesites tomar una decisión

---

## 6. Buenas prácticas en implementación

### 📌 Práctica 1: Contactar directamente a detractores

No solo observes en un dashboard. **Contacta a los clientes que respondieron como detractores o con baja satisfacción**.

Cuéntales:
- Que tomaste en serio su feedback
- Cuál es el plan de acción específico
- **Hazlos partícipes**: invítalos a probar la mejora

**Efecto**: Conviertes un detractor en promotor, mejoras lealtad y demuestras que escuchas.

### 📌 Práctica 2: Usar métricas para tomar ACCIONES

Las métricas no son solo números para un dashboard. Deben:
- Identificar problemas específicos
- Guiar priorización de trabajo
- Validar que los cambios funcionaron

### 📌 Práctica 3: Combinar cualitativo con cuantitativo

```mermaid
graph TD
    A["Métrica Cuantitativa"]
    B["NPS: 42<br/>CSAT: 68%<br/>CES: 3.5"]
    
    C["Métrica Cualitativa"]
    D["'El checkout es confuso'<br/>'La app se cuelga'<br/>'Buen servicio post-venta'"]
    
    A --> B
    C --> D
    
    B & D -->|Se complementan| E["Visión 360°<br/>del Cliente"]
    
    E -->|Permite| F["Tomar decisiones<br/>fundamentadas"]
    
    style B fill:#4A90E2,stroke:#2E5C8A,color:#fff
    style D fill:#A28BFA,stroke:#7C3AED,color:#fff
    style E fill:#7ED321,stroke:#5AA81A,color:#fff
    style F fill:#F5A623,stroke:#C17E1B,color:#fff
```

Los comentarios te dicen EL QUÉ y EL POR QUÉ, los números te confirman LA ESCALA.

---

## 7. Priorización: Matriz de Effort vs. Impact

```mermaid
graph TD
    A["Baja Importancia<br/>Bajo Esfuerzo<br/>❌ Ignorar"]
    B["Alta Importancia<br/>Bajo Esfuerzo<br/>✅ HACER YA"]
    C["Baja Importancia<br/>Alto Esfuerzo<br/>❌ No vale la pena"]
    D["Alta Importancia<br/>Alto Esfuerzo<br/>⏳ Planificar"]
    
    style B fill:#7ED321,stroke:#5AA81A,color:#fff
    style D fill:#F5A623,stroke:#C17E1B,color:#fff
    style A fill:#999,stroke:#666,color:#fff
    style C fill:#FF6B6B,stroke:#C92A2A,color:#fff
```

---

## 8. Caso de estudio: El costo de ignorar métricas

### American Airlines (1980s) y Viva Air (2022-2023)

```mermaid
graph TD
    A["Problema Inicial:<br/>Overbooking"]
    B["Impacto en Cliente:<br/>Alto CES, Bajo NPS"]
    C["Ignorado: Sin acción"]
    D["Resultado:<br/>Masiva pérdida de clientes"]
    E["Reputación Destruida"]
    F["Crisis empresarial"]
    
    A --> B
    B --> C
    C --> D
    D --> E
    E --> F
    
    style A fill:#FF6B6B,stroke:#C92A2A,color:#fff
    style B fill:#FF6B6B,stroke:#C92A2A,color:#fff
    style C fill:#FF6B6B,stroke:#C92A2A,color:#fff
    style D fill:#FF6B6B,stroke:#C92A2A,color:#fff
    style E fill:#FF6B6B,stroke:#C92A2A,color:#fff
    style F fill:#8B0000,stroke:#660000,color:#fff
```

### American Airlines (1980s)

Crisis masiva por **overbooking** (vender más asientos de los disponibles). Miles de clientes migraron a competidores. El daño a la marca fue irreversible durante años.

### Viva Air (Colombia y Perú, 2022-2023)

Cerró operaciones por:
- Overbooking sistemático
- Cambios de vuelos constantes
- Pésimo NPS y CES
- Clientes migrados a Latam, LATAM y otras

**Lección**: Vender barato pero sacrificar experiencia = colapso empresarial. Las métricas de cliente lo hubieran advertido temprano.

---

## 9. Conexiones con otros temas del curso

### Design Thinking + Customer Metrics

Design Thinking te diseña la solución → Customer Metrics te dice si la solución funciona realmente en el mercado.

### Jobs to be Done (JTBD) + Indicadores

JTBD define QUÉ necesita el cliente → CES mide SI nuestro flujo lo hace "fácil" de lograr → CSAT mide SI estamos entregando valor.

### Customer Centricity Holística

La clase 9 cierra el ciclo:
1. Descubrimiento (JTBD, Design Thinking)
2. Construcción (Flujos centrados en usuario)
3. **Medición (NPS, CSAT, CES)** ← Aquí estamos
4. Mejora continua (Loops de feedback)

---

## 10. Conclusiones clave

✅ **Las métricas de negocio dependen directamente de las métricas de cliente**

✅ **NPS mide lealtad, CSAT mide satisfacción puntual, CES mide facilidad**

✅ **Las métricas deben llevar a ACCIONES, no solo a dashboards**

✅ **La cualidad (comentarios) es tan importante como la cantidad (números)**

✅ **Contactar detractores directamente es una buena práctica que convierte**

✅ **Ninguna empresa moderna sobrevive con malas métricas de cliente**

---

## 11. Glosario de términos

### A/B Testing
Metodología de experimentación donde se prueban dos variantes (A y B) de un flujo o funcionalidad simultáneamente, midiendo métricas como CSAT y CES para determinar cuál es más efectiva.

### ARR (Annual Recurring Revenue)
Ingreso anual recurrente. Métrica de negocio que mide el ingreso predecible anual generado por clientes con suscripciones o contratos recurrentes.

### Baseline
Línea base o valor inicial de una métrica. Se captura antes de implementar cambios para medir el impacto real de las mejoras.

### Benchmarking
Proceso de comparar tu rendimiento en métricas (NPS, CSAT, CES) contra competidores o estándares de la industria.

### CAC (Customer Acquisition Cost)
Costo de adquisición de cliente. Métrica de negocio que mide cuánto dinero se gasta para adquirir un nuevo cliente.

### CES (Customer Effort Score)
Indicador que mide qué tan fácil fue para un cliente realizar una tarea específica en tu producto. Escala típica: 1-5.

### Churn
Tasa de deserción de clientes. Porcentaje de clientes que dejan de usar el producto o servicio en un período específico.

### CSAT (Customer Satisfaction Score)
Indicador que mide la satisfacción del cliente con una interacción específica. Pregunta: "¿Qué tan satisfecho estás?" Escala: 1-5.

### Customer Centricity
Filosofía empresarial que coloca al cliente en el centro de todas las decisiones, procesos y diseños. Es el pilar de este curso.

### Customer Metrics
Conjunto de indicadores que miden la experiencia, satisfacción y lealtad del cliente (NPS, CSAT, CES).

### Detractores
Clientes con NPS bajo (0-6). Están insatisfechos y representan riesgo de churn y mala reputación.

### Discovery (Fase de)
Primera fase del proceso de diseño donde se investiga, se recopilan datos y se generan insights sobre clientes y problemas.

### Delivery (Fase de)
Fase de lanzamiento del producto o funcionalidad. Es cuando más se miden CSAT y CES para validar la calidad.

### Feedback Loop
Ciclo continuo de retroalimentación: recopilar datos → analizar → actuar → medir → repetir.

### Insights
Hallazgos profundos derivados del análisis de datos cualitativo y cuantitativo. Permiten tomar decisiones informadas.

### JTBD (Jobs to be Done)
Framework que define el trabajo específico que el cliente necesita realizar. Complementario a NPS/CSAT/CES para entender contexto.

### LTV (Lifetime Value)
Valor de vida útil del cliente. Métrica que calcula el ingreso total que genera un cliente durante toda su relación con la empresa.

### Lealtad
Disposición del cliente a recomendar, volver a comprar y permanecer con la marca. Medida principalmente por NPS.

### Métrica Cuantitativa
Datos numéricos medibles (NPS: 42, CSAT: 68%, CES: 3.5). Proporcionan escala y tendencias.

### Métrica Cualitativa
Datos descriptivos y textuales (comentarios abiertos de clientes). Proporcionan contexto del "por qué".

### Net Promoter Score (NPS)
Indicador de lealtad que mide la probabilidad de que un cliente recomiende la empresa (1-10). Fórmula: % Promotores - % Detractores.

### North Star Metric (NSM)
Métrica única que una empresa identifica como la más importante para el crecimiento a largo plazo. Guía todas las decisiones organizacionales.

### Neutros
Clientes con NPS medio (7-8). Están satisfechos pero sin compromiso. Oportunidad de conversión a promotores.

### Overbooking
Práctica de vender más capacidad de la que se tiene (común en aerolíneas). Causa alto insatisfacción (bajo NPS/CES).

### Post-Launch
Período después de lanzar un producto o funcionalidad. Momento clave para recopilar NPS, CSAT y CES.

### Promotores
Clientes con NPS alto (9-10). Son leales, recomiendan la empresa y generan referrals.

### Rediseño
Proceso de crear una nueva versión de un flujo, funcionalidad o experiencia basado en feedback y análisis de métricas bajas.

### Stakeholder
Persona o grupo interesado en el proyecto (CEO, Product Manager, Developer, Designer, Customer Success).

### UX (User Experience)
Experiencia del usuario. Incluye todo lo que percibe un cliente al interactuar con el producto (facilidad, claridad, satisfacción).

---

## 12. Para profundizar

- **Fuente principal**: Product Compass - The North Star Framework 101
- **Concepto original**: Fred Reichheld - "The Ultimate Question" (libro que introduce NPS)
- **Aplicación práctica**: Experimenta con NPS en un producto que uses, observa cómo responden los clientes a las preguntas de seguimiento

---

**Última actualización**: Clase 9 | 2026-1  
**Curso**: Customer Centricity en Tecnologías de Información  
**Temas relacionados**: Design Thinking, JTBD, Experiencia de Usuario (UX)  
**Glosario**: 30+ términos clave de customer metrics e indicadores de satisfacción
