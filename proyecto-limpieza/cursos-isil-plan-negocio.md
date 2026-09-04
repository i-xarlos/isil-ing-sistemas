# Cursos ISIL y su Aplicación al Plan de Negocio

**Curso:** Integración de Conocimientos (ISIL, 2026-1)  
**Fecha:** 04/09/2026

---

## 1. Visión General

Este documento mapea los 5 cursos del programa ISIL 2026-1 con aplicaciones concretas para el plan de negocio de detergente para lavaplatos D2C (PureDose). Cada curso aporta una perspectiva diferente que, combinada, forma un sistema completo para construir y escalar el negocio.

### Cursos Cubiertos

| # | Curso | Qué aporta al negocio |
|---|---|---|
| 1 | Arquitectura Empresarial | Cómo estructurar el negocio |
| 2 | Dirección Estratégica de Datos | Qué datos importan y cómo gobernarlos |
| 3 | Análisis Estadístico y Data Mining | Cómo encontrar patrones en los datos |
| 4 | Diseño de Soluciones con IA | Qué herramientas de IA resolver qué problemas |
| 5 | Customer Centricity TI | Quién es el cliente y qué necesita |

---

## 2. Arquitectura Empresarial → Estructura del Negocio

### Conceptos Clave del Curso

- 4 Dominios de Arquitectura Empresarial (Negocio, Datos, Aplicaciones, Tecnología)
- TOGAF y ADM (método de desarrollo de arquitectura)
- Business Model Canvas (9 bloques)
- Capability Map (mapa de capacidades)
- Gobernanza y gestión por portfolio

### Aplicación Concreta

#### 4 Dominios de AE para PureDose

| Dominio | Aplicación en PureDose |
|---|---|
| **Negocio** | Procesos de venta, modelo de suscripción, cadenas de valor, pricing |
| **Datos** | Historial de compra, comportamiento de navegación, patrones de recompra |
| **Aplicaciones** | Plataforma e-commerce (Shopify), CRM, email automation, analytics |
| **Tecnología** | Hosting, pasarela de pagos, integración Chit Chats, WhatsApp API |

#### AS-IS vs TO-BE

| Estado | AS-IS (Hoy) | TO-BE (Objetivo) |
|---|---|---|
| Pedidos | Manuales, uno por uno | Automatizados, batch processing |
| Datos | Sin integración | Dashboard en tiempo real |
| Suscripción | No existe | 40% de clientes en suscripción |
| Marketing | Orgánico + boost posts | Funnel completo con email automation |
| Envíos | Chit Chats manual | 3PL automatizado + Amazon FBA |

#### Business Model Canvas — PureDose

| Bloque | Contenido |
|---|---|
| **Socios clave** | Fabricante canadiense, Chit Chats/3PL, Shopify, proveedor de cajas |
| **Actividades clave** | Fabricación, fulfillment, marketing digital, atención al cliente |
| **Recursos clave** | Marca, fórmula, plataforma e-commerce, base de clientes |
| **Propuesta de valor** | Detergente eco en sachets individuales, D2C, sin plástico, $0.42/dosis |
| **Relaciones con clientes** | Suscripción, email personalizado, garantía 30 días, comunidad eco |
| **Canales** | Sitio web, Instagram, TikTok, Google, email, WhatsApp |
| **Segmentos** | Mamás eco (25–40), parejas urbanas (25–35), familias busy (35–55) |
| **Estructura de costos** | COGS $4.75, envío $3–6, marketing $180–705/mes, plataforma $30/mes |
| **Fuentes de ingreso** | Starter Kit $29.99, Refill 30 $14.99, Refill 60 $24.99, Suscripción |

#### Capability Map

| Capacidad | Prioridad | Estado |
|---|---|---|
| E-commerce operations | 🔴 Alta | Activo (Shopify) |
| Digital marketing | 🔴 Alta | Activo (orgánico + pago) |
| Last-mile delivery | 🟡 Media | En desarrollo (Chit Chats → 3PL) |
| Customer service | 🟡 Media | Activo (email + WhatsApp) |
| Data analytics | 🟢 Baja | Pendiente (Año 2) |
| Subscription management | 🔴 Alta | Pendiente (Shopify app) |

