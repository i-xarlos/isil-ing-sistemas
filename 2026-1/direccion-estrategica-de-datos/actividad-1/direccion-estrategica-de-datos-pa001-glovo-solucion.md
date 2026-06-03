# Solución: Proceso de Aprendizaje PA001 — Dirección Estratégica de Datos

**Curso:** Dirección Estratégica de Datos (ISIL, 2026-1)  
**Actividad:** PA001  
**Caso de Estudio:** Glovo — Transformación Data-Driven  
**Fecha:** Abril 2026

---

## Contexto del Caso

**Glovo** es una plataforma internacional de delivery que opera en América Latina, Europa y África. Ha experimentado crecimiento acelerado pero enfrenta desafíos críticos que amenazan su competitividad global:

- Baja calidad de datos de clientes (duplicados, incompletos)
- Retrasos en entregas por falta de visibilidad en tiempo real
- Decisiones de marketing poco efectivas (bajo ROI)
- Riesgos regulatorios por manejo inadecuado de datos personales
- Falta de integración entre áreas (operaciones, marketing, finanzas)

La alta dirección ha decidido implementar una **estrategia integral de datos** para mejorar competitividad, optimizar operaciones y crear nuevos modelos de negocio basados en datos.

---

## 1. DIAGNÓSTICO ESTRATÉGICO (4 puntos)

### Identificación de 3 Problemas Clave

#### **Problema 1: Baja Calidad de Datos de Clientes**

**Descripción:**
Glovo tiene bases de datos duplicadas, incompletas e inconsistentes porque:
- Datos recolectados desde múltiples canales (app, web, call center) sin integración.
- Registros duplicados: un cliente puede tener 2-3 perfiles distintos en el sistema.
- Información incompleta: direcciones parciales, teléfonos incorrectos, preferencias vacías.
- Migraciones de sistemas legados mal ejecutadas con datos "sucios".

**Impacto:**

| Área | Impacto |
|------|--------|
| **Operaciones** | Órdenes de entrega con direcciones incorrectas → retardos, devoluciones, insatisfacción del cliente |
| **Marketing** | Segmentación incorrecta → campañas dirigidas a públicos equivocados, bajo retorno de inversión (ROI <5%) |
| **Toma de Decisiones** | Reportes errados. Directivos no saben cuántos clientes reales tiene Glovo ni quiénes son sus clientes de alto valor |

---

#### **Problema 2: Falta de Visibilidad en Tiempo Real de Entregas**

**Descripción:**
- Glovo no tiene visibilidad integrada de sus repartidores ni órdenes. Los datos de ubicación, estado de pedido y disponibilidad de repartidores llegan con retrasos.
- Sistemas legados que no se comunican: app del cliente muestra estado "En Tránsito" hace 30 minutos, pero repartidor aún no salió de la tienda.
- Sin datos en tiempo real, es imposible optimizar rutas, reducir tiempos de entrega ni predecir demanda.

**Impacto:**

| Área | Impacto |
|------|--------|
| **Operaciones** | Entregas lentas y predecibles (promedio 35 min cuando competencia entrega en 20 min). Clientes migran a Rappi o UberEats. Insatisfacción -> reviews negativas |
| **Marketing** | No hay datos para personalizar ofertas (ej: "Compra hoy, entrega en 15 min en tu zona"). Promos genéricas, bajo engagement |
| **Toma de Decisiones** | Gerentes operacionales no saben dónde hay "cuellos de botella" ni cómo mejorar eficiencia de rutas |

---

#### **Problema 3: Riesgos Regulatorios por Manejo Inadecuado de Datos Personales**

**Descripción:**
- Glovo opera en múltiples países (Perú, Colombia, Argentina, España, etc.), cada uno con regulaciones distintas (GDPR en Europa, PDPA en otros).
- Datos de clientes y repartidores almacenados sin protección clara: ubicaciones exactas, teléfonos, direcciones, horarios de trabajo.
- No existe una política clara de **consentimiento** de clientes para usar sus datos.
- Riesgo de **auditoría regulatoria** y multas de millones.

