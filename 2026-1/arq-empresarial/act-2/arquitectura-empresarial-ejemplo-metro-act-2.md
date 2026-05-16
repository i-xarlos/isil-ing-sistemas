# Escenario de Transformación: Metro — Ejemplo de Arquitectura Empresarial

**Curso:** Arquitectura Empresarial (ISIL, 2026-1)
**Tipo:** Actividad 2 — Caso Práctico
**Metodología:** Gather → Analyze → Review
**Continuidad:** Desarrollo de Actividad 1 (Metro)
**Fecha:** Mayo 2026

---

## 📋 Tabla de Contenidos

1. [Contexto General](#contexto-general)
2. [GATHER: Recopilación del Estado Actual](#gather-recopilación-del-estado-actual)
3. [ANALYZE: Análisis de Ineficiencias y Brechas](#analyze-análisis-de-ineficiencias-y-brechas)
   - 3.1 [Matriz de Dominios AS-IS](#matriz-de-dominios-as-is-ineficiencias-identificadas)
   - 3.2 [Matriz Environment](#analyze-environment--matriz-de-impactos-contextuales)
4. [REVIEW: Soluciones Propuestas](#review-soluciones-propuestas)
5. [Conexión con Conceptos de Clase](#conexión-con-conceptos-de-clase)

---

## Contexto General

**Organización:** Metro S.A.
**Industria:** Retail — Cadena de Tiendas Departamentales
**País:** Perú
**Tamaño:** 3,500 empleados, 120 puntos de venta, 2 millones de clientes activos
**Período de Análisis:** Mayo 2026

**Objetivo Estratégico:** Transformar arquitectura de retail fragmentada a omnicanal integrada, capturando 500,000 nuevos clientes en 18 meses y recuperando cuota de mercado del 25% (histórica) desde actual 18%.

---

## 🔄 Matriz Gather-Analyze-Review: Transformación Metro

| **Elemento**                 | **Gather (Recopilar)**                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                              | **Analyze (Analizar)**                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                             | **Review (Revisar)**                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                         |
| ---------------------------------- | ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| **PROBLEMA**                 | **Situación Actual:** Metro lleva 18 años con arquitectura fragmentada por canal: 120 tiendas física + e-commerce separado + POS antiguo sin sincronización + datos clientes duplicados + inventario desbalanceado + app móvil obsoleta **Síntomas:** Clientes jóvenes migrando a Amazon/Falabella/Ripley; tráfico en tiendas -10% anual; web colapsa en Black Friday; cuota mercado 25%→18% en 3 años                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                          | **Ineficiencias Identificadas:** **Negocio:** Canales separados = fricción cliente, inventario duplicado, NPS 42 (bajo), recomendaciones genéricas **Datos:** 3 BD aisladas = sin visión integrada, clientes duplicados, stock desincronizado 24h, reportes manuales **Apps:** POS antiguo + e-commerce separado + app obsoleta = alto mantenimiento, bugs, downtime **Tecnología:** On-premise 3-4 servidores en 1 data center = colapsa en picos, uptime 97%, perímetro clásico vulnerable                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                         | **Solución Propuesta:** Transformación a omnicanalidad integrada en 18 meses: **I-001:** Plataforma Commerce Omnicanal ($800K, 12m) **I-002:** Data Warehouse + CDP ($200K, 6m) **I-003:** Automatización Inventario ($150K, 9m) **I-004:** Migración AWS + Auto-scaling ($400K, 12m) **I-005:** API Gateway Real-time ($250K, 9m) **I-006:** Seguridad Zero Trust + WAF ($150K, 12m) **Inversión Total:** $1.95M                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                             |
| **ENVIRONMENT**              | **Contexto Regulatorio:** SUNAT facturación obligatoria en todos canales; normas protección datos cada vez más estrictas; requisitos auditoría crecientes **Contexto Mercado:** Competencia omnicanal (Falabella, Ripley, Saga, Amazon); expectativa clientes: buscar en app, comprar en web, recoger en tienda, devolver sin fricción; picos (Black Friday 20%, Cyber Monday 10%); marketplace esperado (Mercado Libre, Amazon, OLX) **Tendencias Tech:** Cloud computing estándar; APIs real-time para B2B; Seguridad Zero Trust; IA/ML recomendaciones                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                         | **Impacto Regulatorio:** SUNAT requiere facturación integrada en todos canales (hoy: manual por canal); protección datos exige auditoría trazabilidad (hoy: 3 BD sin logs); SOC2 Type II imposible con arquitectura fragmentada **Impacto Mercado:** Competencia con CDP único ganando clientes; picos de demanda exponen debilidad on-premise (colapso = -$300K Black Friday 2024); marketplace no alcanzable sin APIs **Impacto Tecnología:** Cloud + APIs son expectativa 2026 (Metro: 2000s); Zero Trust necesario (perímetro: vulnerable); IA/ML requiere datos limpios (65% deduplicación) | **Amplificadores de Urgencia:** Cada mes sin omnicanalidad = -$10M en ventas potencial; regulaciones nuevas cada trimestre limitan opciones; competencia gana 500K clientes/año que Metro pierde; deuda técnica = 2-3 años para volverse impagable **Oportunidades a Capturar:** Marketplace (Mercado Libre, Amazon) = +500K clientes si se integra; IA/ML = +30% canasta promedio; Cloud = auto-scaling soporta 10x picos sin caída |                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                    |
| **OBJECTIVES**               | **Retener y crecer clientes jóvenes (18-40):** Captar 500K nuevos en 18 meses **Recuperar cuota mercado:** 18%→21% (acercarse a histórico 25%) **Soportar picos:** Black Friday/Cyber Monday sin caídas **Mejorar experiencia omnicanal:** Cliente "es uno" en todos canales **Incrementar rentabilidad:** -25% costos operativos con automatización **Meta Financiera:** ROI 50x en 5 años ($1.95M → $100M ingresos adicionales)                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                              | **Brechas vs. Objetivos:** Para captar 500K necesita omnicanal = I-001 + I-002 + I-005 (8-9 meses setup); para soportar 10x Black Friday necesita AWS auto-scaling = I-004 (12 meses); para experiencia uniforme necesita CDP unificado = I-002 (6 meses); para automatizar necesita APIs + integraciones = I-005 (9 meses); para reducir costos necesita menos sistemas = I-001 (elimina 3 legacy systems) **Dependencias Críticas:** I-001 al 50% antes de I-005; I-002 operativo con 99% data quality antes de decisiones; I-004 producción antes de rollout nacional                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                   | **Roadmap 4 Fases:** **Fase 1 (M1-3):** Fundación — CDP, AWS, Zero Trust, arquitectura aprobada **Fase 2 (M4-9):** Integración — APIs live, 80% inventario auto, 50K piloto, BI dashboards, recomendaciones activas **Fase 3 (M10-15):** Escalabilidad — 120 tiendas + web + app sincronizadas, Black Friday 10x, 300K omnicanal, Zero Trust validado **Fase 4 (M16-18):** Optimización — 500K nuevos clientes, -25% costos, cuota 21%, NPS 70                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                |
| **HUMAN ACTORS**             | **Vendedores tiendas:** 2,500 personas; asesoría, cierre, devoluciones; Alto impacto (resistencia inicial, capacitación necesaria) **Analistas Datos:** 5 personas; reportes, análisis, auditoría; Medio impacto (herramientas BI nuevas) **Técnicos POS:** 150 personas; mantenimiento sistemas tiendas; Alto impacto (migración POS viejo a nuevo) **Operadores Almacén:** 500 personas; inventario, picking, packing; Alto impacto (automatización requiere cambio procesos) **Gerentes Regionales:** 12 personas; supervisión, metas; Medio impacto (capacitación omnicanal) **IT Operations:** 20 personas; infraestructura 24/7; Crítico impacto (soporte 24/7 nuevo sistema) **Estrategia & Comercial:** 8 personas; decisiones negocio, pricing, promos; Crítico impacto (dirigir transformación)                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                          | **Resistencias Identificadas:** Vendedores aversión al cambio = necesitan incentivos + capacitación continua; Técnicos POS miedo a obsolescencia = necesitan reskilling; IT Ops caída de autoridad (legacy→cloud) = necesitan coaching; Gerentes Regionales desconfían de metrics nuevas = necesitan training BI **Capacidades Faltantes:** 0 personas con experiencia cloud → recruiting; 0 personas con CDP → contratar especialista; 0 personas con Zero Trust → training externo; 5 personas datos para 120 tiendas = insuficiente → +10 analistas                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                             | **Plan de Transición Humano:** **Mes 1:** Comunicación ejecutiva de por qué transformación es urgente; definir incentivos por canal omnicanal **Mes 2-3:** Reclutamiento cloud architects (5), data engineers (5), security engineers (3) **Mes 4-6:** Capacitación tiendas (pilotos en 5 tiendas select) + IT Ops (AWS, Kubernetes, CI/CD); **Mes 7-12:** Reskilling POS technicians (75%) a commerce platform support; masiva capacitación vendedores en tiendas (2,500s) **Mes 13-18:** Refinamiento basado en feedback; career paths claros para talento convertido                                                                                                                                                                                                                                                                                                                                                                                  |
| **COMPUTER ACTORS**          | **SIGA-POS:** Punto de venta 120 tiendas; Windows Server 2008, Oracle 8i; Antiguo, lento, sin APIs, monolítico **E-commerce Web:** Plataforma web separada; Magento 2.x, MySQL; No sincroniza tiendas, uptime 97% **App Móvil:** iOS/Android; React Native obsoleta; No integrada, no sincroniza, baja adopción **Base Datos Clientes:** CRM por canal; 3 BD aisladas; Datos duplicados, sin sincronización **Sistema Inventario:** Gestión stock; CSV cada 24h; Desincronización permanente **Reportería:** BI y análisis; Excel + Power BI manual; Reportes diarios, no real-time                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           | **Problemas Críticos:** SIGA-POS no puede emitir factura digital integrada (SUNAT violation); 3 BD aisladas = imposible CDP o recomendaciones; CSV 24h = desincronización permanente (overselling o stockout); E-commerce separado = cliente tiene 2 experiencias distintas (Amazon mejor); POS 2008 + MySQL = security vulnerabilities (riesgo breach); Excel manual = decisiones reactivas, miss oportunidades **Deuda Técnica:** Monolítico on-premise = imposible escalar; sin APIs = sin marketplace; sin microservicios = bug en 1 sistema cae todo; capacidad fija = colapsa en picos                                                                                                                                                                                                                                                                                                                                                                                                                                                                             | **Arquitectura Objetivo TO-BE:** **I-001:** Plataforma Commerce Unificada (Salesforce Commerce Cloud o custom con cloud-native architecture) — tienda + web + app + marketplace + redes sociales integrados; APIs REST/GraphQL real-time; microservicios desplegables independientemente **I-002:** Data Warehouse Centralizado + CDP (Snowflake + Segment o similar) — customer single view; data quality 99%; datalake para ML **I-003:** Sistema Inventario Automatizado (SAP Integrated Business Planning o especializado retail) — real-time sync de 120 tiendas + 5 canales; predicción demanda con ML **I-004 & I-006:** Infraestructura AWS + Zero Trust — Kubernetes, microservicios, auto-scaling, disaster recovery <15min RTO, WAF global, encrypted at rest/transit                                                                                                                                                                                |
| **ROLES & RESPONSIBILITIES** | **AS-IS Manual Processes:** Aprobación créditos/devoluciones manual (2-3 días, gerente tienda); Sincronización inventario manual cada 24h (desincronización permanente); Resolución problemas técnicos centralizada (4-6h avg); Análisis demanda manual semanal (reactivo, no predictivo); Seguridad datos = perímetro clásico (vulnerable); Compliance auditoría externa 1x/año (reactivo)                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                             | **Ineficiencias en Autoridad/Responsabilidad:** **Gerente Tienda:** Tiene autoridad para aprobar crédito/devolución pero SIN datos (no ve estado cliente en otros canales) = decisiones malas **POS Technician:** Responsable por 1-2 tiendas pero sin visibilidad de estado de red completa = troubleshooting ciego **IT Operations:** Responsable uptime 24/7 pero con servidor antiguo que no escala = fracaso garantizado en picos **Analista Datos:** Responsable por reportes pero con 3 BD desincronizadas = reportes incorrectos = decisiones malas **CFO:** Responsable ROI pero sin visibility de procesos = presupuestos basados en corazonadas                                                                                                                                                                                                                                                                                                                                                                                         | **RACI Matrix TO-BE con Automatización:** **Aprobación Créditos/Devoluciones:** Responsable = Sistema automático (basado en scoring + ML); Autorizado por = CFO + Head Fraud; Consultado = Gerente Tienda; Informado = Cliente vía app **Sincronización Inventario:** Responsable = Automated sync engine (APIs, real-time, con fallover); Autorizado por = CTO + Dir. Ops; Consultado = —; Informado = BI dashboard auto **Resolución Problemas:** Responsable = Automated monitoring + self-healing (Kubernetes auto-restart); Autorizado por = DevOps on-call; Escalado a = Site Reliability Engineer si manual **Análisis Demanda:** Responsable = ML pipeline automática; Autorizado por = Data Science Lead; Consultado = Dir. Comercial; Informado = Dashboard en tiempo real **Seguridad:** Responsable = Zero Trust architecture (automated enforcement); Autorizado por = CISO; Auditado por = externa trimestral (SOC2) + interna monthly |
| **SÍNTESIS CONTEXTO**       | **Urgencia:** Arquitectura actual es 2000s, mercado es 2026; Metro está corriendo en reverse vs. competencia; cada mes sin cambio = -$10M potencial **Ventanas de Oportunidad:** Black Friday 2026 (8 meses) = deadline para al menos Fase 1 completa (si no, otra caída -$300K); Marketplace creciendo (2-3 años antes de ser crítico) = ventana para captar 500K clientes ahora **Restricciones:** Presupuesto limitado ($1.95M) pero ROI de 50x justifica; talento escaso (0 cloud en payroll hoy) pero reclutable; regulaciones que aprietan cada trimestre (SUNAT, GDPR-like, SOC2) | **Factores de Riesgo (Críticos):** Resistencia vendedores (2,500 personas) = puede sabotear rollout si no es comunicado bien; Deuda técnica (monolítico) = any cambio en I-001 puede descarrilar proyecto; Caída Black Friday (probabilidad media, impacto crítico) = necesita auto-scaling antes de Fase 3; Talento (falta de cloud engineers) = limita velocidad ejecución; Security breach (perímetro vulnerable) = expone Metro a regulación y reputación. **Variables de Éxito:** Patrocinio ejecutivo claro (CEO, CFO, CTO en steering committee); PMO riguroso con stage-gates; Capacitación temprana de equipos clave (antes de Mes 1); KPIs medibles por fase (no solo al final); Governance clara (COBIT principles) | **Aprobación GO:** Steering Committee debe validar antes Mes 1 que: (1) Presupuesto $1.95M aprobado + liberado en tranches por fase; (2) Talento comprometido (CTO, CDO, CISO como sponsor directo); (3) Comunicación ejecutiva lista (por qué urgente, beneficios, sacrificios); (4) Roadmap de 4 fases alineado con business plan; (5) Governance + RACI definidos. **Red Flags que pausarían:** Steering Committee no se compromete; PMO sin autoridad; Presupuesto retenido; Conflictos sobre ownership de iniciativas; Sin CFO buy-in (inversión vs. costo-ahorro) |                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                          |                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                    |

---

## 📖 Lectura de la Matriz Gather-Analyze-Review

### 🔍 ¿Cómo leer esta matriz?

Cada fila muestra un elemento organizacional en 3 fases:
- **Gather (izq):** Situación actual AS-IS
- **Analyze (centro):** Ineficiencias e impactos identificados
- **Review (dch):** Soluciones propuestas TO-BE

**Lectura recomendada:**
- **Lectura completa:** Lee fila por fila de izquierda a derecha
- **Lectura rápida (2 min):** Mira solo columna Review (derecha) para ver soluciones
- **Por contexto:**
  - **CFO:** Mira SÍNTESIS CONTEXTO (fila 7) para ROI y financiamiento
  - **CTO:** Mira COMPUTER ACTORS (fila 5) para arquitectura técnica
  - **CHRO:** Mira HUMAN ACTORS (fila 4) para transformación organizacional
  - **CISO:** Mira ROLES & RESPONSIBILITIES (fila 6) para seguridad y Zero Trust

---

## ANALYZE: Análisis de Ineficiencias y Brechas

### 📊 Matriz de Dominios AS-IS: Ineficiencias Identificadas

#### 1️⃣ DOMINIO NEGOCIO — Problemas AS-IS

| Aspecto                       | Situación Actual                         | Ineficiencia                              | Impacto Comercial                                    |
| ----------------------------- | ----------------------------------------- | ----------------------------------------- | ---------------------------------------------------- |
| **Canales de Venta**    | Tiendas + Web separados                   | Fricción cliente, inventario duplicado   | Cliente compra en Amazon, no en Metro            |
| **Experiencia Cliente** | Inconsistente entre canales               | Precios, promos, disponibilidad distintos | NPS 42 (bajo)                                        |
| **Procesos**            | Manuales en inventario/devoluciones       | Toma 2-3 días procesar devolución       | Pérdida de confianza, compras impulsivas disminuyen |
| **Productos**           | Catálogo estático, sin personalización | Recomendaciones genéricas                | Canasta promedio baja vs. competencia                |

**Conclusión:** Sin omnicanalidad integrada, cada canal compite internamente por clientes en lugar de colaborar.

---

#### 2️⃣ DOMINIO DATOS — Problemas AS-IS

| Aspecto                  | Situación Actual                               | Ineficiencia                                     | Impacto Operativo                      |
| ------------------------ | ----------------------------------------------- | ------------------------------------------------ | -------------------------------------- |
| **Almacenamiento** | BD separadas por canal: POS, e-commerce, social | Cliente "es múltiple" = sin visión integrada   | Marketing no personalizado             |
| **Unificación**   | Clientes duplicados entre canales               | Imposible hacer recomendaciones personalizadas   | Baja relevancia, alta tasa de abandono |
| **Inventario**     | Distribuido, desincronizado 24h                 | Stock duplicado o desabasto por descoordinación | Overselling o stockouts                |
| **Análisis**      | Reportes manuales, demoras días                | Decisiones reactivas, no predictivas             | Miss de oportunidades de demanda       |

**Conclusión:** Sin datos consolidados no hay inteligencia de negocio real.

---

#### 3️⃣ DOMINIO APLICACIONES — Problemas AS-IS

| Aspecto                 | Situación Actual                                              | Ineficiencia                                     | Impacto Técnico                              |
| ----------------------- | -------------------------------------------------------------- | ------------------------------------------------ | --------------------------------------------- |
| **Plataformas**   | POS antiguo (120 tiendas) + E-commerce separado + App obsoleta | Alto mantenimiento, baja calidad, deuda técnica | Bugs frecuentes, downtime sin previo aviso    |
| **Integraciones** | CSV cada 24h entre canales                                     | Desincronización permanente, errores            | Reportes incorrectos, decisiones malas        |
| **Catálogo**     | Separado por canal                                             | Precios y disponibilidad distintos               | Confusión en cliente, devoluciones por error |
| **Devoluciones**  | Proceso manual por canal                                       | 2-3 días para procesar                          | Insatisfacción, baja tasa de recompra        |

**Conclusión:** Arquitectura técnica antigua es cuello de botella para crecer.

---

#### 4️⃣ DOMINIO TECNOLOGÍA — Problemas AS-IS

| Aspecto                   | Situación Actual                           | Ineficiencia                         | Impacto Operativo                    |
| ------------------------- | ------------------------------------------- | ------------------------------------ | ------------------------------------ |
| **Infraestructura** | On-premise: 3-4 servidores en 1 data center | Capacidad fija, colapsa en picos     | Black Friday caídas de 4-6 horas    |
| **Disponibilidad**  | Uptime 97%                                  | Pierde ventas en picos               | $300K pérdida por Black Friday 2024 |
| **Seguridad**       | Perímetro clásico (firewall)              | Vulnerable a ataques web, DDoS       | Riesgo de breach datos clientes      |
| **Continuidad**     | Recuperación manual >12h                   | Terremoto/incendio cierra la empresa | Exposición a riesgo existencial     |

**Conclusión:** Sin escalabilidad en nube, no puede soportar crecimiento omnicanal.

---

### 🌍 ANALYZE: Environment — Matriz de Impactos Contextuales

El entorno externo amplifica o limita las ineficiencias internas. Esta matriz cruza factores externos con impactos en los 4 dominios:

#### Contexto Regulatorio

| Factor                                                            | Impacto Negocio                                                                | Impacto Datos                                                                       | Impacto Aplicaciones                                        | Impacto Tecnología                                                        |
| ----------------------------------------------------------------- | ------------------------------------------------------------------------------ | ----------------------------------------------------------------------------------- | ----------------------------------------------------------- | -------------------------------------------------------------------------- |
| **SUNAT: Facturación obligatoria en todos los canales**    | Deben facturar en tiendas + web + app simultáneamente (hoy: manual por canal) | Datos de ventas deben consolidarse en real-time para cumplir reportes SUNAT         | POS antiguo no puede emitir factura digital integrada       | On-premise no soporta API de SUNAT para envío automático de comprobantes |
| **Protección de datos personales (Ley 29733 + RGPD-like)** | Responsabilidad legal sobre datos de clientes                                  | Necesita auditoría de quién accede a datos y cuándo (hoy: 3 BD sin trazabilidad) | Apps deben cumplir GDPR (consentimiento, derecho al olvido) | Perímetro clásico no permite rastreo de accesos (Zero Trust necesario)   |
| **Auditoría SOC2 Type II**                                 | Imposible certificar operación confiable con arquitectura fragmentada         | Auditoría revela inconsistencias en data quality (65% deduplicación)              | Múltiples sistemas → múltiples puntos de fallo           | Infraestructura on-premise no cumple redundancia exigida                   |

**Conclusión Regulatoria:** Hoy Metro está fuera de cumplimiento normativo. Cada regulación agrava la urgencia de transformación.

---

#### Contexto de Mercado

| Factor                                                                  | Impacto Negocio                                                                                               | Impacto Datos                                                                | Impacto Aplicaciones                                                    | Impacto Tecnología                                                  |
| ----------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------- | ----------------------------------------------------------------------- | -------------------------------------------------------------------- |
| **Competencia omnicanal (Falabella, Ripley, Saga, Amazon)**       | Ya perdió cuota 25%→18%. Competidores dan experiencia seamless (buscar en app, comprar web, recoger tienda) | Competidores tienen CDP único de cliente. Metro: 3 BD aisladas          | Competidores tienen APIs integradas. Metro: CSV 24h                 | Competidores usan AWS/cloud autoscalable. Metro: on-premise fijo |
| **Expectativa de clientes 18-40: omnicanalidad**                  | Si no integra, pierde target demographic joven permanentemente                                                | Clientes esperan recomendaciones personalizadas (hoy: genéricas)            | Clientes esperan devolución interchannel 1h (hoy: 2-3 días por canal) | Clientes esperan 99.99% uptime en Black Friday (hoy: 97%, cae 4-6h)  |
| **Picos de demanda (Black Friday 20% anual, Cyber Monday 10%)**   | Modelo de negocio depende de picos. Hoy: no puede escalar                                                     | Data no predice picos, reportes llegan tarde (decisiones reactivas)          | Plataforma se cae en picos, usuarios van a Amazon                       | Infraestructura colapsa: no hay auto-scaling                         |
| **Marketplace como canal emergente (Mercado Libre, Amazon, OLX)** | -500K clientes/año potencial si no está en marketplace                                                      | No tiene datos de qué clientes compran en marketplace (oportunidad perdida) | Integraciones marketplace requieren APIs (hoy: no tiene)                | Cada marketplace requiere soporte técnico 24/7                      |

**Conclusión de Mercado:** Sin omnicanalidad integrada, seguirá perdiendo clientes a competidores. Cada mes de demora = $10M en ventas perdidas (estimado).

---

#### Tendencias Tecnológicas

| Factor                                                     | Impacto Negocio                                                                           | Impacto Datos                                                                    | Impacto Aplicaciones                                                                    | Impacto Tecnología                                                          |
| ---------------------------------------------------------- | ----------------------------------------------------------------------------------------- | -------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------- |
| **Cloud computing es estándar**                     | Retailers que no están en cloud pierden escalabilidad. Metro: on-premise → obsoleto | Data lake en cloud = acceso a Big Data y ML. Metro: BD relacional vieja      | Apps nativas cloud (microservicios) escalan mejor. Metro: monolíticas              | AWS = auto-scaling, disaster recovery auto, 99.99% SLA                       |
| **APIs real-time para B2B/B2C**                      | Marketplace, social commerce requieren APIs. Metro: cero integraciones                | API-first permite compartir datos con partners (cross-selling). Metro: silos | GraphQL/REST son estándar. Metro: CSV 24h = arquitectura 2000s                     | Microservicios + Kubernetes en cloud. Metro: monolítico on-premise      |
| **Seguridad Zero Trust (no confíes en perímetro)** | Breaches públicos crean desconfianza de marca. Metro en riesgo                       | Zero Trust = audit trail de accesos a datos (compliance). Metro: vulnerable  | Cada servicio autenticado individualmente. Metro: autenticación única monolítica | Redes segmentadas, WAF global, pen testing anual. Metro: firewall simple |
| **IA/ML para recomendaciones personalizadas**        | Recomendaciones = +30% canasta promedio (industria). Metro: genéricas                | ML requiere CDP con datos limpios. Metro: 65% deduplicación                 | Algoritmos necesitan APIs para feed de datos en tiempo real                             | ML models requieren GPU en cloud. Metro: servidores viejos               |

**Conclusión Tecnológica:** Tecnología de Metro es "legacy". Cloud + APIs + ML son expectativa de usuarios hoy.

---

### ⚠️ Riesgos Identificados (Síntesis GATHER + ANALYZE)

| Riesgo                                   | Origen (Factor Contexto) | Probabilidad | Impacto  | Mitigación en Roadmap                                          |
| ---------------------------------------- | ------------------------ | ------------ | -------- | --------------------------------------------------------------- |
| Cumplimiento normativo SUNAT             | Regulatorio              | Alta         | Crítico | I-001 (facturación integrada) + I-002 (trazabilidad datos)     |
| Pérdida acelerada a competencia         | Mercado                  | Alta         | Crítico | I-001 (omnicanalidad), I-002 (CDP), I-005 (APIs)                |
| Caída en Black Friday (ingresos -$300K) | Mercado + Tech           | Media        | Crítico | I-004 (AWS auto-scaling), I-006 (Zero Trust resiliente)         |
| Violación datos personales (breach)     | Regulatorio + Tech       | Media        | Crítico | I-006 (Zero Trust + WAF), I-004 (encrypted at rest/transit)     |
| Deuda técnica impagable                 | Tecnología              | Alta         | Alto     | I-001 (modernizar plataforma) + I-003 (automatizar operacional) |

---

## REVIEW: Soluciones Propuestas

### ✅ Matriz de Dominios TO-BE: Arquitectura Objetivo

#### 1️⃣ DOMINIO NEGOCIO — Solución Propuesta

| Aspecto                       | AS-IS                                    | Brecha                                  | TO-BE (Objetivo)                                                          | Timeline | Beneficio                 |
| ----------------------------- | ---------------------------------------- | --------------------------------------- | ------------------------------------------------------------------------- | -------- | ------------------------- |
| **Canales de Venta**    | Tiendas + Web separados                  | Fricción cliente, inventario duplicado | Omnicanal integrado (tienda + web + app + click&collect + marketplace)    | 12 meses | 80% clientes en omnicanal |
| **Experiencia Cliente** | Inconsistente (precios/promos distintos) | NPS bajo                                | Experiencia uniforme: cliente "es uno" en todos lados, inventario visible | 12 meses | NPS 42 → 70              |
| **Procesos**            | Manuales, toma 2-3 días devolución     | Baja confianza                          | Automáticos, devolución en 1 hora en cualquier canal                    | 9 meses  | 99% satisfacción         |
| **Productos**           | Catálogo estático                      | Recomendaciones genéricas              | Catálogo dinámico + IA personalizada                                    | 12 meses | +30% canasta promedio     |

---

#### 2️⃣ DOMINIO DATOS — Solución Propuesta

| Aspecto                  | AS-IS                                    | Brecha                     | TO-BE (Objetivo)                          | Timeline | Beneficio                     |
| ------------------------ | ---------------------------------------- | -------------------------- | ----------------------------------------- | -------- | ----------------------------- |
| **Almacenamiento** | BD separadas por canal                   | Sin visión integrada      | Data Warehouse central + CDP omnicanal    | 6 meses  | Single view de cliente        |
| **Unificación**   | Clientes duplicados, sin sincronización | Marketing no personalizado | Perfil único (1 cliente = 1 ID)          | 9 meses  | Relevancia +40%               |
| **Inventario**     | Distribuido, desincronizado 24h          | Stock duplicado/desabasto  | Centralizado, real-time, 5 nodos          | 6 meses  | Overselling 0%, stockout -50% |
| **Análisis**      | Reportes manuales, días de demora       | Decisiones reactivas       | BI real-time + predicción demanda con ML | 9 meses  | Decisiones en <1h             |

---

#### 3️⃣ DOMINIO APLICACIONES — Solución Propuesta

| Aspecto                 | AS-IS               | Brecha                           | TO-BE (Objetivo)                                          | Timeline | Beneficio          |
| ----------------------- | ------------------- | -------------------------------- | --------------------------------------------------------- | -------- | ------------------ |
| **Plataformas**   | 3 sistemas aislados | Deuda técnica, bugs             | Plataforma commerce unificada (Salesforce Commerce Cloud) | 12 meses | Mantenimiento -60% |
| **Integraciones** | CSV cada 24h        | Desincronización                | APIs real-time (REST + GraphQL)                           | 9 meses  | Latencia <100ms    |
| **Catálogo**     | Separado por canal  | Precios/disponibilidad distintos | Catálogo único en tiempo real                           | 6 meses  | Consistencia 100%  |
| **Devoluciones**  | Manual, 2-3 días   | Fricción                        | Automáticas interchannel (1h)                            | 9 meses  | Recompra +25%      |

---

#### 4️⃣ DOMINIO TECNOLOGÍA — Solución Propuesta

| Aspecto                   | AS-IS                      | Brecha               | TO-BE (Objetivo)                            | Timeline | Beneficio              |
| ------------------------- | -------------------------- | -------------------- | ------------------------------------------- | -------- | ---------------------- |
| **Infraestructura** | On-premise, capacidad fija | Colapsa en picos     | AWS híbrida con auto-scaling + CDN global  | 12 meses | Escalabilidad infinita |
| **Disponibilidad**  | Uptime 97%                 | Black Friday caídas | Uptime 99.99% (redundancia, load balancing) | 12 meses | 0 caídas Black Friday |
| **Seguridad**       | Perímetro clásico        | Vulnerable           | Zero Trust + WAF + pen testing anual        | 12 meses | 0 incidents críticos  |
| **Continuidad**     | Recuperación manual >12h  | Riesgo existencial   | Disaster recovery automático, RTO <15min   | 9 meses  | Resiliencia 24/7       |

---

### 🚀 Iniciativas Ejecutables (Portfolio)

Descomposición de la transformación en **6 iniciativas**, con dependencias, riesgos y beneficios:

| ID              | Iniciativa                          | Dominio(s)     | Duración | Inversión | Riesgo   | Beneficio   | Start |
| --------------- | ----------------------------------- | -------------- | --------- | ---------- | -------- | ----------- | ----- |
| **I-001** | Plataforma Commerce Omnicanal       | Negocio + Apps | 12m       | $800K      | 🟡 Medio | 🔴 Crítico | Mes 1 |
| **I-002** | Data Warehouse + CDP                | Datos          | 6m        | $200K      | 🟢 Bajo  | 🔴 Alto     | Mes 1 |
| **I-003** | Automatización Inventario/Procesos | Negocio + Apps | 9m        | $150K      | 🟢 Bajo  | 🔴 Alto     | Mes 1 |
| **I-004** | Migración AWS + Auto-scaling       | Tecnología    | 12m       | $400K      | 🟡 Medio | 🔴 Alto     | Mes 1 |
| **I-005** | API Gateway Real-time               | Apps           | 9m        | $250K      | 🟢 Bajo  | 🟡 Medio    | Mes 4 |
| **I-006** | Seguridad Zero Trust + WAF          | Tecnología    | 12m       | $150K      | 🟡 Medio | 🔴 Crítico | Mes 1 |

**Inversión Total:** $1.95M | **Timeline Total:** 18 meses (paralelo + dependencias)

---

### 📅 Roadmap de 4 Fases

#### 📅 FASE 1: FUNDACIÓN (Meses 1-3)

**Objetivo:** Base de datos y seguridad antes de escalar

**Iniciativas:**

- I-001 (inicio arquitectura, UI/UX)
- I-002 (design, ETL inicial)
- I-004 (setup cloud AWS)
- I-006 (diseño Zero Trust)

**Hitos:**

- ✅ Arquitectura técnica aprobada por CTO
- ✅ AWS ambiente development operativo
- ✅ Plan gobernanza datos aprobado
- ✅ Zero Trust design review completado

---

#### 📅 FASE 2: INTEGRACIÓN (Meses 4-9)

**Objetivo:** Conectar datos, inventario, canales

**Iniciativas:**

- I-005 (APIs POS-Web-App)
- I-003 (automatización inventario)
- I-001 (desarrollo 50%, testing)
- I-002 (carga datos, BI dashboards)

**Hitos:**

- ✅ APIs documentadas en producción
- ✅ 80% flujos de inventario automatizados
- ✅ 50K clientes en piloto omnicanal
- ✅ Recomendaciones personalizadas activas

**Dependencias:** I-001 al 50%, I-002 operativo, I-004 con auto-scaling

---

#### 📅 FASE 3: ESCALABILIDAD (Meses 10-15)

**Objetivo:** Rollout nacional 120 tiendas

**Iniciativas:**

- I-004 (migración completa AWS)
- I-006 (Zero Trust producción)
- I-001 (rollout 120 tiendas)
- I-003 (optimización reglas inventario)

**Hitos:**

- ✅ 120 tiendas + web + app sincronizadas
- ✅ Black Friday soporta 10x volumen sin caída
- ✅ 300K clientes omnicanal activos
- ✅ Penetration test exitoso (Zero Trust validado)

**Dependencias:** I-005 completo, I-002 data quality ≥99%, I-004 producción-ready

---

#### 📅 FASE 4: OPTIMIZACIÓN (Meses 16-18)

**Objetivo:** Refinamiento y consolidación

**Actividades:**

- Refinamientos basados en feedback
- Capacitación masiva vendedores (1,000s/día)
- Documentación final y runbooks
- Features adicionales (gifting, wishlist, subscription)

**Hitos:**

- ✅ 500K clientes nuevos adquiridos
- ✅ Costos operativos -25%
- ✅ Cuota mercado 18% → 21%
- ✅ NPS 42 → 70

---

### ⚠️ Riesgos y Mitigación

| Riesgo                               | Probabilidad | Impacto     | Mitigación                                                                                  | Responsable             |
| ------------------------------------ | ------------ | ----------- | -------------------------------------------------------------------------------------------- | ----------------------- |
| Resistencia de vendedores en tiendas | 🔴 Alta      | 🔴 Alto     | Comunicación clara de beneficios + capacitación continua + incentivos por ventas omnicanal | Dir. RRHH + Dir. Ventas |
| Desincronización de inventario      | 🔴 Alta      | 🟡 Medio    | Testing riguroso pre-rollout, sincronización redundante, alertas en tiempo real             | CTO + Dir. Operaciones  |
| Caída en Black Friday               | 🟡 Media     | 🔴 Crítico | Load testing pre-evento, auto-scaling, CDN global, balanceadores redundantes                 | Dir. Infraestructura    |
| Falta de talento tecnológico        | 🔴 Alta      | 🟡 Medio    | Recruiting 6 meses antes + capacitación interna + outsourcing select (Accenture, Deloitte)  | Dir. Talento            |
| Seguridad de datos clientes          | 🟡 Media     | 🔴 Crítico | Zero Trust + penetration testing anual + bug bounty + auditoría SOC2                        | CISO + Dir. Seguridad   |
| Presupuesto desbordado               | 🟡 Media     | 🟡 Medio    | PMO riguroso, governance de cambios, stage-gates, reserva de contingencia 15%                | PMO + CFO               |

---

### 📊 KPIs de Éxito (Métricas de Impacto)

#### 🎯 KPIs de Negocio

| KPI                              | Baseline AS-IS   | Meta TO-BE | Frecuencia     | Responsable      |
| -------------------------------- | ---------------- | ---------- | -------------- | ---------------- |
| Clientes activos omnicanal       | 200K (10%)       | 1.6M (80%) | Mensual        | Dir. Comercial   |
| Nuevos clientes adquiridos (18m) | —               | 500K       | Mensual        | Dir. Comercial   |
| Cuota de mercado                 | 18%              | 21%        | Trimestral     | Dir. Estrategia  |
| NPS (Net Promoter Score)         | 42               | 70         | Mensual        | Dir. Experiencia |
| % ventas omnicanal               | 5%               | 60%        | Semanal        | Dir. Ventas      |
| Canasta promedio                 | $35 | $45 (+28%) | Mensual    | Dir. Comercial |                  |

#### 📊 KPIs de Datos

| KPI                                        | Baseline | Meta               | Frecuencia | Responsable       |
| ------------------------------------------ | -------- | ------------------ | ---------- | ----------------- |
| Cobertura CDP (clientes con perfil único) | 0%       | 100%               | Mensual    | Dir. Datos        |
| Calidad datos (deduplicación)             | 65%      | 99%                | Semanal    | Data Steward      |
| Lag inventario                             | 24h      | Real-time (<100ms) | Diaria     | Dir. Operaciones  |
| Cobertura análisis predictivo             | 10%      | 90%                | Mensual    | Data Science Lead |

#### 💻 KPIs de Aplicaciones

| KPI                                  | Baseline | Meta                       | Frecuencia | Responsable      |
| ------------------------------------ | -------- | -------------------------- | ---------- | ---------------- |
| Canales integrados                   | 3        | 5 (+ marketplace + social) | Trimestral | CTO              |
| Uptime plataforma                    | 97%      | 99.99%                     | Diaria     | Dir. Operaciones |
| Velocidad deploy (release frequency) | 1/mes    | 1/semana                   | Semanal    | Director DevOps  |
| Tasa de errores aplicación          | 0.5%     | 0.01%                      | Diaria     | QA Lead          |

#### 🔒 KPIs de Tecnología

| KPI                                 | Baseline | Meta    | Frecuencia | Responsable          |
| ----------------------------------- | -------- | ------- | ---------- | -------------------- |
| Uptime infraestructura              | 97%      | 99.99%  | Diaria     | Dir. Infraestructura |
| Capacidad Black Friday (vs. normal) | 1x       | 10x     | Trimestral | Dir. Infraestructura |
| Incidentes seguridad críticos      | 3/año   | <1/año | Mensual    | CISO                 |
| RTO (Recovery Time Objective)       | >12h     | <15min  | Semestral  | Dir. Continuidad     |

---

## Conexión con Conceptos de Clase

Este escenario **expande el análisis de Actividad 1** con un nivel operacional concreto.

En **Act-1**, se identificaron los 4 dominios y las brechas AS-IS vs TO-BE de Metro.
En **Act-2**, se responde: **¿Cómo cerrar esas brechas? ¿Con qué iniciativas? ¿En qué orden? ¿A qué costo?**

### ✅ TOGAF y ADM

- Aplicación práctica del ciclo **ADM** iniciado en clase 1
- Fase de "Planificación de Transición": de conceptos a ejecución
- Uso de **dominios** para descomponer complejidad en iniciativas

### ✅ Alineamiento Estratégico (Clase 1)

- Cada iniciativa responde a objetivo de negocio: captar 100K clientes
- Conexión directa: "Ser el banco digital preferido" (TO-BE) → Iniciativas concretas
- ROI cuantificable: Inversión $1.52M → Ingresos $150M en 5 años

### ✅ Gestión del Portafolio (Clase 5)

- Descomposición de la transformación en 6 iniciativas ejecutables
- Matriz de dependencias y secuencia de fases
- Criterios de priorización: impacto vs. esfuerzo

### ✅ Gobernanza (Clase 4)

- Estructura de governance: Steering committee + PMO
- Roles definidos: CTO, CFO, CDO, CISO
- KPIs medibles para cada dominio

### ✅ Riesgos y Mitigación

- Identificación de riesgos operacionales y organizacionales
- Planes de contingencia explícitos
- Responsables claramente asignados

---

## Preguntas de Reflexión

1. **¿Qué pasa si las fases no respetan las dependencias?**→ Las iniciativas I-004 y I-006 fallarían porque necesitan I-005 operativo
2. **¿Por qué la seguridad (I-006) es crítica pero se ejecuta en paralelo?**→ Porque cada fase necesita estar asegurada desde el inicio. No puede ser "después"
3. **¿Cómo conecta esto con el COBIT visto en Clase 4?**→ PMO con governance riguroso, auditoría independiente, control de cambios basado en políticas
4. **Si la inversión es $1.52M, ¿cómo se justifica?**→ 100K clientes × $150 margen promedio × 5 años = $75M ingresos adicionales. ROI = 50x
5. **¿Qué modelos de madurez (Clase 6) aplican aquí?**
   → BancoXYZ hoy está en TOGAF CMM nivel 1-2. Target es nivel 3-4 tras transformación

---

## Conclusión

Este escenario **expande el análisis de Actividad 1** con un nivel operacional concreto usando la metodología **Gather-Analyze-Review**.

**En Act-1** se identificaron los 4 dominios y las brechas AS-IS vs TO-BE de Metro.
**En Act-2** se responde: **¿Cómo cerrar esas brechas? ¿Con qué iniciativas? ¿En qué orden? ¿A qué costo?**

### ✅ TOGAF y Metodología ADM (Clase 1-2)

**Este documento demuestra el ciclo completo ADM de TOGAF:**

- **Gather (A):** Información de la línea base actual (AS-IS), equivalente a fases ADM "Preliminary" y "Architecture Vision"
- **Analyze (B):** Identificación de brechas, riesgos y oportunidades (fases "Business/Data/Application/Technology Architecture")
- **Review (C):** Soluciones arquitectónicas propuestas alineadas con estrategia (fases "Opportunities & Solutions" y "Migration Planning")

**Conexión práctica:**

- Gather = Assessment AS-IS (Fase A-B ADM)
- Analyze = Gap Analysis (Fase B-D ADM)
- Review = Solution Architecture + Roadmap (Fase E-G ADM)

---

### ✅ Alineamiento Estratégico (Clase 1)

Cada iniciativa responde directamente a objetivo de negocio:

- **Objetivo:** Captar 500K clientes omnicanal en 18 meses
- **Iniciativa I-001:** Plataforma Commerce ($800K, 12m) permite que suceda
- **Iniciativa I-002:** CDP ($200K, 6m) alimenta recomendaciones personalizadas
- **ROI cuantificable:** Inversión $1.95M → Ingresos adicionales $100M en 5 años

---

### ✅ Marco de 4 Dominios (Clase 1)

Este documento **expande cada dominio de Act-1** con iniciativas concretas:

- **Dominio Negocio:** Omnicanalidad integrada → I-001 (plataforma), I-003 (automatización)
- **Dominio Datos:** CDP unificado → I-002 (data warehouse)
- **Dominio Aplicaciones:** Plataformas integradas → I-001, I-005 (APIs)
- **Dominio Tecnología:** Cloud escalable → I-004 (AWS), I-006 (seguridad)

---

### ✅ Gestión del Portafolio (Clase 5)

Descomposición de transformación en 6 iniciativas ejecutables:

- Criterios de priorización: impacto vs. esfuerzo
- Matriz de dependencias (I-005 requiere I-001 al 50%)
- Secuencia de 4 fases para minimizar riesgo

---

### ✅ Gobernanza y COBIT (Clase 4)

Estructura de governance que asegura ejecución:

- Steering committee con CTO, CFO, CDO, CISO, Dir. Comercial
- PMO riguroso con stage-gates y control de cambios
- Roles definidos por iniciativa (propietario, responsable técnico, patrocinador)
- Auditoría independiente en Security (penetration testing anual)

---

### ✅ Gestión de Riesgos

Matriz de riesgos de transformación:

- Identificación temprana: Resistencia vendedores, desincronización, caída Black Friday
- Planes de mitigación explícitos y responsables asignados
- Contingencias presupuestarias (15% de reserva)

---

## Preguntas de Reflexión para Estudiantes

1. **¿Por qué Gather-Analyze-Review es mejor que "directamente construir"?**→ Porque entender AS-IS evita soluciones que no casan con realidad operativa
2. **¿Qué pasa si saltas ANALYZE y vas directo a REVIEW?**→ Construyes tecnología sin entender brechas reales → Dinero desperdiciado
3. **¿Por qué I-006 (Seguridad) es "crítico" pero se ejecuta en paralelo a I-001?**→ Porque cada fase arquitectónica necesita estar asegurada desde el inicio, no "después"
4. **¿Cómo conecta esta transformación con el cambio organizacional?**→ Necesita capacitación masiva de 1,000s vendedores + cambio cultural de "por tienda" a "omnicanal"
5. **Si la inversión es $1.95M, ¿cuál es el caso de negocio?**→ 500K nuevos clientes × $200 margen anual × 5 años = $500M ingresos. ROI = 250x
6. **¿Cuál es el riesgo más crítico y por qué?**
   → Caída en Black Friday (impacto crítico). Mitiga con auto-scaling + CDN + testing riguroso

---

## 📚 Glosario de Términos

### Metodología Gather-Analyze-Review

- **Gather (Recopilar):** Fase 1 que documenta el estado AS-IS actual sin análisis
- **Analyze (Analizar):** Fase 2 que identifica ineficiencias, brechas e impactos
- **Review (Revisar):** Fase 3 que propone soluciones TO-BE y roadmap de implementación

### Marcos de Referencia

- **TOGAF:** The Open Group Architecture Framework — metodología estándar para Arquitectura Empresarial
- **ADM:** Architecture Development Method — método de TOGAF en 7 fases ordenadas
- **4 Dominios:** Negocio, Datos, Aplicaciones, Tecnología — pilares fundamentales de la AE
- **AS-IS:** Estado actual de la organización (línea base)
- **TO-BE:** Estado objetivo o visión futura que se desea alcanzar
- **Brecha (Gap):** Diferencia entre AS-IS y TO-BE que requiere cierre

### Los 4 Dominios de la Arquitectura Empresarial

- **Dominio Negocio:** Estrategia, procesos, capacidades, reglas de negocio. En Metro: omnicanalidad, experiencia cliente, automatización
- **Dominio Datos:** Información crítica, calidad de datos, governance. En Metro: CDP unificado, data warehouse, deduplicación 65%→99%
- **Dominio Aplicaciones:** Sistemas, APIs, integraciones, microservicios. En Metro: Salesforce Commerce Cloud, APIs real-time, microservicios
- **Dominio Tecnología:** Infraestructura, redes, seguridad, plataformas. En Metro: AWS, Kubernetes, Zero Trust, CDN global

### Elementos de la Matriz Gather-Analyze-Review (7 Filas)

- **PROBLEMA:** Situación fragmentada actual que causa dolor — canales separados, clientes duplicados, web colapsa
- **ENVIRONMENT:** Contexto externo (regulatorio, mercado, tecnología) — SUNAT, competencia omnicanal, cloud como estándar
- **OBJECTIVES:** Metas estratégicas — captar 500K clientes, recuperar 21% cuota mercado, soportar 10x picos
- **HUMAN ACTORS:** Personas involucradas (2,500 vendedores, 20 IT Ops) y sus resistencias al cambio
- **COMPUTER ACTORS:** Sistemas actuales (POS 2008, Magento 2, 3 BD aisladas) y sus problemas
- **ROLES & RESPONSIBILITIES:** Autoridades y procesos actuales (manual 2-3 días, perímetro clásico)
- **SÍNTESIS CONTEXTO:** Por qué es urgente (-$10M/mes potencial) y qué debe aprobarse antes Mes 1

### Las 6 Iniciativas del Portfolio

- **I-001 — Plataforma Commerce Omnicanal:** $800K, 12 meses, integra tienda+web+app+marketplace
- **I-002 — CDP + Data Warehouse:** $200K, 6 meses, crea single view de cliente
- **I-003 — Automatización Inventario:** $150K, 9 meses, sincronización real-time de 120 tiendas
- **I-004 — Migración AWS + Auto-scaling:** $400K, 12 meses, escalabilidad infinita
- **I-005 — API Gateway Real-time:** $250K, 9 meses, habilita marketplace e integraciones B2B
- **I-006 — Zero Trust + WAF:** $150K, 12 meses, seguridad moderna + compliance

### Las 4 Fases del Roadmap (18 meses)

- **Fase 1 — Fundación (M1-3):** Base tecnológica — CDP operativo, AWS producción, Zero Trust baseline
- **Fase 2 — Integración (M4-9):** APIs live, 80% inventario automatizado, 50K clientes piloto en omnicanal
- **Fase 3 — Escalabilidad (M10-15):** 120 tiendas + web + app sincronizados, Black Friday 10x, 300K omnicanal
- **Fase 4 — Optimización (M16-18):** 500K nuevos clientes, -25% costos operativos, cuota 21%, NPS 70

### Sistemas Actuales (AS-IS)

- **SIGA-POS:** Sistema antiguo en 120 tiendas (Windows 2008, Oracle 8i) — monolítico, sin APIs
- **E-commerce:** Magento 2 separado del POS — no sincroniza, uptime 97%
- **App Móvil:** React Native obsoleta — no integrada con canales
- **BD Clientes:** 3 bases de datos aisladas por canal — datos duplicados, sin visión integrada
- **Inventario:** CSV cada 24h — desincronización permanente entre tiendas y web
- **Reportería:** Excel + Power BI manual — no real-time, decisiones reactivas

### Arquitectura Objetivo (TO-BE)

- **Plataforma Commerce:** Omnicanal unificada (Salesforce Commerce Cloud con APIs REST/GraphQL)
- **Data Warehouse:** Centralizado con CDP (Snowflake + Segment) — 99% data quality
- **Automatización:** Sistema inventario AI-driven, aprobaciones automáticas con ML
- **Infraestructura:** AWS Kubernetes con auto-scaling, disaster recovery <15min RTO
- **Seguridad:** Zero Trust + WAF global, encrypted at rest/transit, SOC2 Type II
- **APIs:** Real-time de negocio, customer, orden, inventario, marketplace

### Tecnologías Clave: IA/ML

- **IA (Inteligencia Artificial):** Sistemas que realizan tareas que normalmente requieren inteligencia humana — chatbots, reconocimiento de voz, toma de decisiones automática
- **ML (Machine Learning):** Técnica de IA donde el sistema *aprende* de datos sin ser programado explícitamente — modelos que predicen demanda, detectan fraude, clasifican clientes
- **IA/ML en Metro:**
  - 🤖 **Recomendaciones personalizadas:** Cliente ve productos relevantes → **+30% canasta promedio**
  - 📊 **Predicción de demanda:** Anticipar picos (Black Friday, Cyber Monday) con precisión
  - 🛡️ **Detección de fraude:** Bloquear transacciones sospechosas en tiempo real
  - ✅ **Aprobación automática de créditos:** Scoring del cliente sin intervención manual
  - 📦 **Optimización de inventario:** Distribuir stock óptimamente entre 120 tiendas
- **Impacto Financiero:** 500K nuevos clientes × $30 extra (30% canasta) × 5 años = **$75M ingresos adicionales**
- **Requisito Técnico:** ML requiere datos limpios (99% data quality) + GPU en cloud (AWS)

### KPIs y Métricas de Éxito

**Negocio:**
- Omnicanal adoption: 10% → 80%
- Market share: 18% → 21%
- NPS (Net Promoter Score): 42 → 70
- Canasta promedio: +30%

**Datos:**
- Data quality: 65% deduplicación → 99%
- Análisis: Manual → Real-time dashboards
- Inventario desincronizado: 24h → Real-time

**Aplicaciones:**
- Bugs por release: 2-3 → <0.5
- Downtime: Frecuente → 0 horas/año
- Tiempo devolución: 2-3 días → 1 hora

**Tecnología:**
- Uptime: 97% → 99.99%
- Black Friday capacity: 1x normal → 10x
- RTO (Recovery Time): >12h → <15min
- Security incidents: 3/año → <1/año

### Métricas Financieras

- **Inversión Total:** $1.95M (6 iniciativas)
- **Ingresos Adicionales (5 años):** $100M
- **ROI:** 50x
- **Pérdida potencial/mes sin cambio:** -$10M
- **Caída Black Friday 2024:** -$300K

### Contexto de Negocio: Metro

- **Industria:** Retail — Cadena departamental
- **País:** Perú
- **Tamaño:** 120 puntos de venta, 3,500 empleados, 2M clientes actuales
- **Target:** Captar 500K nuevos clientes en 18 meses
- **Competencia:** Amazon, Falabella, Ripley, Saga (todos omnicanal)
- **Desafío principal:** Pérdida de clientes jóvenes (18-40)
- **Cuota mercado:** 25% (histórica 3 años atrás) → 18% (hoy)
- **Ventana crítica:** Black Friday 2026 (8 meses como deadline Fase 1)

### Actores Clave

- **Vendedores tiendas:** 2,500 personas — alto impacto por resistencia
- **Operadores almacén:** 500 personas — automatización requiere reskilling
- **Técnicos POS:** 150 personas — migración de sistemas legados
- **IT Operations:** 20 personas — soporte 24/7 nuevo sistema
- **Analistas datos:** 5 personas — herramientas BI nuevas
- **Gerentes regionales:** 12 personas — capacitación omnicanal
- **Estrategia & Comercial:** 8 personas — deben dirigir transformación
- **Steering Committee:** CEO, CFO, CTO, CDO, CISO — aprobación GO y presupuesto

### Riesgos Críticos

- **Cumplimiento SUNAT:** Regulatorio, alta probabilidad, crítico — mitigar con I-001 + I-002
- **Pérdida a competencia:** Mercado, alta probabilidad, crítico — mitigar con I-001, I-002, I-005
- **Caída Black Friday:** Mercado + Tech, media probabilidad, crítico — mitigar con I-004 + I-006
- **Violación datos:** Regulatorio + Tech, media probabilidad, crítico — mitigar con I-006
- **Deuda técnica impagable:** Tecnología, alta probabilidad, alto impacto — mitigar con I-001 + I-003

### Acrónimos y Roles Ejecutivos

**Roles C-Level (Ejecutivos Principales):**
- **CEO:** Chief Executive Officer — Ejecutivo principal, responsable de estrategia global y resultados
- **CFO:** Chief Financial Officer — Jefe de Finanzas; responsable de ROI, presupuesto, aprobaciones financieras
- **CTO:** Chief Technology Officer — Jefe de Tecnología; responsable de arquitectura, infraestructura, decisiones técnicas
- **CDO:** Chief Data Officer — Jefe de Datos; responsable de governance de datos, calidad, privacidad
- **CISO:** Chief Information Security Officer — Jefe de Seguridad; responsable de Zero Trust, compliance, penetration testing

**Métricas Financieras:**
- **ROI (Return on Investment):** Retorno sobre inversión — Ingresos ganados ÷ Inversión inicial. En Metro: **$100M ÷ $1.95M = 50x** en 5 años
- **NPV (Net Present Value):** Valor presente neto — Beneficios netos descontados a presente; usado para decisiones de inversión
- **Margen:** Ganancia por cliente/transacción. En Metro: $200/cliente/año con IA/ML

**Tecnologías y Marcos:**
- **TOGAF:** The Open Group Architecture Framework — Metodología estándar de AE
- **ADM:** Architecture Development Method — Método TOGAF en 7 fases
- **COBIT:** Control Objectives for Information and related Technology — Governance y control de TI
- **CDP:** Customer Data Platform — Plataforma centralizada de datos de cliente (única fuente de verdad)
- **IA/ML:** Inteligencia Artificial + Machine Learning — Sistemas que aprenden de datos para tomar decisiones
- **APIs:** Application Programming Interfaces — Interfaces para integración real-time entre sistemas
- **Zero Trust:** Arquitectura de seguridad basada en "nunca confiar, siempre verificar"
- **WAF:** Web Application Firewall — Firewall de aplicación web para protección contra ataques

**Operacionales:**
- **AS-IS:** Estado actual (línea base)
- **TO-BE:** Estado objetivo (visión futura)
- **Gap:** Brecha entre AS-IS y TO-BE
- **PMO:** Program Management Office — Oficina de gestión de programas (administra iniciativas)
- **RACI:** Responsible, Accountable, Consulted, Informed — Matriz de roles y responsabilidades
- **RTO/RPO:** Recovery Time/Point Objective — Tiempo/punto máximo de recuperación ante desastres
- **SLA:** Service Level Agreement — Acuerdo de nivel de servicio (uptime, disponibilidad)

---

## Conexión con Conceptos de Clase

- **TOGAF/ADM:** Gather-Analyze-Review demuestra ciclo completo de ADM
- **4 Dominios:** Cada iniciativa cruza uno o más dominios de forma integrada
- **Alineamiento Estratégico:** ROI de 50x justifica inversión en transformación
- **Gestión Portafolio:** 6 iniciativas con dependencias explícitas (I-005 requiere I-001 al 50%)
- **Gobernanza/COBIT:** Steering committee, PMO riguroso, stage-gates, RACI matrix, auditoría SOC2

---

## Conclusión

Este escenario demuestra que **Arquitectura Empresarial transforma decisiones** de conceptual a operacional:

✅ **Gather:** Entienden problemas reales
✅ **Analyze:** Identifican brechas y oportunidades
✅ **Review:** Ejecutan con coherencia estratégica

**Sin este enfoque**, Metro sería otro minorista que intenta "hacer omnicanal" comprando soluciones aisladas (POS + e-commerce + CDP) que nunca se integran.

**Con este roadmap**, logra:

- 🎯 Experiencia omnicanal consistente
- 📊 Datos unificados para decisiones
- 💻 Aplicaciones integradas
- 🔒 Tecnología resiliente en picos de demanda
