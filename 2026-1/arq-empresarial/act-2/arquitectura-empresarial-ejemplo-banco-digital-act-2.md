# Escenario de Transformación: MegaStore — Ejemplo de Arquitectura Empresarial

**Curso:** Arquitectura Empresarial (ISIL, 2026-1)  
**Tipo:** Actividad 2 — Caso Práctico  
**Metodología:** Gather → Analyze → Review  
**Continuidad:** Desarrollo de Actividad 1 (MegaStore)  
**Fecha:** Mayo 2026

---

## 📋 Tabla de Contenidos

1. [Contexto General](#contexto-general)
2. [GATHER: Recopilación del Estado Actual](#gather-recopilación-del-estado-actual)
3. [ANALYZE: Análisis de Ineficiencias y Brechas](#analyze-análisis-de-ineficiencias-y-brechas)
4. [REVIEW: Soluciones Propuestas](#review-soluciones-propuestas)
5. [Conexión con Conceptos de Clase](#conexión-con-conceptos-de-clase)

---

## Contexto General

**Organización:** MegaStore S.A.  
**Industria:** Retail — Cadena de Tiendas Departamentales  
**País:** Perú  
**Tamaño:** 3,500 empleados, 120 puntos de venta, 2 millones de clientes activos  
**Período de Análisis:** Mayo 2026

**Objetivo Estratégico:** Transformar arquitectura de retail fragmentada a omnicanal integrada, capturando 500,000 nuevos clientes en 18 meses y recuperando cuota de mercado del 25% (histórica) desde actual 18%.

---

## GATHER: Recopilación del Estado Actual

### 🎯 PROBLEMA

**Situación Actual:**  
MegaStore lleva 18 años operando en retail tradicional con arquitectura fragmentada por canal:
- 120 tiendas físicas como canal principal
- E-commerce básico (web separado, sin integración)
- Sistemas POS antiguos en tiendas (sin sincronización real-time)
- Datos de clientes duplicados por canal (tienda ≠ web ≠ app)
- Inventario desbalanceado entre canales
- App móvil obsoleta

**Síntomas Clave:**
- Clientes jóvenes (18-40) migrando a e-commerce puro (Amazon, Falabella, Ripley)
- Tráfico en tiendas cayendo 10% anual
- Plataforma web colapsa en Black Friday y Cyber Monday
- Cuota de mercado cayendo: 25% (histórico) → 18% (actual) en 3 años

**Impacto:** Sin omnicanalidad integrada, seguirá perdiendo clientes y capacidad de reacción a picos de demanda.

---

### 🌍 ENVIRONMENT (Entorno)

**Contexto Regulatorio:**
- Regulación SUNAT: Facturación obligatoria en todos los canales
- Normas de protección de datos personales cada vez más estrictas
- Requisitos de auditoría crecientes

**Contexto de Mercado:**
- Competencia omnicanal: Falabella, Ripley, Saga, Amazon ya operan en Perú
- Expectativa de clientes: Buscar en app, comprar en web, recoger en tienda, devolver sin fricción
- Concentración de ventas en picos (Black Friday = 20% anual, Cyber Monday = 10% anual)
- Tender hacia marketplace: Usuarios esperan encontrar MegaStore en Mercado Libre, Amazon, OLX

**Tendencias Tecnológicas:**
- Cloud computing es estándar (no excepción)
- APIs real-time para integración B2B
- Expectativa de seguridad Zero Trust
- IA/ML aplicada a recomendaciones personalizadas

---

### 🎯 OBJECTIVES (Objetivos de Negocio)

1. **Retener y crecer clientes jóvenes** (18-40): Captar 500K nuevos clientes en 18 meses
2. **Recuperar cuota de mercado:** De 18% a 21% (acercarse a histórico 25%)
3. **Soportar picos sin colapso:** Black Friday/Cyber Monday sin caídas
4. **Mejorar experiencia omnicanal:** Cliente "es uno" en todos los canales
5. **Incrementar rentabilidad:** Reducción de costos operativos 25% con automatización

**Meta Financiera:** ROI de 50x en 5 años (inversión $1.95M → ingresos adicionales $100M)

---

### 👥 HUMAN ACTORS (Actores Humanos)

| Actor | Rol | Responsabilidades Clave | Impacto en Transformación |
|-------|-----|------------------------|-------------------------|
| Vendedores en tiendas | 2,500 personas | Asesoría, cierre de ventas, devoluciones | Alto — Resistencia inicial, capacitación necesaria |
| Analistas de Datos | 5 personas | Reportes, análisis, auditoría | Medio — Necesitan herramientas BI nuevas |
| Técnicos POS | 150 personas | Mantenimiento de sistemas en tiendas | Alto — Migración de POS antiguo a nuevo |
| Operadores de Almacén | 500 personas | Gestión de inventario, picking, packing | Alto — Automatización requiere cambio de procesos |
| Gerentes Regionales | 12 personas | Supervision regional, cumplimiento de metas | Medio — Necesitan capacitación en omnicanal |
| IT Operations | 20 personas | Mantenimiento infraestructura, vigilancia 24/7 | Crítico — Soporte 24/7 en nuevo sistema |
| Estrategia & Comercial | 8 personas | Decisiones de negocio, pricing, promos | Crítico — Deben dirigir la transformación |

**Desafío Clave:** Vendedores tienen aversión al cambio. Necesitan incentivos claros y capacitación continua.

---

### 💻 COMPUTER ACTORS (Sistemas Actuales)

| Sistema | Función | Tecnología | Problemas |
|---------|---------|-----------|----------|
| **SIGA-POS** | Punto de venta en tiendas (120 equipos) | Windows Server 2008, Oracle 8i | Antiguo, lento, sin APIs, monolítico |
| **E-commerce Web** | Plataforma web separada | Magento 2.x, MySQL | No sincroniza con tiendas, bajo uptime (97%) |
| **App Móvil** | App iOS/Android | React Native (obsoleta) | No integrada, no sincroniza, baja adopción |
| **Base de Datos Clientes** | CRM por canal | 3 bases de datos aisladas | Datos duplicados, sin sincronización |
| **Sistema de Inventario** | Gestión de stock | Exporta CSV cada 24h | Desincronización permanente |
| **Reportería** | BI y análisis | Excel + Power BI manual | Reportes diarios, no real-time |

**Integración Actual:** Archivos CSV cada 24 horas. Sin APIs. Sin real-time.

---

### 🏗️ ROLES & RESPONSIBILITIES (AS-IS)

| Responsabilidad | Área Actual | Problemas |
|-----------------|-----------|----------|
| Aprobación de créditos/devoluciones | Manual, gerente de tienda | Toma 2-3 días |
| Sincronización de inventario | Manual, cada 24h | Desincronización permanente |
| Resolución de problemas técnicos | Call center centralizado | Tiempo promedio 4-6 horas |
| Análisis de demanda | Manual semanal | No predictivo, reactivo |
| Seguridad de datos | Perímetro clásico | Vulnerable a ataques |
| Compliance regulatorio | Auditores externos 1x año | No continuo, reactivo |

**Conclusión GATHER:** Arquitectura actual es funcional pero fragmentada. Cada canal opera como "silos". Imposible escalar sin ruptura estructural.

---

## ANALYZE: Análisis de Ineficiencias y Brechas

### 📊 Matriz de Dominios AS-IS: Ineficiencias Identificadas

#### 1️⃣ DOMINIO NEGOCIO — Problemas AS-IS

| Aspecto | Situación Actual | Ineficiencia | Impacto Comercial |
|---------|------------------|-------------|------------------|
| **Canales de Venta** | Tiendas + Web separados | Fricción cliente, inventario duplicado | Cliente compra en Amazon, no en MegaStore |
| **Experiencia Cliente** | Inconsistente entre canales | Precios, promos, disponibilidad distintos | NPS 42 (bajo) |
| **Procesos** | Manuales en inventario/devoluciones | Toma 2-3 días procesar devolución | Pérdida de confianza, compras impulsivas disminuyen |
| **Productos** | Catálogo estático, sin personalización | Recomendaciones genéricas | Canasta promedio baja vs. competencia |

**Conclusión:** Sin omnicanalidad integrada, cada canal compite internamente por clientes en lugar de colaborar.

---

#### 2️⃣ DOMINIO DATOS — Problemas AS-IS

| Aspecto | Situación Actual | Ineficiencia | Impacto Operativo |
|---------|------------------|-------------|------------------|
| **Almacenamiento** | BD separadas por canal: POS, e-commerce, social | Cliente "es múltiple" = sin visión integrada | Marketing no personalizado |
| **Unificación** | Clientes duplicados entre canales | Imposible hacer recomendaciones personalizadas | Baja relevancia, alta tasa de abandono |
| **Inventario** | Distribuido, desincronizado 24h | Stock duplicado o desabasto por descoordinación | Overselling o stockouts |
| **Análisis** | Reportes manuales, demoras días | Decisiones reactivas, no predictivas | Miss de oportunidades de demanda |

**Conclusión:** Sin datos consolidados no hay inteligencia de negocio real.

---

#### 3️⃣ DOMINIO APLICACIONES — Problemas AS-IS

| Aspecto | Situación Actual | Ineficiencia | Impacto Técnico |
|---------|------------------|-------------|------------------|
| **Plataformas** | POS antiguo (120 tiendas) + E-commerce separado + App obsoleta | Alto mantenimiento, baja calidad, deuda técnica | Bugs frecuentes, downtime sin previo aviso |
| **Integraciones** | CSV cada 24h entre canales | Desincronización permanente, errores | Reportes incorrectos, decisiones malas |
| **Catálogo** | Separado por canal | Precios y disponibilidad distintos | Confusión en cliente, devoluciones por error |
| **Devoluciones** | Proceso manual por canal | 2-3 días para procesar | Insatisfacción, baja tasa de recompra |

**Conclusión:** Arquitectura técnica antigua es cuello de botella para crecer.

---

#### 4️⃣ DOMINIO TECNOLOGÍA — Problemas AS-IS

| Aspecto | Situación Actual | Ineficiencia | Impacto Operativo |
|---------|------------------|-----------|------------------|
| **Infraestructura** | On-premise: 3-4 servidores en 1 data center | Capacidad fija, colapsa en picos | Black Friday caídas de 4-6 horas |
| **Disponibilidad** | Uptime 97% | Pierde ventas en picos | $300K pérdida por Black Friday 2024 |
| **Seguridad** | Perímetro clásico (firewall) | Vulnerable a ataques web, DDoS | Riesgo de breach datos clientes |
| **Continuidad** | Recuperación manual >12h | Terremoto/incendio cierra la empresa | Exposición a riesgo existencial |

**Conclusión:** Sin escalabilidad en nube, no puede soportar crecimiento omnicanal.

---

### ⚠️ Riesgos Identificados (Análisis)

---

## REVIEW: Soluciones Propuestas

### ✅ Matriz de Dominios TO-BE: Arquitectura Objetivo

#### 1️⃣ DOMINIO NEGOCIO — Solución Propuesta

| Aspecto | AS-IS | Brecha | TO-BE (Objetivo) | Timeline | Beneficio |
|---------|-------|--------|-----------------|----------|-----------|
| **Canales de Venta** | Tiendas + Web separados | Fricción cliente, inventario duplicado | Omnicanal integrado (tienda + web + app + click&collect + marketplace) | 12 meses | 80% clientes en omnicanal |
| **Experiencia Cliente** | Inconsistente (precios/promos distintos) | NPS bajo | Experiencia uniforme: cliente "es uno" en todos lados, inventario visible | 12 meses | NPS 42 → 70 |
| **Procesos** | Manuales, toma 2-3 días devolución | Baja confianza | Automáticos, devolución en 1 hora en cualquier canal | 9 meses | 99% satisfacción |
| **Productos** | Catálogo estático | Recomendaciones genéricas | Catálogo dinámico + IA personalizada | 12 meses | +30% canasta promedio |

---

#### 2️⃣ DOMINIO DATOS — Solución Propuesta

| Aspecto | AS-IS | Brecha | TO-BE (Objetivo) | Timeline | Beneficio |
|---------|-------|--------|-----------------|----------|-----------|
| **Almacenamiento** | BD separadas por canal | Sin visión integrada | Data Warehouse central + CDP omnicanal | 6 meses | Single view de cliente |
| **Unificación** | Clientes duplicados, sin sincronización | Marketing no personalizado | Perfil único (1 cliente = 1 ID) | 9 meses | Relevancia +40% |
| **Inventario** | Distribuido, desincronizado 24h | Stock duplicado/desabasto | Centralizado, real-time, 5 nodos | 6 meses | Overselling 0%, stockout -50% |
| **Análisis** | Reportes manuales, días de demora | Decisiones reactivas | BI real-time + predicción demanda con ML | 9 meses | Decisiones en <1h |

---

#### 3️⃣ DOMINIO APLICACIONES — Solución Propuesta

| Aspecto | AS-IS | Brecha | TO-BE (Objetivo) | Timeline | Beneficio |
|---------|-------|--------|-----------------|----------|-----------|
| **Plataformas** | 3 sistemas aislados | Deuda técnica, bugs | Plataforma commerce unificada (Salesforce Commerce Cloud) | 12 meses | Mantenimiento -60% |
| **Integraciones** | CSV cada 24h | Desincronización | APIs real-time (REST + GraphQL) | 9 meses | Latencia <100ms |
| **Catálogo** | Separado por canal | Precios/disponibilidad distintos | Catálogo único en tiempo real | 6 meses | Consistencia 100% |
| **Devoluciones** | Manual, 2-3 días | Fricción | Automáticas interchannel (1h) | 9 meses | Recompra +25% |

---

#### 4️⃣ DOMINIO TECNOLOGÍA — Solución Propuesta

| Aspecto | AS-IS | Brecha | TO-BE (Objetivo) | Timeline | Beneficio |
|---------|-------|--------|-----------------|----------|-----------|
| **Infraestructura** | On-premise, capacidad fija | Colapsa en picos | AWS híbrida con auto-scaling + CDN global | 12 meses | Escalabilidad infinita |
| **Disponibilidad** | Uptime 97% | Black Friday caídas | Uptime 99.99% (redundancia, load balancing) | 12 meses | 0 caídas Black Friday |
| **Seguridad** | Perímetro clásico | Vulnerable | Zero Trust + WAF + pen testing anual | 12 meses | 0 incidents críticos |
| **Continuidad** | Recuperación manual >12h | Riesgo existencial | Disaster recovery automático, RTO <15min | 9 meses | Resiliencia 24/7 |

---

### 🚀 Iniciativas Ejecutables (Portfolio)

Descomposición de la transformación en **6 iniciativas**, con dependencias, riesgos y beneficios:

| ID | Iniciativa | Dominio(s) | Duración | Inversión | Riesgo | Beneficio | Start |
|----|-----------|----------|---------|-----------|-------|---------|-------|
| **I-001** | Plataforma Commerce Omnicanal | Negocio + Apps | 12m | $800K | 🟡 Medio | 🔴 Crítico | Mes 1 |
| **I-002** | Data Warehouse + CDP | Datos | 6m | $200K | 🟢 Bajo | 🔴 Alto | Mes 1 |
| **I-003** | Automatización Inventario/Procesos | Negocio + Apps | 9m | $150K | 🟢 Bajo | 🔴 Alto | Mes 1 |
| **I-004** | Migración AWS + Auto-scaling | Tecnología | 12m | $400K | 🟡 Medio | 🔴 Alto | Mes 1 |
| **I-005** | API Gateway Real-time | Apps | 9m | $250K | 🟢 Bajo | 🟡 Medio | Mes 4 |
| **I-006** | Seguridad Zero Trust + WAF | Tecnología | 12m | $150K | 🟡 Medio | 🔴 Crítico | Mes 1 |

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

| Riesgo | Probabilidad | Impacto | Mitigación | Responsable |
|--------|------------|--------|-----------|-------------|
| Resistencia de vendedores en tiendas | 🔴 Alta | 🔴 Alto | Comunicación clara de beneficios + capacitación continua + incentivos por ventas omnicanal | Dir. RRHH + Dir. Ventas |
| Desincronización de inventario | 🔴 Alta | 🟡 Medio | Testing riguroso pre-rollout, sincronización redundante, alertas en tiempo real | CTO + Dir. Operaciones |
| Caída en Black Friday | 🟡 Media | 🔴 Crítico | Load testing pre-evento, auto-scaling, CDN global, balanceadores redundantes | Dir. Infraestructura |
| Falta de talento tecnológico | 🔴 Alta | 🟡 Medio | Recruiting 6 meses antes + capacitación interna + outsourcing select (Accenture, Deloitte) | Dir. Talento |
| Seguridad de datos clientes | 🟡 Media | 🔴 Crítico | Zero Trust + penetration testing anual + bug bounty + auditoría SOC2 | CISO + Dir. Seguridad |
| Presupuesto desbordado | 🟡 Media | 🟡 Medio | PMO riguroso, governance de cambios, stage-gates, reserva de contingencia 15% | PMO + CFO |

---

### 📊 KPIs de Éxito (Métricas de Impacto)

#### 🎯 KPIs de Negocio

| KPI | Baseline AS-IS | Meta TO-BE | Frecuencia | Responsable |
|-----|-------|--------|-----------|-------------|
| Clientes activos omnicanal | 200K (10%) | 1.6M (80%) | Mensual | Dir. Comercial |
| Nuevos clientes adquiridos (18m) | — | 500K | Mensual | Dir. Comercial |
| Cuota de mercado | 18% | 21% | Trimestral | Dir. Estrategia |
| NPS (Net Promoter Score) | 42 | 70 | Mensual | Dir. Experiencia |
| % ventas omnicanal | 5% | 60% | Semanal | Dir. Ventas |
| Canasta promedio | $35 | $45 (+28%) | Mensual | Dir. Comercial |

#### 📊 KPIs de Datos

| KPI | Baseline | Meta | Frecuencia | Responsable |
|-----|----------|------|-----------|-------------|
| Cobertura CDP (clientes con perfil único) | 0% | 100% | Mensual | Dir. Datos |
| Calidad datos (deduplicación) | 65% | 99% | Semanal | Data Steward |
| Lag inventario | 24h | Real-time (<100ms) | Diaria | Dir. Operaciones |
| Cobertura análisis predictivo | 10% | 90% | Mensual | Data Science Lead |

#### 💻 KPIs de Aplicaciones

| KPI | Baseline | Meta | Frecuencia | Responsable |
|-----|----------|------|-----------|-------------|
| Canales integrados | 3 | 5 (+ marketplace + social) | Trimestral | CTO |
| Uptime plataforma | 97% | 99.99% | Diaria | Dir. Operaciones |
| Velocidad deploy (release frequency) | 1/mes | 1/semana | Semanal | Director DevOps |
| Tasa de errores aplicación | 0.5% | 0.01% | Diaria | QA Lead |

#### 🔒 KPIs de Tecnología

| KPI | Baseline | Meta | Frecuencia | Responsable |
|-----|----------|------|-----------|-------------|
| Uptime infraestructura | 97% | 99.99% | Diaria | Dir. Infraestructura |
| Capacidad Black Friday (vs. normal) | 1x | 10x | Trimestral | Dir. Infraestructura |
| Incidentes seguridad críticos | 3/año | <1/año | Mensual | CISO |
| RTO (Recovery Time Objective) | >12h | <15min | Semestral | Dir. Continuidad |

---

## Conexión con Conceptos de Clase

Este escenario **expande el análisis de Actividad 1** con un nivel operacional concreto.

En **Act-1**, se identificaron los 4 dominios y las brechas AS-IS vs TO-BE de MegaStore.  
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

1. **¿Qué pasa si las fases no respetan las dependencias?**  
   → Las iniciativas I-004 y I-006 fallarían porque necesitan I-005 operativo

2. **¿Por qué la seguridad (I-006) es crítica pero se ejecuta en paralelo?**  
   → Porque cada fase necesita estar asegurada desde el inicio. No puede ser "después"

3. **¿Cómo conecta esto con el COBIT visto en Clase 4?**  
   → PMO con governance riguroso, auditoría independiente, control de cambios basado en políticas

4. **Si la inversión es $1.52M, ¿cómo se justifica?**  
   → 100K clientes × $150 margen promedio × 5 años = $75M ingresos adicionales. ROI = 50x

5. **¿Qué modelos de madurez (Clase 6) aplican aquí?**  
   → BancoXYZ hoy está en TOGAF CMM nivel 1-2. Target es nivel 3-4 tras transformación

---

## Conclusión

Este escenario **expande el análisis de Actividad 1** con un nivel operacional concreto usando la metodología **Gather-Analyze-Review**.

**En Act-1** se identificaron los 4 dominios y las brechas AS-IS vs TO-BE de MegaStore.  
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

1. **¿Por qué Gather-Analyze-Review es mejor que "directamente construir"?**  
   → Porque entender AS-IS evita soluciones que no casan con realidad operativa

2. **¿Qué pasa si saltas ANALYZE y vas directo a REVIEW?**  
   → Construyes tecnología sin entender brechas reales → Dinero desperdiciado

3. **¿Por qué I-006 (Seguridad) es "crítico" pero se ejecuta en paralelo a I-001?**  
   → Porque cada fase arquitectónica necesita estar asegurada desde el inicio, no "después"

4. **¿Cómo conecta esta transformación con el cambio organizacional?**  
   → Necesita capacitación masiva de 1,000s vendedores + cambio cultural de "por tienda" a "omnicanal"

5. **Si la inversión es $1.95M, ¿cuál es el caso de negocio?**  
   → 500K nuevos clientes × $200 margen anual × 5 años = $500M ingresos. ROI = 250x

6. **¿Cuál es el riesgo más crítico y por qué?**  
   → Caída en Black Friday (impacto crítico). Mitiga con auto-scaling + CDN + testing riguroso

---

## Conclusión

Este escenario demuestra que **Arquitectura Empresarial transforma decisiones** de conceptual a operacional:

✅ **Gather:** Entienden problemas reales  
✅ **Analyze:** Identifican brechas y oportunidades  
✅ **Review:** Ejecutan con coherencia estratégica

**Sin este enfoque**, MegaStore sería otro minorista que intenta "hacer omnicanal" comprando soluciones aisladas (POS + e-commerce + CDP) que nunca se integran.

**Con este roadmap**, logra:
- 🎯 Experiencia omnicanal consistente
- 📊 Datos unificados para decisiones
- 💻 Aplicaciones integradas
- 🔒 Tecnología resiliente en picos de demanda