**Impacto:**

| Área | Impacto |
|------|--------|
| **Operaciones** | Paralización de servicios si es hackeado → pérdida total de ingresos. Falta de confianza en repartidores (datos expuestos) |
| **Marketing** | Prohibición de usar datos para publicidad dirigida si no hay consentimiento claro → pérdida de oportunidad de personalización |
| **Toma de Decisiones** | Directorio es demandado y multado por incumplimiento regulatorio. Pérdida de reputación global. |

---

### Síntesis: Cómo Impactan los Tres Problemas

```
Problema 1: Datos de baja calidad
    ↓
  No sé quién es mi cliente real
    ↓
  No puedo segmentar, no puedo personalizar
    ↓
  Marketing inefectivo, perdida de clientes a competencia

Problema 2: Sin visibilidad en tiempo real
    ↓
  No optimizo rutas, las entregas son lentas
    ↓
  Operaciones ineficientes, baja retención
    ↓
  Competencia (Rappi, UberEats) ofrece experiencia mejor

Problema 3: Riesgos regulatorios
    ↓
  Datos no protegidos, sin consentimiento claro
    ↓
  Auditoría, multas, pérdida de confianza
    ↓
  Cierres de servicio en algunos países, daño reputacional
```

**Conclusión del diagnóstico:** Los tres problemas convergen: sin calidad de datos, sin visibilidad en tiempo real y sin cumplimiento regulatorio, Glovo no puede competir ni crecer de forma sostenible.

---

## 2. PROPUESTA DE DIRECCIÓN ESTRATÉGICA DE DATOS (4 puntos)

### Definición: Datos como Activo Estratégico

Para Glovo, los datos deben transformarse de **pasivo operacional** a **activo estratégico**. Esto significa:

1. **Datos de cliente centralizado y limpio:** Un único perfil integrado por cliente con historial de compra, preferencias, ubicaciones frecuentes y comportamiento.

2. **Datos operacionales en tiempo real:** Ubicación de repartidores, estado de pedido, disponibilidad de restaurantes, demanda por zona y hora.

3. **Datos de cumplimiento:** Consentimientos registrados, auditoría de acceso, encriptación de información sensible.

**Propósito:** Convertir estos datos en decisiones rápidas que mejoren:
- Experiencia del cliente (entregas rápidas, ofertas personalizadas).
- Eficiencia operacional (rutas optimizadas, menos tiempo de espera).
- Confianza regulatoria (cumplimiento, seguridad).

---

### Acción 1: Implementar un Data Lake Centralizado con Calidad de Datos

**¿Qué es?**
Un repositorio centralizado que integra datos desde todos los canales (app, web, call center, restaurantes) con un proceso automático de:
- **Deduplicación:** Identificar y fusionar perfiles duplicados (mismo cliente con múltiples registros).
- **Validación:** Verificar que direcciones, teléfonos y emails sean válidos.
- **Enriquecimiento:** Completar campos vacíos usando datos externos (ej: geolocalización).
- **Limpieza continua:** Procesos automatizados que detectan y corrigen anomalías diariamente.

**Implementación (Timeline: 6 meses)**

| Fase | Duración | Actividad | Resultado |
|------|----------|-----------|-----------|
| **1. Auditoría** | 4 semanas | Mapear bases de datos actuales, identificar duplicados, estimar volumen de "datos sucios" | Informe de calidad inicial (~75% limpieza necesaria) |
| **2. Diseño** | 4 semanas | Diseñar arquitectura del data lake, definir estándares de calidad, crear MDM (Master Data Management) | Especificación técnica aprobada |
| **3. Construcción** | 10 semanas | Implementar piping de datos, reglas de validación, interfaces de integración | Data lake funcional con 90%+ calidad |
| **4. Validación** | 4 semanas | Pruebas A/B: comparar decisiones con datos viejos vs. nuevos | Evidencia de mejora en segmentación |

