# Solución: Actividad 1 — Arquitectura Empresarial

**Curso:** Arquitectura Empresarial (ISIL, 2026-1)  
**Actividad:** 1  
**Tema:** Análisis de Arquitectura Empresarial en una Organización Real  
**Fecha:** Abril 2026

---

## Instrucciones de la Actividad

Analizar una organización real (sector banca, educación, retail, salud u otro) e identificar:

1. **Estado actual (AS-IS):** Cómo está organizada hoy.
2. **Estado objetivo (TO-BE):** Hacia dónde quiere ir.
3. **Brecha:** Qué falta cerrar.
4. **Dominios de AE:** Negocio, Datos, Aplicaciones y Tecnología.
5. **Roadmap:** Prioridades y fases de implementación.

---

## Caso de Estudio: Banco Comercial "BancoXYZ"

### Contexto

**BancoXYZ** es un banco comercial con 25 años en el mercado, 2,500 empleados, 120 sucursales y 800,000 clientes. Enfrenta presión de fintech y necesita transformar su servicio digital para mantener competitividad.

---

## 1. Análisis del Estado Actual (AS-IS)

### 1.1 Situación General

- **Infraestructura:** Servidores monolíticos en data center central (Lima).
- **Canales:** Sucursales físicas, ATMs, banca online 1.0 (básica), banca móvil limitada.
- **Procesos:** Manuales en muchas áreas (aprobación de créditos, onboarding).
- **Sistemas:** Plataforma core legacy (20+ años), múltiples sistemas desconectados por área.
- **Datos:** Silos por departamento, sin visión integrada del cliente.
- **Seguridad:** Basada en perímetro, poco en API o transacciones en tiempo real.

### 1.2 Los Cuatro Dominios (AS-IS)

#### **Negocio**
| Aspecto | Descripción |
|---------|-------------|
| Estrategia | Retención de clientes, crecimiento en banca digital |
| Procesos | Aprobación manual de créditos (3-5 días), onboarding presencial |
| Capacidades | Depósitos, retiros, transferencias, créditos, seguros |
| Limitaciones | Procesos lentos, experiencia fragmentada |

#### **Datos**
| Aspecto | Descripción |
|---------|-------------|
| Fuentes | Múltiples bases de datos por canal (sucursal, web, ATM) |
| Integración | Baja integración, reportes manuales cada cierre |
| Calidad | Datos duplicados, inconsistencias entre canales |
| Gobierno | No existe, cada área gestiona sus datos |

#### **Aplicaciones**
| Aspecto | Descripción |
|---------|-------------|
| Core Banking | Sistema monolítico, difícil de mantener |
| Canales | Desarrollos separados por cada canal (web, móvil, sucursal) |
| Integraciones | Via archivos (ETL) cada 24 horas |
| Gobernanza | Cada área decide tecnología, sin estándares |

#### **Tecnología**
| Aspecto | Descripción |
|---------|-------------|
| Infraestructura | Data center central on-premise, sin redundancia geográfica |
| Redes | Conexiones punto a punto hacia sucursales (lenta, cara) |
| Seguridad | Firewall perimetral, acceso basado en usuarios |
| Soporte | Vendedor único, contratos caros, evolución lenta |

---

## 2. Estado Objetivo (TO-BE)

### 2.1 Visión Estratégica

**"Ser el banco digital preferido para clientes modernos: experiencia omnicanal, decisiones en tiempo real y seguridad de clase mundial."**

### 2.2 Los Cuatro Dominios (TO-BE)

#### **Negocio**
| Aspecto | Objetivo |
|---------|----------|
| Estrategia | Liderazgo en banca digital, expansión a fintechs |
| Procesos | Aprobación de créditos en <1 hora (vía reglas automáticas) |
| Capacidades | Todas las actuales + servicios financieros adicionales, inversiones, remesas |
| Ventaja | Experiencia omnicanal, asesoría personalizada vía IA |