---

## 3. Dirección Estratégica de Datos → Datos como Activo

### Conceptos Clave del Curso

- Datos como activo estratégico (rol del CDO)
- Gobernanza de datos y políticas
- Desarrollo de productos con datos (5 fases)
- Gestión de stakeholders
- Framework de KPIs

### Aplicación Concreta

#### Datos como Activo Estratégico

El activo más valioso de PureDose no es el producto — son los **datos de comportamiento del cliente**:

| Dato | Qué revela | Cómo se usa |
|---|---|---|
| Historial de compra | Frecuencia real de recompra | Ajustar suscripción automática |
| Productos comprados | Preferencia de aroma/tamaño | Recomendaciones personalizadas |
| Tiempo en sitio | Qué páginas generan compra | Optimizar landing page |
| Email abierto/clic | Interés por contenido | Segmentar campañas |
| Soporte/contacto | Problemas comunes | Mejorar producto y proceso |
| Navegación abandonada | Dónde se pierde el cliente | Reducir fricción en checkout |

#### Desarrollo de Productos con Datos (5 Fases)

| Fase | Acción en PureDose |
|---|---|
| **1. Empatizar** | Encuestas a 50 compradores de detergente eco: ¿qué buscan? ¿qué odian? |
| **2. Definir** | "Los compradores eco quieren conveniencia sin sacrificar valores" |
| **3. Idear** | Suscripción auto-rellenable, sachets compostables, pack familiar |
| **4. Prototipar** | Landing page con 2 productos + waitlist de 200 emails |
| **5. Validar** | A/B testing: precio $22 vs $25, envío gratis > $39 vs > $49 |

#### Gobernanza de Datos

| Política | Implementación |
|---|---|
| Consentimiento | Checkbox explícito al comprar: "Acepto emails de marketing" |
| Almacenamiento | Shopify + Klaviyo (cumplimiento Canadá/CCPA) |
| Acceso | Solo fundador + VA tienen acceso a datos de clientes |
| Retención | Datos de clientes inactivos > 2 años → eliminación |
| Seguridad | SSL, pagos vía Stripe (PCI DSS compliant) |

#### Framework de KPIs

| KPI | Fórmula | Target Año 1 | Target Año 2 |
|---|---|---|---|
| **CAC** | Gasto marketing / Nuevos clientes | < $15 | < $10 |
| **CLV** | AOV × Compras/año × Retención | $114 | $150 |
| **CLV/CAC** | CLV / CAC | > 3x | > 5x |
| **Tasa recompra** | Clientes recurrentes / Total | > 30% | > 40% |
| **Churn suscripción** | Cancelaciones / Total suscriptores | < 10% | < 7% |
| **NPS** | Promotores - Detractores | > 40 | > 50 |

---

## 4. Análisis Estadístico y Data Mining → Encontrar Patrones

### Conceptos Clave del Curso

- Estadística descriptiva (media, mediana, moda, varianza)
- Análisis Exploratorio de Datos (EDA)
- Clustering (K-Means)
- Reglas de asociación (Apriori)
- Predicción (regresión)

### Aplicación Concreta

#### Estadística Descriptiva del Negocio

| Métrica | Valor actual | Impacto |
|---|---|---|
| AOV promedio | $28.50 | Define threshold para free shipping |
| Mediana tiempo entre compras | 84 días (~3 meses) | Base para frecuencia de suscripción |
| Moda de productos por pedido | 1 (Refill 60) | Oportunidad de upsell a 2 refills |
| Desviación estándar AOV | $8.50 | Hay clientes de $15 y de $50 — segmentar |

#### Clustering de Clientes (K-Means)

Con datos de 6 meses, aplicar K-Means para segmentar:

| Cluster | Comportamiento | Estrategia |
|---|---|---|
| **Suscriptores leales** (25%) | Compra cada 3 meses sin fallar | Email "gracias" + acceso anticipado a nuevos aromas |
| **Compradores promocionales** (35%) | Solo compra con descuento | Email con 15% off en su mes probable de compra |
| **One-time curious** (30%) | Compró una vez, nunca volvió | Email "te extrañamos" + muestra gratis en siguiente compra |
| **High-value bundle** (10%) | Compra 2+ refills cada vez | Pack familiar exclusivo + envío gratis permanente |

#### Reglas de Asociación (Apriori)

Descubrir affinidades de producto:

| Regla | Confianza | Aplicación |
|---|---|---|
| Compra Refill 60 → compra Starter Kit para regalo | 34% | Bundle "Regala PureDose" |
| Compra aroma Cítrico → compra aroma Lavanda después | 52% | "¿Probaste nuestro otro aroma?" |
| Compra en Dic → compra en Ene | 68% | Campaña post-Navidad |
| Compra con envío gratis → compra de nuevo en 90 días | 71% | Free shipping como herramienta de retención |

#### Predicción de Demanda (Regresión)

Modelo para predecir demanda mensual:

```
Demanda = β₀ + β₁(mes) + β₂(marketing) + β₃(temporada) + ε
```

Variables:
- **Mes:** estacionalidad (Navidad = spike, verano = dip)
- **Marketing:** inversión publicitaria del mes anterior
- **Temporada:** vacaciones, back-to-school, Día de la Madre

**Resultado esperado:** Evitar stockouts en Navidad y no sobraproducir en verano.

---

## 5. Diseño de Soluciones con IA → Automatización

### Conceptos Clave del Curso

- Ramas de IA: ML, NLP, Visión por computadora, IA Generativa
- Aprendizaje supervisado, no supervisado, por refuerzo
- Calidad y pre-procesamiento de datos
- Selección de modelos
- IA ética

### Aplicación Concreta

#### NLP para Análisis de Feedback

| Fuente | Qué analizar | Herramienta |
|---|---|---|
| Reseñas Shopify | Sentimiento + temas frecuentes | Python + TextBlob |
| WhatsApp messages | Quejas + solicitudes | clasificación automática |
| Instagram comments | Tendencias + deseos | NLP + keyword extraction |
| Emails soporte | Problemas comunes | Dashboard de temas |

**Ejemplo:** Si 30% de reseñas mencionan "olores fuertes", crear versión "sin fragancia".

#### Motor de Recomendación

| Tipo | Algoritmo | Caso de uso |
|---|---|---|
| **Colaborativo** | "Clientes similares a ti también compraron..." | Cross-sell en checkout |
| **Contenido** | "Basado en tu compra anterior..." | Email post-compra |
| **Asociación** | Apriori rules | Bundles en página de producto |

#### Predicción de Churn

| Variable | Importancia | Acción preventiva |
|---|---|---|
| Días desde última compra | 45% | Email a los 75 días (antes de 84) |
| Número de tickets soporte | 25% | Llamada de seguimiento |
| Uso de descuentos | 15% | Ofrecer valor, no solo precio |
| Apertura de emails | 15% | Cambiar frequency o contenido |

**Resultado:** Cuando el modelo predice >60% probabilidad de churn → email automático con oferta personalizada.

#### IA Generativa para Contenido

| Contenido | Herramienta | Proceso |
|---|---|---|
| Descripciones de producto | Claude/ChatGPT | Prompt → revisión humana → publicar |
| Emails marketing | Claude/ChatGPT | Templates → personalización IA → A/B test |
| Posts sociales | Claude/ChatGPT | Calendario → borrador IA → brand voice check |
| FAQ del sitio | Claude/ChatGPT | Preguntas reales → respuestas IA → verificación |

**Regla:** Todo contenido IA pasa por revisión humana antes de publicar.

---

## 6. Customer Centricity TI → Enfoque en el Cliente

### Conceptos Clave del Curso

- Jobs to be Done (JTBD)
- Design Thinking y prototipado
- Métricas de cliente: NPS, CSAT, CES
- Analytics digital y A/B testing