**Beneficios:**
- ✅ Marketing: Segmentación correcta, campañas con ROI >30%.
- ✅ Operaciones: Identificar clientes de alto valor, retener los mejores.
- ✅ Decisiones: Reportes confiables para directorio.

**Costo Estimado:** $800K - $1.2M (infraestructura, software, consultores).

---

### Acción 2: Crear una Estrategia de Datos en Tiempo Real con Visibilidad Integrada

**¿Qué es?**
Un ecosistema de datos que captura y procesa información de operaciones en **tiempo real**:
- Ubicación de repartidores (GPS cada 5 segundos).
- Estado de cada pedido (confirmación, preparación, en tránsito, entregado).
- Disponibilidad de restaurantes (stock de productos, capacidad de preparación).
- Demanda por zona y hora (predicción de picos).

**Arquitectura:**

```
App del Cliente
     ↓
App del Repartidor
     ↓
Sistema de Restaurantes
     ↓
API Gateway (centralizada)
     ↓
Event Stream (Kafka/Pub-Sub) — Procesa miles de eventos/segundo
     ↓
Analytics Engine (en tiempo real)
     ↓
Dashboard operacional — Visibilidad integrada
     ↓
Sistema de optimización de rutas (IA)
```

**Implementación (Timeline: 9 meses)**

| Fase | Duración | Actividad | Resultado |
|------|----------|-----------|-----------|
| **1. Infraestructura** | 6 semanas | Provisionar Kafka/Pub-Sub, bases de datos en tiempo real (ClickHouse, Snowflake) | Capacidad de procesar 100K eventos/segundo |
| **2. Integración** | 8 semanas | Conectar APIs de app, repartidores y restaurantes a event stream | Flujo de datos en vivo desde todas las fuentes |
| **3. Análisis Real-Time** | 6 semanas | Crear pipelines de transformación y agregación de datos | Métricas operacionales actualizadas cada segundo |
| **4. Optimización** | 6 semanas | Desplegar modelo de ML que optimiza rutas en función de ubicaciones, tráfico, tiempo de preparación | Reducción de tiempo promedio de entrega en 20% |

**Beneficios:**
- ✅ Operaciones: Entregas más rápidas (promedio 20 min vs. 35 min). Mejor experiencia del cliente.
- ✅ Marketing: Datos para ofrecer "Entrega en 20 min si compras ahora".
- ✅ Decisiones: Directivos ven en vivo qué está pasando en cada ciudad.

**Costo Estimado:** $1.5M - $2.2M (infraestructura cloud, ingeniería de datos, ML engineers).

---

### Síntesis: Propuesta de Valor

Con estas dos acciones, Glovo pasa de:
- **Hoy:** "Entregamos comida (a veces lentamente, con ofertas genéricas)"
- **Mañana:** "Entregamos experiencia personalizada en 20 minutos, donde quieras, cuando lo necesites"

---

## 3. MODELO DE NEGOCIO BASADO EN DATOS (4 puntos)

### Modelo Innovador: "Glovo Insights" — Monetización de Datos Agregados

#### **¿Qué es?**

Glovo vende acceso a **insights agregados y anonimizados** a restaurantes, marcas y gobiernos locales. Los datos no identifican clientes (cumple regulación), pero revelan patrones de comportamiento valioso.

#### **Productos de Glovo Insights**

**1. Para Restaurantes:**
- **"Heat Map de Demanda":** Análisis de cuándo/dónde los clientes ordenan qué tipo de comida.
  - Ej: "Lunes a viernes 12-13h hay pico de órdenes de comida rápida en la zona de oficinas. Jueves 20-22h domina delivery de sushi y pizzas."
  - Restaurante usa esto para ajustar menú, horarios y promociones.
  - **Precio:** $500-$2K/mes por restaurante.