#### **Datos**
| Aspecto | Objetivo |
|---------|----------|
| Fuentes | Data lake centralizado con datos en tiempo real |
| Integración | APIs que integren todos los canales |
| Calidad | Data governance robusta, data quality 99.9% |
| Gobierno | Chief Data Officer (CDO), políticas de privacidad claras |

#### **Aplicaciones**
| Aspecto | Objetivo |
|---------|----------|
| Core Banking | Microservicios modular (reemplazar monolito) |
| Canales | Plataforma única de front-end, adaptable a cada canal |
| Integraciones | APIs síncronas en tiempo real |
| Gobernanza | Estándares globales, arquitectura definida por CTO |

#### **Tecnología**
| Aspecto | Objetivo |
|---------|----------|
| Infraestructura | Nube híbrida (AWS/Azure), disaster recovery en 2ª región |
| Redes | Conectividad vía VPN y CDN, latencia <100ms sucursales |
| Seguridad | Zero Trust, encriptación end-to-end, compliance PCI-DSS |
| Soporte | Múltiples proveedores, modelo de servicios gestionados |

---

## 3. Análisis de Brecha (Gap Analysis)

### 3.1 Brecha por Dominio

| Dominio | AS-IS | TO-BE | Brecha | Prioridad |
|---------|-------|-------|--------|-----------|
| **Negocio** | Procesos manuales | Automatizados | Rediseño de flujos | Media |
| **Datos** | Silos desconectados | Data lake + APIs | Integración completa | **Alta** |
| **Aplicaciones** | Monolito legacy | Microservicios | Modernización | **Alta** |
| **Tecnología** | On-premise | Nube híbrida | Migración infraestructura | **Alta** |

### 3.2 Principales Desafíos

1. **Técnico:** Desacoplar monolito sin romper servicios críticos.
2. **Organizacional:** Cambio en roles (DevOps, Cloud Engineers, Data Scientists).
3. **Financiero:** Inversión inicial alta (~$15M USD).
4. **Riesgo:** Pérdida de clientes si migración falla.

---

## 4. Matriz Zachman Simplificada (Análisis TO-BE)

### Perspectiva: Data/Información

| Pregunta | Contexto (Planner) | Concepto (Owner) | Diseño (Designer) | Construcción (Builder) |
|----------|-------------------|-----------------|------------------|----------------------|
| **QUÉ (Data)** | Datos de clientes, cuentas, transacciones | Entidades principales | Modelo ER normalizado | Schema PostgreSQL/MongoDB |
| **CÓMO (Procesos)** | Aprobación, depósitos, retiros | Reglas de negocio | APIs REST, eventos | Microservicios Go/Python |
| **DÓNDE (Distribución)** | Sucursales, nube, cliente | Canales: web, móvil, ATM | Servicios distribuidos | AWS EC2, Lambda, RDS |
| **QUIÉN (Roles)** | Ejecutivos, gerentes, operarios | Data Officer, Dev Lead | Arquitectos, Devs | DevOps, SREs |
| **CUÁNDO (Tiempo)** | Transformación 2026-2028 | Fases Q1-Q4 | Sprints de 2 semanas | Entregas incrementales |
| **POR QUÉ (Estrategia)** | Competir con fintech | Mejorar experiencia cliente | Reducir costo operativo | Cumplir SLAs 99.99% |

---

## 5. Roadmap Arquitectónico (Hoja de Ruta)

### Fases de Implementación

#### **Fase 1: Cimientos (Q1-Q2 2026)**
**Objetivo:** Preparar la infraestructura y el equipo.

| Iniciativa | Entrega | Recurso | Duración | Impacto |
|-----------|---------|---------|----------|---------|
| Infraestructura nube | Ambiente AWS/Azure + networking | 4 personas (DevOps) | 8 semanas | **Alto** (base para todo) |
| Data lake inicial | Ingesta en tiempo real (API) | 3 personas (Data Eng) | 10 semanas | **Alto** (datos centralizados) |
| Equipo de transformación | Hiring DevOps, Cloud Architects | Recursos | 12 semanas | **Medio** (capacidad) |