### Aplicación Concreta

#### Jobs to be Done (JTBD)

| Job Statement | Implicación |
|---|---|
| "Cuando mi lavaplatos se acaba, quiero rellenarlo rápido, para no perder tiempo" | Suscripción auto-reposición |
| "Cuando limpio la cocina, quiero que todo huela bien, para sentir que mi hogar está limpio" | Variedad de aromas |
| "Cuando compro detergente, quiero saber que no daño el planeta, para estar tranquila" | Packaging 100% reciclable |
| "Cuando recibo un paquete, quiero que sea pequeño, para no tener clutter" | Sachets individuales |

#### NPS y CSAT

| Momento | Métrica | Target |
|---|---|---|
| Post-compra (1 semana) | CSAT | > 4.5/5 |
| Post-suscripción (3 meses) | NPS | > 50 |
| Post-soporte | CES | < 2 (fácil) |
| Semestral | NPS | > 40 |

#### A/B Testing Systemático

| Elemento a probar | Variante A | Variante B | Métrica |
|---|---|---|---|
| Precio Starter Kit | $27.99 | $29.99 | Conversión |
| Free shipping threshold | > $39 | > $49 | AOV |
| Email subject | "Tu refill está listo" | "🌿 No te quedes sin detergente" | Open rate |
| Landing hero | Foto producto | Video unboxing | Conversión |
| CTA checkout | "Comprar ahora" | "Unirme a PureDose" | Conversión |

---

## 7. Integración Cruzada: El Sistema Completo

Los 5 cursos forman un sistema integrado. Ejemplo concreto: **Implementar Suscripción Auto-Reposición**.

### Paso 1: Customer Centricity
```
JTBD: "Nunca quiero quedarme sin detergente"
Insight: El cliente no quiere comprar — quiere no pensar en comprar
```

### Paso 2: Arquitectura Empresarial
```
Mapear 4 dominios:
- Negocio: Modelo de suscripción con descuento 10%
- Datos: Patrón de compra por cliente
- Aplicaciones: Shopify subscriptions app + Klaviyo
- Tecnología: Stripe recurring payments + email triggers
```

### Paso 3: Dirección Estratégica de Datos
```
KPIs de suscripción:
- Retención suscripción > 80%
- Duración promedio > 6 meses
- Tasa reactivación > 15%
Dashboard en Shopify + Google Data Studio
```

### Paso 4: Análisis Estadístico
```
Clustering: Identificar qué segmentos son más propensos a suscribir
Regresión: Predecir frecuencia óptima por tipo de hogar
Apriori: Sugerir productos complementarios al renovar
```

### Paso 5: IA
```
Modelo de churn: Predecir quién cancelará → email preventivo
NLP: Analizar razones de cancelación → mejorar producto
Recomendación: "Basado en tu uso, también te gustaría..."
```

### Resultado del Sistema Integrado

| Sin integración | Con integración |
|---|---|
| Suscripción genérica para todos | Frecuencia personalizada por cliente |
| Email genérico "renueva tu refill" | Email con timing optimizado por IA |
| Sin predicción de churn | Retención automática antes de cancelación |
| Sin aprendizaje | Modelo mejora cada mes con más datos |

---

## 8. Resumen: Cursos → Acciones

| Curso | Acción Inmediata (Mes 1–3) | Acción Futura (Mes 6–12) |
|---|---|---|
| **Arquitectura Empresarial** | Completar Business Model Canvas | Documentar TO-GO con roadmap de capacidades |
| **Dirección Estratégica** | Definir KPIs + dashboard básico | Implementar gobernanza de datos completa |
| **Análisis Estadístico** | Calcular métricas base (AOV, frecuencia) | Clustering de clientes + predicción demanda |
| **IA** | Usar IA generativa para contenido | Modelo de churn + recomendación |
| **Customer Centricity** | Encuesta NPS post-compra | A/B testing sistemático + JTBD profundo |

---

*Documento generado: 04/09/2026 | ISIL 2026-1 | Plan de Negocio PureDose*