**2. Para Marcas (CPG):**
- **"Análisis de Competencia en Ruta":** Qué marcas son más ordenadas juntas, en qué hora, en qué zona.
  - Ej: "Coca-Cola se ordena 40% más cuando se ordena pizza. Oportunidad: promoción conjunta."
  - Marca usa esto para diseñar bundles de productos.
  - **Precio:** $5K-$20K/mes por marca.

**3. Para Gobiernos Locales:**
- **"Movilidad Urbana Anónima":** Patrones de desplazamiento agregados de repartidores y clientes sin revelar identidades.
  - Ej: "Zona A tiene 30% más congestión de delivery 18-19h. Recomendación: carriles exclusivos de repartidores."
  - Gobierno usa esto para planificación urbana.
  - **Precio:** $50K-$500K/año por ciudad.

#### **Cómo Genera Valor**

| Stakeholder | Valor |
|-------------|-------|
| **Glovo** | Nueva línea de ingresos recurrente. Margen operacional ~80% (bajo costo de replicar datos). |
| **Restaurantes** | Decisiones de menú basadas en demanda real, no intuición. Aumentan ingresos 15-30%. |
| **Marcas** | Oportunidades de marketing datos-driven. ROI visible en promociones. |
| **Gobiernos** | Información para mejorar infraestructura urbana. Menos congestión. |

#### **Impacto por Área**

- **Operaciones:** Nuevo equipo de analistas (10-15 personas) genera reportes y dashboards.
- **Finanzas:** Ingresos esperados: $50M-$150M/año en mercados maduros (Europa).
- **Legal/Cumplimiento:** Requiere auditoría constante de anonimización. Data Protection Officer supervisa.
- **Negocio:** Diferenciador competitivo vs. Rappi, UberEats (que no monetizan insights).

#### **Riesgos Mitigación**

| Riesgo | Mitigación |
|--------|-----------|
| Clientes creen que Glovo vende sus datos personales | Comunicar claramente: datos son agregados, anónimos, no revelan identidad. Transparencia regulatoria. |
| Competidores copian el modelo | Glovo tiene ventaja: más datos = insights más precisos. Crear exclusividad mediante partnerships. |
| Reguladores cuestionan anonimización | Implementar técnicas criptográficas (differential privacy). Auditoría externa anual. |

---

## 4. ESTRATEGIA DE GOBERNANZA DE DATOS (4 puntos)

### Principios de Gobierno de Datos para Glovo

#### **Principio 1: Data as a Shared Responsibility (Responsabilidad Compartida)**

**Definición:** Cada área de negocio es propietaria de los datos que genera, pero todos son custodios de la calidad.

**Aplicación en Glovo:**
- **Operaciones** es propietario de datos de repartidores y órdenes → responsable de validación en tiempo real.
- **Marketing** es propietario de datos de cliente y segmentación → responsable de consentimiento y precisión.
- **Finanzas** es propietario de datos de transacción → responsable de reconciliación y auditoría.
- **CDO (Chief Data Officer)** coordina y asegura consistencia.

**Beneficio:** Evita que los datos sean "responsabilidad de nadie" y se deterioren. Cada área tiene incentivo de mantenerlos limpios.

---

#### **Principio 2: Transparencia y Compliance Regulatorio**

**Definición:** Todos los datos personales deben estar clasificados, documentados y sujetos a políticas de privacidad claras.

**Aplicación en Glovo:**
- Crear **Data Registry** que cataloga: qué datos se recolectan, para qué, dónde se almacenan, cuánto tiempo, quién puede acceder.
- Implementar **consentimiento granular:** cliente marca: "Usar mis datos para mejorar experiencia", "Usar para publicidad", "Vender a terceros" (separado para cada caso).
- Cumplir con **GDPR** (Europa), **PDPA** (Asia), **LGPD** (Brasil), regulaciones locales.