**Resultado esperado:** Infraestructura lista, equipo conformado, primeros datos en la nube.

---

#### **Fase 2: Núcleo de Negocio (Q3 2026 - Q1 2027)**
**Objetivo:** Replantear los servicios bancarios críticos como microservicios.

| Iniciativa | Entrega | Recurso | Duración | Impacto |
|-----------|---------|---------|----------|---------|
| API Gateway | Punto de entrada unificado | 2 personas (Backend) | 6 semanas | **Medio** (integración) |
| Microservicios: Cuentas | Servicio independiente de cuentas | 4 personas | 8 semanas | **Alto** (core) |
| Microservicios: Créditos | Motor de decisión automática (ML) | 5 personas | 12 semanas | **Alto** (negocio) |
| Integración canales | Unificar web, móvil, sucursal | 3 personas (Frontend) | 10 semanas | **Medio** (experiencia) |

**Resultado esperado:** Servicios críticos en microservicios, canales integrados, aprobación de créditos <1 hora.

---

#### **Fase 3: Experiencia y Asesoría (Q2-Q3 2027)**
**Objetivo:** Diferenciarse con servicios inteligentes y personalizados.

| Iniciativa | Entrega | Recurso | Duración | Impacto |
|-----------|---------|---------|----------|---------|
| IA/ML: Recomendaciones | Motor de ofertas personalizadas | 4 personas (Data Science) | 14 semanas | **Medio** (valor agregado) |
| IA/ML: Detección de fraude | Análisis en tiempo real | 3 personas | 10 semanas | **Alto** (seguridad) |
| Portal de asesoría digital | Chatbot + asesor virtual | 3 personas (AI/UX) | 12 semanas | **Medio** (servicio) |

**Resultado esperado:** Servicios predictivos, reducción de fraude, aumento de retención.

---

#### **Fase 4: Optimización y Escala (Q4 2027 - Q2 2028)**
**Objetivo:** Consolidar, optimizar y escalar globalmente.

| Iniciativa | Entrega | Recurso | Duración | Impacto |
|-----------|---------|---------|----------|---------|
| Multiregión y DR | Disaster recovery en segundo data center | 2 personas (DevOps) | 8 semanas | **Alto** (continuidad) |
| Compliant FinTech APIs | Abrir servicios a terceros (open banking) | 3 personas | 10 semanas | **Medio** (ecosistema) |
| Optimización de costos | Mejora de eficiencia en nube | 2 personas | 6 semanas | **Medio** (margen) |

**Resultado esperado:** Arquitectura resiliente, nueva línea de negocio (open banking), márgenes mejorados.

---

## 6. Matriz Impacto vs Esfuerzo

```
                    ESFUERZO
                  Bajo     Alto
        ┌─────────────────────────┐
   Alto │ Q1: Nube ⭐             │ Q2-Q3: IA/ML, APIs   │
        │ Q1: Data Lake ⭐        │ Q3-Q4: Multiregión   │
I   ┤   │                         │ Q4: Open Banking     │
M       │ Q2: API Gateway ⭐      │                       │
P   Medio│ Q2: Microservicios    │                       │
A       │ Q2: Integración        │                       │
C   ┤   │                         │                       │
T  Bajo │ Documentación          │ Legacy Monolito      │
        │ Entrenamiento          │ (no tocar)           │
        └─────────────────────────┘
```

**Lectura:** Las iniciativas con ⭐ son de alto impacto y bajo esfuerzo → ejecutar PRIMERO (Q1-Q2).

---

## 7. Gobernanza y Validación Arquitectónica

### 7.1 Roles Clave