**Beneficio:** Glovo evita multas regulatorias. Clientes sienten control sobre su información.

---

### Prácticas Clave de Gobierno

#### **Práctica 1: Data Quality Management (DQM)**

**¿Qué es?**
Proceso continuo de medir, monitorear y mejorar la calidad de datos usando métricas objetivas.

**Métricas de calidad en Glovo:**
- **Completitud:** ¿Qué % de registros de cliente tienen teléfono, email y dirección válidos? Meta: >99%.
- **Consistencia:** ¿Los datos del mismo cliente en múltiples sistemas coinciden? Meta: 100%.
- **Precisión:** ¿Las direcciones entregan-sin-error? Meta: >98%.
- **Oportunidad:** ¿Los datos se actualizan cuando el cliente cambia de dirección? Meta: <24h.

**Gobernanza:**
- Cada área reporta métricas mensualmente.
- Si caen bajo la meta, se investiga y se corrige.
- Responsable designado por área (ej: "Gerente de Calidad de Datos de Operaciones").

**Ejemplo de aplicación:**
Si descubrimos que 15% de direcciones no validan → investigamos → encontramos que app permite espacios en blanco → editamos validación → incluimos en pruebas → desplegamos fix. Todo en <2 semanas.

---

#### **Práctica 2: Seguridad y Control de Acceso**

**¿Qué es?**
Políticas y tecnología para asegurar que solo personas autorizadas accedan a datos sensibles.

**Implementación en Glovo:**

| Tipo de Dato | Nivel de Acceso | Quién Puede Acceder | Auditoría |
|--------------|-----------------|-------------------|-----------|
| Datos de cliente (teléfono, dirección, email) | Restricto | Solo Operaciones, Marketing, Servicio al Cliente. Acceso registrado. | Cada acceso auditado, reporte mensual |
| Datos de repartidor (ubicación exacta) | Restricto | Solo Operaciones y Seguridad. No Marketing ni Finance. | Acceso encriptado, logs anónimos |
| Datos agregados/anonimizados (Glovo Insights) | Público | Cualquiera en la empresa | Sin auditoría especial |

**Tecnología:**
- **Encriptación en tránsito y en reposo:** Toda data sensible encriptada (AES-256).
- **Role-based access control (RBAC):** Sistema que autoriza según rol. Ej: "Analista de Marketing" solo ve datos segmentados de cliente, no IDs ni ubicaciones exactas.
- **Data masking:** Para logs/reportes, ocultar dígitos de teléfono, parcializar emails (ej: j***@gmail.com).

**Beneficio:** Si hay breach, impacto limitado. Atacante no ve datos completos.

---

### Roles Básicos de Gobierno

#### **Chief Data Officer (CDO)**
- **Responsabilidad:** Visión estratégica de datos. Reporta a CEO/CTO.
- **Actividades:** Define estrategia, presupuesto, políticas. Arbitra conflictos entre áreas.
- **KPIs:** Calidad de datos >95%, cumplimiento regulatorio 100%, ROI de proyectos de datos.

#### **Data Stewards (por área)**
- **Responsabilidad:** Custodios de datos de su área. Garantizar calidad e integridad.
- **Actividades:** Validar datos, documentar cambios, responder consultas de otras áreas.
- **Ejemplos:**
  - "Data Steward de Operaciones" → cuida datos de repartidores y órdenes.
  - "Data Steward de Marketing" → cuida datos de cliente y segmentación.

#### **Data Engineer**
- **Responsabilidad:** Construir pipelines, automatizar limpieza, mantener infraestructura.
- **Actividades:** Escribir código, desplegar sistemas, monitorear performance.

#### **Data Protection Officer (DPO)**
- **Responsabilidad:** Cumplimiento regulatorio. Reporta a Legal.
- **Actividades:** Auditar consentimientos, revisar políticas de privacidad, responder GDPR requests.

---

## 5. EVALUACIÓN DE RIESGOS Y VIABILIDAD (4 puntos)

### Riesgos Identificados

#### **Riesgo Técnico 1: Arquitectura de Datos Inmanejable a Escala**

**Descripción:**
Glovo procesa ~10M de órdenes/mes globalmente. Si la arquitectura de datos real-time no está bien diseñada, puede fallar:
- Event stream (Kafka) se satura → pérdida de datos de ubicación → entregas imprecisas.
- Data lake no escala → queries lentas, reportes retrasados (en vez de real-time).
- Falta de sincronización entre regiones (Perú, España, Brasil) → datos inconsistentes.

**Impacto:** Decisiones basadas en datos incompletos o atrasados. Vuelve a lo de hoy (marketing inefectivo, operaciones lentas).

**Mitigación:**
- ✅ Seleccionar tecnologías probadas a escala (Kafka es usado por Netflix, Uber, AirBnB).
- ✅ Implementar redundancia: 3 réplicas de cada nodo crítico.
- ✅ Hacer pruebas de carga con 100x volumen esperado (ej: simular Cyber Monday antes de que llegue).
- ✅ Contratar 2-3 engineers senior con experiencia en big data distribuido.

---

#### **Riesgo Técnico 2: Calidad de Datos No Mejora Significativamente**

**Descripción:**
Invertimos $1M en un data lake, pero:
- Datos siguen viniendo "sucios" de aplicaciones legacy.
- Restaurantes no actualizan su información en tiempo real → base desactualizada.
- Clientes dan direcciones incompletas por prisa → validación no puede limpiar.

**Impacto:** ROI bajo. Marketing sigue haciendo campañas imprecisas. Operaciones sigue lenta.

**Mitigación:**
- ✅ Renovar apps (web y móvil) para **forzar** entrada válida antes de enviar (ej: campo de dirección con autocomplete, validación de teléfono).
- ✅ Incentivos: repartidores que actualicen perfil ganan puntos. Restaurantes que actualicen menú reciben boost en visibilidad.
- ✅ Servicio de atención al cliente que valida datos directamente (telefonazo rápido para confirmar).
- ✅ Meta realista: alcanzar 90% calidad en año 1 (no 100% overnight).

---

#### **Riesgo Financiero 1: Inversión Inicial Excede Presupuesto o ROI es Menor del Esperado**

**Descripción:**
- Presupuesto inicial: $3M - $4M (data lake + real-time + infraestructura + equipo).
- Si proyecto se retrasa 6 meses → costo adicional $500K.
- Si Glovo Insights genera $20M/año esperado pero solo $10M → ROI cae de 5x a 2.5x.

**Impacto:** Junta directiva cuestiona viabilidad, congela presupuesto. Proyecto queda a mitad de camino.

**Mitigación:**
- ✅ Desglosar en fases cortas (6 semanas c/u). Cada fase debe mostrar valor (ej: primero data lake limpio, luego real-time, luego Glovo Insights).
- ✅ Definir KPIs claros por fase. Si fase 1 no mejora retención de cliente en 10%, replanificar.
- ✅ Negociar con proveedores cloud (AWS, GCP) descuentos por volumen/compromisos de gasto.
- ✅ Proyectar conservador: $20M/año de Glovo Insights en 3 años (no 1 año). Ajustar presupuesto para ROI realista.

---

#### **Riesgo Organizacional 1: Resistencia al Cambio**

**Descripción:**
- Directores de Operaciones, Marketing y Finanzas han operado "a la vieja manera" 10+ años. No quieren renunciar a control de "sus datos".
- "¿Por qué tengo que cambiar mi proceso si está funcionando?"
- Ingenieros senior de TI ven el proyecto como amenaza a su poder (si datos están centralizados, pierden control).

**Impacto:** Lentitud en adopción. Malos datos porque áreas no colaboran en limpieza. Proyecto fracasa.