| Rol | Responsabilidad |
|-----|-----------------|
| **CTO (Chief Technology Officer)** | Visión arquitectónica, aprobación de decisiones |
| **CDO (Chief Data Officer)** | Gobernanza de datos, calidad, seguridad |
| **VP de Aplicaciones** | Gestión de portafolio de software |
| **VP de Infraestructura** | Operación, seguridad, compliance |
| **Architecture Review Board (ARB)** | Validar que nuevas decisiones alineen con TO-BE |

### 7.2 Criterios de Evaluación

Antes de dar luz verde a cada iniciativa, validar:

- ✅ **Alineamiento:** ¿Reduce la brecha AS-IS → TO-BE?
- ✅ **ROI:** ¿Inversión justificada?
- ✅ **Riesgo:** ¿Qué podría fallar? ¿Impacto?
- ✅ **Dependencias:** ¿Otros proyectos bloqueados?
- ✅ **Capacidad:** ¿Hay equipo disponible?

---

## 8. Lecciones Clave de la Actividad

### Conceptos Reforzados

1. **Integración de dominios:** No es suficiente mejorar un área. El negocio, datos, aplicaciones y tecnología deben cambiar en conjunto.

2. **AS-IS realista:** Entender qué funciona hoy y qué no, sin idealizar.

3. **TO-BE ambicioso pero viable:** Proponer cambios grandes, pero con fases y presupuesto claro.

4. **Gap Analysis:** La brecha NO es caprichosa. Surge de necesidades de negocio específicas.

5. **Priorización:** Con recursos limitados, atacar primero lo de alto impacto / bajo esfuerzo.

6. **Governance:** La AE no es técnica sola. Requiere decisiones de negocio, control y comunicación clara.

### Preguntas de Reflexión

- ¿Qué hubiera pasado si BancoXYZ no cambia su arquitectura en los próximos 3 años?
- ¿Por qué es riesgoso migrar TODO a la vez?
- ¿Cómo se convence a la gerencia de invertir $15M si hoy el banco funciona?
- ¿Qué pasa si la Fase 1 se retrasa 3 meses?

---

## 9. Referencias al Marco de Trabajo

### TOGAF ADM — Cómo se aplica

| Fase ADM | Aplicación en BancoXYZ |
|----------|------------------------|
| **Preliminar** | Definir equipo, gobernanza, herramientas |
| **Visión Arquitectónica** | TO-BE descrito (Negocio, Datos, Apps, Tech) |
| **Análisis de Dominio** | Detallar cada dominio AS-IS y TO-BE |
| **Oportunidades y Soluciones** | Roadmap con fases Q1-Q4 |
| **Planificación de Migración** | Definir ruta del monolito → microservicios |
| **Gobernanza de la Implementación** | ARB, roles, criterios de evaluación |

### Zachman — Cobertura

La matriz Zachman ayuda a detectar vacíos. En BancoXYZ:

- **Fila: Ejecutivo (Planner)** ✅ Visión clara (digital, omnicanal).
- **Fila: Propietario del Negocio (Owner)** ✅ Capacidades mapeadas.
- **Fila: Diseñador** ✅ Arquitectura de servicios / APIs.
- **Fila: Implementador (Builder)** ✅ Tecnologías (AWS, Go, PostgreSQL).

**Vacío detectado:** Falta mapear filas de "Subcontratista" (proveedores). ⚠️ Acción: Evaluar asociaciones con terceros para IA/ML.

---

## Conclusión

La **Actividad 1** demostró cómo un análisis disciplinado de Arquitectura Empresarial puede transformar una organización en riesgo en un competidor digital. 

Claves:
- Entender el negocio, no solo la tecnología.
- Usar marcos (TOGAF, Zachman) como guía, no dogma.
- Descomponer el cambio en fases viables.
- Gobernar con roles claros y criterios objetivos.
- Validar que cada proyecto reduzca la brecha estratégica.

Con este enfoque, BancoXYZ puede llegar de un monolito legacy a una arquitectura moderna, resiliente y lista para competir con fintech.

---

**Fin de la Solución — Actividad 1**