**Mitigación:**
- ✅ **Change management:** Nombrar CDO con autoridad ejecutiva (reporta a CEO). CDO debe vender visión claramente: "datos = competitividad".
- ✅ **Quick wins:** Mostrar resultados en 3 meses (ej: con data lake limpio, primera campaña de marketing genera 35% más ROI). Eso vende.
- ✅ **Incentivos alineados:** Bonificación de ejecutivos ligada a métricas de datos (ej: si calidad de datos >95%, bonus x%).
- ✅ **Capacitación:** Entrenar a Data Stewards y equipos en herramientas nuevas. No solos → con mentor.

---

### Resumen de Riesgos y Mitigaciones

| Riesgo | Severidad | Probabilidad | Mitigación Clave | Responsable |
|--------|-----------|--------------|------------------|-------------|
| Arquitectura falla a escala | Alta | Media (35%) | Pruebas de carga, redundancia, ingenieros senior | CTO |
| Calidad de datos no mejora | Alta | Media (40%) | Renovar apps, incentivos, validación manual | CDO |
| Inversión excede presupuesto | Media | Media (45%) | Desglosar en fases, KPIs claros, negociar con cloud | CFO |
| Resistencia al cambio | Media | Alta (60%) | CDO con autoridad, quick wins, incentivos, capacitación | CEO + CDO |

---

## Conclusión: Plan de Acción Ejecutivo

### Roadmap Propuesto (18 meses)

| Fase | Duración | Hito | Resultado |
|------|----------|------|-----------|
| **Fase 1: Diagnóstico + Planificación** | 6 semanas | Auditoría de datos, diseño arquitectura, reclutamiento CDO | Plan detallado aprobado por board |
| **Fase 2: Data Lake MVP** | 12 semanas | Centralizar datos, limpieza inicial, integración de apps | 90% calidad de datos en 3 ciudades piloto |
| **Fase 3: Real-Time + Optimización** | 12 semanas | Event stream, dashboards operacionales, modelos ML | Reducción 20% en tiempo de entrega |
| **Fase 4: Glovo Insights + Monetización** | 10 semanas | API de Insights, primeros clientes (restaurantes), pricing | $2M-$5M en ingresos nuevos (año 1) |
| **Fase 5: Escalamiento Global** | Continuo | Replicar en todas las regiones, gobernanza centralizada | Glovo es data-driven en 100% de operaciones |

### Inversión Total Estimada

- **Infraestructura:** $1.5M
- **Talento (CDO, Engineers, Analysts):** $1.2M/año
- **Herramientas/Licencias:** $300K
- **Cambio organizacional:** $200K
- **Contingencia (20%):** $600K

**Total Fase 1-4: ~$4M** (18 meses)

### Retorno Esperado (18-36 meses)

| Fuente | Impacto Estimado |
|--------|-----------------|
| Reducción de churn de clientes (-5%) | $15M/año |
| Eficiencia operacional (entregas más rápidas, menos costos) | $8M/año |
| Ingresos de Glovo Insights | $5M/año (años 2-3) |
| **Total ROI: 4-5x en 3 años** | **~$28M** |

---

## Referencias Conceptuales

**Principios de Dirección Estratégica de Datos (Clase 1):**
- Los datos son el activo más valioso. Sin gobernanza, son un riesgo.
- La dirección estratégica no es técnica, es de negocio.

**Casos Prácticos (Clase 2):**
- Data Force: gobierno de datos mejora precisión del negocio.
- Guagua Laptop: datos local-first (offline) para entornos con poca conectividad.

**Gobernanza de Datos (Clase 3):**
- Interoperabilidad entre sistemas (lo que Glovo necesita para integrar regiones).
- Cumplimiento regulatorio es parte de la estrategia, no un costo.

---

**Fin de la Solución PA001 — Dirección Estratégica de Datos**
