# Arquitectura de Aplicaciones (Clase 10)

**Curso:** Arquitectura Empresarial (ISIL, 2026-1)  
**Tema:** Arquitectura de Aplicaciones  
**Fecha:** Sesión 10

---

## Resumen ejecutivo

La **arquitectura de aplicaciones** analiza cómo los sistemas de información soportan los procesos del negocio y habilitan la ejecución de las capacidades estratégicas. No es un inventario de software, sino un modelo formal de la estructura lógica de las aplicaciones, sus servicios, dependencias e integración con datos y plataformas.

La arquitectura de aplicaciones es la capa intermedia entre el negocio y la tecnología, actuando como mecanismo de automatización, control y escalabilidad de los procesos organizacionales.

**Mapa conceptual del tema:**

```
┌─────────────────────────────────────────┐
│   ARQUITECTURA DE APLICACIONES          │
└──────────────┬──────────────────────────┘
               │
        ┌──────┼──────┬─────────┬────────┐
        │      │      │         │        │
        ▼      ▼      ▼         ▼        ▼
    [RELACIÓN][PORTF][INTEGR][BRECHAS]
        │      │      │         │
    ┌───┴──┐┌──┴──┐┌──┴──┐┌────┴────┐
    ▼      ▼▼     ▼▼     ▼▼         ▼
   Traz. Patrones Matriz Análisis Roadmap Priorización
```

---

## 1. Relación entre aplicaciones y procesos del negocio

### 1.1 Fundamento estructural: de capacidad a aplicación

La trazabilidad arquitectónica sigue este flujo:

1. **Capacidades** → lo que la organización debe saber hacer
2. **Procesos** → operacionalizan las capacidades
3. **Servicios de aplicación** → automatizan actividades del proceso
4. **Componentes** → implementan los servicios

**Conclusión clave:** Sin esta trazabilidad no existe alineamiento arquitectónico real.

**Visualización del flujo:**

```
CAPACIDAD              PROCESO              SERVICIO             COMPONENTE
(Saber hacer)      (Operacionalizar)    (Automatizar)        (Implementar)
     │                  │                    │                      │
     │                  │                    │                      │
┌────▼───────────┬─────▼──────────────┬────▼──────────┬──────────▼──────┐
│ Evaluar        │ Recibir solicitud  │ Motor scoring │ Core Crediticio │
│ capacidad      │ Validar datos      │ (scoring)     │ (sistema legacy)│
│ de pago        │ Calcular riesgo    │               │                 │
│ (Banca)        │ Emitir decisión    │               │                 │
└────────────────┴────────────────────┴───────────────┴─────────────────┘
```

**Ejemplo real - Banco minorista:**
- **Capacidad:** Evaluar la capacidad de pago de solicitantes
- **Proceso:** Recibir solicitud → Validar datos → Calcular riesgo → Emitir decisión
- **Servicio:** Motor de scoring que calcula puntuación crediticia
- **Componente:** Sistema Core Crediticio que almacena y ejecuta la lógica

### 1.2 Servicio de aplicación: definición técnica

Un **servicio de aplicación** es una funcionalidad lógica expuesta por un sistema que soporta una o más actividades de negocio.

Debe cumplir:
- Tener interfaz definida
- Exponer funcionalidad reutilizable
- Gestionar datos específicos
- Ser invocable por otros componentes

**Ejemplo estructural:**
- Proceso: Evaluación de crédito
- Actividad: Calcular riesgo
- Servicio de aplicación: Motor de scoring
- Componente: Sistema Core Crediticio

### 1.3 Modelado formal de la relación

El análisis proceso–aplicación debe representarse mediante:

| Artefacto | Descripción |
|-----------|-------------|
| **Diagrama de Procesos (BPMN 1-2)** | Identifica actividades automatizadas |
| **Diagrama de Componentes (UML)** | Representa aplicaciones y servicios |
| **Matriz de trazabilidad** | Proceso \| Actividad \| Servicio \| Aplicación \| Dato crítico |
| **Vista por capas** | Negocio ↔ Aplicación ↔ Datos ↔ Tecnología |

**Regla fundamental:** Si no se puede modelar, no se puede analizar el impacto.

**Ejemplo visual - Vista por capas (Comercio electrónico):**

```
┌─────────────────────────────┐
│  NEGOCIO: Procesar venta    │
│  (Capacidad de negocio)     │
└────────────┬────────────────┘
             │
             ▼
┌─────────────────────────────┐
│  APLICACIÓN: Carrito        │
│  (Servicio expuesto)        │
└────────────┬────────────────┘
             │
             ▼
┌─────────────────────────────┐
│  DATOS: órdenes             │
│  (Gestión de información)   │
└────────────┬────────────────┘
             │
             ▼
┌─────────────────────────────┐
│  TECNOLOGÍA: PostgreSQL     │
│  (Infraestructura)          │
└─────────────────────────────┘
```

**Ejemplo en matriz de trazabilidad:**

| Proceso | Actividad | Servicio | Aplicación | Dato Crítico |
|---------|-----------|----------|------------|--------------|
| Venta en línea | Validar inventario | Consulta stock | Magento | sku_disponible |
| Venta en línea | Procesar pago | Tokenización | PaymentGateway | token_transaccion |
| Venta en línea | Generar factura | Emisión documento | SAP | factura_pdf |

### 1.4 Tipos de relación estructural

Existen cuatro patrones principales:

1. **Soporte directo:** Una aplicación soporta completamente un proceso
2. **Soporte fragmentado:** Múltiples aplicaciones soportan distintas actividades del mismo proceso
3. **Redundancia funcional:** Dos o más aplicaciones soportan la misma actividad
4. **Soporte manual:** Actividades críticas sin automatización

Cada patrón implica diferente nivel de riesgo y complejidad operativa.

**Comparativa de patrones:**

| Patrón | Proceso | Aplicaciones | Riesgo | Ejemplo Real |
|--------|---------|--------------|--------|--------------|
| **1. Soporte Directo** | Atención cliente | Sistema CRM | Bajo | Retail: POS único maneja toda venta |
| **2. Soporte Fragmentado** | Cumplimiento | Compliance + Base datos regulaciones | Medio | Banca: Core + Mobile + Portal desacoplados |
| **3. Redundancia** | Facturación | SAP + Sistema Legacy | Alto | Salud: Dos historias clínicas activas |
| **4. Soporte Manual** | Aprobación ejecutiva | Email + Planilla Excel | Muy alto | Seguros: Gerente aprueba por email |

**Matriz de complejidad operativa:**

| Patrón | Mantenibilidad | Escalabilidad | Tiempo integración | Recomendación |
|--------|---|---|---|---|
| Directo | Alta | Buena | Inmediata | Mantener |
| Fragmentado | Media | Media | 1-2 sprints | Mejorar gradualmente |
| Redundancia | Baja | Baja | 2-3 sprints | Eliminar |
| Manual | Crítica | No escala | Manual | Automatizar YA |

**Ejemplos reales por sector:**

| Patrón | Sector | Ejemplo |
|--------|--------|---------|
| **Soporte directo** | Retail | Una app de POS maneja toda la venta |
| **Soporte fragmentado** | Banca | Depósito en Core, transferencias en Mobile, consultas en Portal |
| **Redundancia** | Salud | Dos sistemas de historias clínicas activos simultáneamente |
| **Soporte manual** | Seguros | Aprobación de reclamos por gerente vía email |

### 1.5 Desalineaciones frecuentes e impacto estructural

**Problemas comunes:**
- Proceso crítico soportado por sistema legacy no escalable
- Alta dependencia punto a punto entre aplicaciones
- Integraciones no documentadas
- Falta de responsable funcional del servicio

**Impacto:**
- Incremento de riesgo operativo
- Baja flexibilidad estratégica
- Dificultad de modernización
- Elevado costo de mantenimiento

---

## 2. Portafolio de aplicaciones y su categorización

### 2.1 ¿Qué es el portafolio de aplicaciones?

El **portafolio de aplicaciones** es el inventario estructurado y clasificado de todos los sistemas que soportan las capacidades y procesos del negocio.

**Nota importante:** No es una lista de software, es un activo arquitectónico.

### 2.2 Para qué sirve

Un portafolio maduro permite:
- Priorizar modernización
- Evaluar riesgo tecnológico
- Detectar obsolescencia
- Identificar redundancias
- Analizar alineamiento estratégico

Debe estar vinculado a capacidades y procesos críticos.

### 2.3 Dimensiones de clasificación arquitectónica

| Dimensión | Opciones |
|-----------|----------|
| **Rol estratégico** | Core / Estratégica / Soporte |
| **Criticidad operativa** | Alta / Media / Baja |
| **Nivel de integración** | Aislada / Parcial / Integrada |
| **Estado tecnológico** | Moderna / En transición / Legacy |
| **Modelo arquitectónico** | Monolítica / Modular / Orientada a servicios / API-based |

### 2.4 Matriz estratégica del portafolio

**Ejes:**
- Eje X: Valor estratégico (bajo → alto)
- Eje Y: Riesgo tecnológico (bajo → alto)

**Cuadrantes y decisiones:**
| Valor | Riesgo | Decisión |
|-------|--------|----------|
| Alto | Bajo | Mantener y potenciar |
| Alto | Alto | **Modernizar prioritariamente** |
| Bajo | Alto | **Retirar o reemplazar** |
| Bajo | Bajo | Mantener mínimo soporte |

**Matriz de Portafolio (Ejemplo: Banco):**

| **Cuadrante** | **Riesgo** | **Valor** | **Aplicaciones** | **Acción Estratégica** |
|---|---|---|---|---|
| Q1 | Bajo | Alto | Core Banking, Mobile Banking | ✅ **MANTENER + Potenciar** — Inversión en nuevas funciones |
| Q2 | Alto | Alto | Legacy Mainframe | ⚠️ **MODERNIZAR** — Migración a plataforma cloud |
| Q3 | Bajo | Bajo | Portal Empleados, Intranet | ✓ **MANTENER MIN** — Soporte básico solamente |
| Q4 | Alto | Bajo | Sistema EOL, Aplicaciones obsoletas | ❌ **RETIRAR** — Retiro planificado en roadmap |

**Ejemplo de portafolio real - Institución Financiera:**

| Aplicación | Valor | Riesgo | Cuadrante | Acción |
|------------|-------|--------|-----------|--------|
| Core Banking | Alto | Bajo | Q1 | Mantener y modernizar gradualmente |
| Mobile Banking | Alto | Bajo | Q1 | Potenciar con nuevas funciones |
| Legacy Mainframe | Alto | Alto | Q2 | **Migración a plataforma moderna** |
| Portal Empleados | Bajo | Bajo | Q3 | Mantener sin inversión mayor |
| Sistema obsoleto | Bajo | Alto | Q4 | **Retiro en 6 meses** |

**Análisis por cuadrante:**

- **Q1 (Alto Valor / Bajo Riesgo) — Mantener y Potenciar:**
  - Aplicaciones críticas para la estrategia
  - Modernización gradual y continua
  - Inversión en nuevas funcionalidades
  - Ejemplo: Aplicaciones de atención al cliente, gestión de pedidos

- **Q2 (Alto Valor / Alto Riesgo) — Modernizar Prioritariamente:**
  - Sistemas críticos con arquitectura obsoleta
  - Alto riesgo de fallos operativos
  - Vulnerabilidades de seguridad potenciales
  - **Acción urgente:** Roadmap de modernización definido
  - Ejemplo: Core Banking construido en tecnología legacy

- **Q3 (Bajo Valor / Bajo Riesgo) — Mantener Mínimo:**
  - Aplicaciones de soporte que funcionan
  - Bajo impacto si fallan
  - Mantenimiento defensivo
  - Ejemplo: Portales internos, herramientas administrativas

- **Q4 (Bajo Valor / Alto Riesgo) — Retirar/Reemplazar:**
  - No aportan valor estratégico
  - Alto costo de mantenimiento
  - Riesgo de fallos frecuentes
  - **Acción inmediata:** Plan de retiro definido
  - Ejemplo: Sistemas end-of-life sin usuarios activos

### 2.5 Identificación de redundancia funcional

La redundancia ocurre cuando:
- Dos sistemas realizan la misma función
- Se registran datos duplicados en múltiples aplicaciones
- Se ejecutan procesos similares en herramientas distintas

**Impacto:**
- Incremento de costo (mantenimiento duplicado)
- Inconsistencia de datos (versiones diferentes del "source of truth")
- Mayor complejidad de integración
- Dificultad para modernizar
- Riesgo operativo elevado

**Ejemplo de redundancia en Banca:**

Un banco tiene registros de clientes en:
1. Sistema Core Banking (base de datos primaria)
2. CRM de ventas (datos desactualizados)
3. Portal de autoservicio (réplica inconsistente)
4. Sistema de compliance (datos parciales)

Resultado: Inconsistencias de datos, proceso de actualización manual complicado, imposible tener visión única del cliente.

Eliminar redundancia mejora gobernanza tecnológica y reduce riesgo de datos.

### 2.6 Casos de Estudio: Estrategia de Portafolio en Empresas Reales

#### Caso 1: Microsoft Bing — Estrategia de Diferenciación mediante Portafolio Integrado

**Contexto:**
- Bing parecía un "fracaso" con baja cuota de mercado frente a Google (< 10%)
- Sin embargo, Microsoft convirtió un "fracaso de usuario" en un **éxito comercial sostenible**

**Estrategia Arquitectónica:**

1. **Identificar el activo central diferenciador:**
   - Windows: controlaba el 90% de computadoras de escritorio
   - Buscador de escritorio integrado = mayor adopción

2. **Portafolio integrado:**
   - Bing establecido como motor de búsqueda por defecto en Windows
   - Integración en Office, Edge, Cortana
   - Servicios de publicidad reutilizables

3. **Monetización mediante múltiples canales:**
   - Publicidad de búsqueda
   - Contratos corporativos (Yahoo, DuckDuckGo)
   - Búsqueda vertical (videos, imágenes, empleo)

**Leción Arquitectónica:**

```
                    ┌──────────┐
                    │   BING   │
                    │(búsqueda)│
                    └─────┬────┘
                          │
        ┌─────────┬──────┬┴────┬────────┐
        │         │      │     │        │
        ▼         ▼      ▼     ▼        ▼
    [Windows] [Office] [Edge] [Copilot]
        │         │      │     │
        └─────────┴──────┴┬────┴────────┐
                          │             │
                    ┌─────▼──────┐      │
                    │ Publicidad  │◄────┘
                    │ (ingresos)  │
                    └─────┬───────┘
                          │
                    ┌─────▼──────┐
                    │   ÉXITO    │
                    │ (~50B USD)  │
                    └────────────┘
```

**Conclusión:** Un producto tecnológico "fallido" se convierte en éxito mediante arquitectura estratégica que lo integra en activos existentes de mayor valor.

---

#### Caso 2: Dropbox — Evolución de Portafolio y Adaptación Arquitectónica

**Contexto:**
- Dropbox comenzó como almacenamiento en la nube para usuarios individuales (2008)
- Compitió contra gigantes: Google Drive, iCloud, OneDrive
- Se convirtió en empresa de $30B de valuación

**Estrategia de Portafolio:**

1. **Identificar problema real:**
   - Usuarios necesitaban sincronización de archivos simple entre dispositivos
   - Solución mejor que alternativas existentes

2. **Crecimiento mediante viralización:**
   - Sistema de referidos (viral loops)
   - Integración en sistemas operativos
   - Portafolio simplista: UN producto enfocado

3. **Pivot: Expansión hacia empresas (Dropbox Business):**
   - Cuando Google/Apple invadieron mercado de usuarios
   - Necesidad corporativa diferente: seguridad, gobernanza, integración
   - Crear nuevo portafolio para vertical empresarial

4. **Diversificación moderna:**
   - Dropbox Paper (colaboración)
   - Dropbox Sign (firma electrónica)
   - Dropbox Replay (comentarios en video)
   - API para integraciones externas

**Evolución del Portafolio:**

```
FASE 1: Storage Personal
└─ Usuarios individuales
   └─ Sincronización simple
      └─ Viral loops
         │
         ├─ PIVOT ──→ FASE 2: Dropbox Business
         │            └─ Usuarios empresariales
         │               └─ Admin console
         │                  └─ Integración, seguridad
         │                     │
         │                     └─ EXPANSIÓN ──→ FASE 3: Plataforma
         │                        └─ Suite integrada
         │                           ├─ Dropbox Paper
         │                           ├─ Dropbox Sign
         │                           ├─ Dropbox Replay
         │                           └─ APIs públicas
         │
         └─ Modelo de negocio: Freemium → Empresarial → Plataforma
```

**Lección Arquitectónica:**

- **Arquitectura debe ser adaptable:** Lo que es éxito hoy puede ser obsoleto mañana
- **Pivot requiere nuevo portafolio:** Dropbox Business es arquitectura diferente a Dropbox Personal
- **Diversificación mediante APIs:** Permiten a terceros construir sobre plataforma
- **Gobernanza de evolución:** Mantener compatibilidad mientras se agregan nuevas capas

**Conclusión:** Empresas que evolucionan arquitectónicamente según cambios del mercado logran crecimiento sostenible.

---

## 3. Integración tecnológica: interoperabilidad, plataformas, servicios

### 3.1 Definición

La **integración tecnológica** define cómo las aplicaciones intercambian información, coordinan funcionalidades y soportan procesos de negocio dentro del ecosistema empresarial.

Desde arquitectura, la integración debe:
- Minimizar acoplamiento
- Garantizar interoperabilidad
- Asegurar consistencia de datos
- Facilitar escalabilidad
- Reducir dependencia punto a punto

**Conclusión:** La integración determina la flexibilidad estructural de la organización.

### 3.2 Modelos de integración estructural

Existen cuatro patrones principales:

#### 1. Integración punto a punto
- Conexiones directas entre sistemas
- Alto acoplamiento y difícil escalabilidad

#### 2. Integración centralizada (Hub o ESB)
- Middleware intermedio que orquesta comunicaciones
- Mejor control, pero puede convertirse en cuello de botella

#### 3. Integración orientada a servicios (SOA / APIs)
- Servicios reutilizables desacoplados
- Mayor flexibilidad y escalabilidad

#### 4. Integración basada en eventos
- Comunicación asincrónica orientada a eventos
- Reducción de acoplamiento y mejor reactividad

**Recomendación arquitectónica:** Arquitecturas maduras privilegian servicios desacoplados y APIs.

**Comparativa visual de modelos (en vertical para mejor legibilidad):**

**Comparativa de modelos de integración:**

| Modelo | Descripción | Arquitectura | Limitación | Recomendación |
|--------|-------------|--|---|---|
| **P2P** | Conexiones directas | A1↔A2, A1↔A3, A2↔A3... | 6+ conexiones = caos | Evitar |
| **Hub/ESB** | Middleware central | A1→ESB, A2→ESB, A3→ESB | 1 fallo = todo cae | Transición |
| **SOA/APIs** | Servicios desacoplados | Auth→Pagos→Notificaciones | Requiere madurez | Recomendado |
| **Eventos** | Message broker asincrónico | Pub→Broker→Sub1, Sub2 | Monitoreo complejo | Moderno |

**Evolución recomendada:** P2P → Hub → SOA/APIs → Event-driven

**Ejemplo real - Sistema de pagos:**

| Modelo | Descripción | Sector | Limitación |
|--------|-------------|--------|-----------|
| **Punto a punto** | Banco conecta directamente con proveedor | Pago único | 20 integraciones = caos |
| **Hub/ESB** | Banco central conecta a 15 proveedores | Retail | Un fallo del ESB cae todo |
| **APIs/SOA** | Cada microservicio expone API REST | FinTech | Requiere madurez operativa |
| **Eventos** | App publica evento "pago completado" | Banca Digital | Require monitoreo distribuido |

### 3.3 Análisis As-Is (Arquitectura actual)

Describe el estado real del ecosistema tecnológico:
- Aplicaciones existentes
- Dependencias entre sistemas
- Integraciones manuales
- Interfaces no documentadas
- Sistemas legacy
- Limitaciones de escalabilidad

**Debe representarse mediante:**
- Diagrama de componentes
- Mapa de integraciones
- Matriz de dependencias

**Ejemplo As-Is - Empresa retail con problemas:**

**Arquitectura As-Is (Estado actual) - Retail:**

```
┌─────────────────────────────────────────────────┐
│              PROBLEMAS ESTRUCTURALES             │
├─────────────────────────────────────────────────┤
│                                                 │
│  POS(Tienda)    ERP(SAP)    E-commerce(Magento)│
│       │              │              │           │
│       └──────(FTP)───┼──────(CSV)───┤           │
│                      │              │           │
│              ┌──────▼──────────────▼─┐          │
│              │  Excel Central        │ CUELLO   │
│              │  (Inventario manual)  │ BOTELLA  │
│              └────────────┬──────────┘          │
│                           │                     │
│                      (Email)                    │
│                           │                     │
│                    ┌──────▼──────┐              │
│                    │ ERP Manual   │ RIESGO      │
│                    └──────────────┘              │
│                                                 │
└─────────────────────────────────────────────────┘

Problemas:
❌ Integraciones manuales (riesgo de error)
❌ Excel central (cuello de botella)
❌ Sin visibilidad en tiempo real
❌ Alto costo operativo
```

**Problemas identificados:**
- ❌ Integraciones manuales (riesgo de error)
- ❌ Excel central (cuello de botella)
- ❌ Sin visibilidad en tiempo real
- ❌ Alto costo operativo

### 3.4 Análisis To-Be (Arquitectura objetivo)

Define el estado tecnológico deseado:
- Eliminación de redundancia
- Estandarización de datos
- Plataforma de APIs
- Reducción de acoplamiento
- Mejora de seguridad y gobernanza

**Debe alinearse con:**
- Capacidades estratégicas futuras
- Procesos críticos
- Modelo operativo objetivo

**Ejemplo To-Be - Mismo retail modernizado:**

**Arquitectura To-Be (Objetivo) - Retail Moderno:**

```
┌─────────────────────────────────────────────────┐
│           ARQUITECTURA MODERNIZADA               │
├─────────────────────────────────────────────────┤
│                                                 │
│    POS(Tienda)        E-commerce(Cloud)        │
│         │                      │                │
│         │      (REST API)       │                │
│         └──────────────┬────────┘                │
│                        │                         │
│              ┌─────────▼──────────┐              │
│              │ Order Management   │ APIs         │
│              │ (Orquestrador)     │ REST         │
│              └─────────┬──────────┘              │
│                        │                         │
│                 (REST API)                       │
│                        │                         │
│              ┌─────────▼──────────┐              │
│              │ Inventory Service  │ Desacoplado │
│              │ (en tiempo real)   │ y escalable │
│              └────────────────────┘              │
│                                                 │
└─────────────────────────────────────────────────┘

Mejoras:
✅ APIs desacopladas
✅ Real-time visibility
✅ Automatización completa
✅ Reducción de costo operativo (~75%)
```

**Mejoras:**
- ✅ APIs desacopladas
- ✅ Real-time visibility
- ✅ Automatización completa
- ✅ Reducción de costo operativo

---

## 4. Análisis de brechas tecnológicas

### 4.1 Identificación de brechas arquitectónicas

La brecha surge cuando:
- Procesos críticos dependen de sistemas obsoletos
- La integración impide escalabilidad
- Existen dependencias rígidas
- El tiempo de cambio tecnológico es elevado
- La arquitectura no soporta nuevas capacidades estratégicas

**Ejemplo de brecha en banca:**

| Dimensión | Arquitectura Actual | Arquitectura Objetivo | Brecha | Impacto |
|-----------|-------|-------|--------|---------|
| **Plataforma** | Core Banking COBOL 1998 | Core Banking Microservicios | Modernizar | Crítico |
| **Rendimiento** | 2,000 transacciones/seg | 50,000 transacciones/seg | Escalabilidad | Alto |
| **Costo anual** | $2,000,000 | $500,000 | Eficiencia operativa | Alto |
| **Time-to-market** | 6 meses | 2 semanas | Agilidad | Crítico |

### 4.2 Documentación de brechas

Se documenta mediante una matriz:

| Componente | Estado actual | Estado objetivo | Impacto | Prioridad | Riesgo |
|------------|---------------|-----------------|---------|-----------|--------|
| Aplicación X | Legacy | Moderno | Alto | 1 | Medio |

**Conclusión clave:** La brecha no es técnica solamente, es estratégica.

**Ejemplo de matriz completa (Hospital):**

| Componente | As-Is | To-Be | Impacto | Prioridad | Riesgo | Inversión |
|-----------|-------|-------|---------|-----------|--------|-----------|
| Historia clínica | Sistema 1980 en disco | Cloud moderna | Crítico | 1 | Alto | $500K |
| Recepción | Manual en papel | Portal digital | Alto | 2 | Medio | $50K |
| Facturación | SAP legacy | Facturación cloud | Medio | 3 | Bajo | $100K |
| Telemedicina | No existe | Plataforma Video | Alto | 2 | Medio | $80K |

**Roadmap de transformación:**

**Ejemplo de brechas en banca (Hospital):**

```
ROADMAP DE TRANSFORMACIÓN

Q1 2024: Evaluar Historia Clínica
  └─ Audit del sistema actual
     └─ Identificar datos críticos
        │
Q2 2024: Pilotar Historia Clínica
  └─ Pilot en 2-3 departamentos
     └─ Validar datos y flujos
        │
Q3 2024: Migrar 50% de datos
  └─ Migración en paralelo (As-Is + To-Be)
     └─ Validación continua
        │
Q4 2024: Migrar 100% + Portal
  └─ Cutover total
     └─ Lanzar portal de pacientes
        │
Q1 2025: Telemedicina + Facturación
  └─ Nuevas capacidades (expansión)
     └─ Integración con sistemas backend
```

---

## 5. Riesgos de Seguridad en Arquitectura de Aplicaciones

### 5.1 Puntos de acceso maliciosos

Uno de los riesgos críticos identificados en arquitectura es la **vulnerabilidad mediante puntos de acceso comprometidos**.

**Ejemplos de amenazas:**

1. **Dispositivos comprometidos (Ej: WiFi Pineapple)**
   - Simula red WiFi legítima
   - Intercepta credenciales de usuarios
   - Redirige tráfico de datos sensibles

2. **Dispositivos USB maliciosos**
   - Se simulan como teclados (HID — Human Interface Device)
   - Inyectan comandos en máquinas destino
   - Acceso a recursos corporativos

3. **Impacto arquitectónico:**
   - Falta de segmentación de red
   - Autenticación débil
   - Ausencia de detección de anomalías

**Mitigación arquitectónica:**

| Amenaza | Control Requerido | Descripción | Objetivo |
|---------|------|---|---|
| Punto de acceso comprometido | **VPN Obligatoria** | Encriptación end-to-end | Defensa |
| Punto de acceso comprometido | **Autenticación Multi-factor** | No solo contraseña | Defensa |
| Punto de acceso comprometido | **Zero Trust** | Verificar cada conexión | Defensa |
| Punto de acceso comprometido | **Segmentación de Red** | Limitar movimiento lateral | Defensa |
| Punto de acceso comprometido | **Detección de Anomalías** | Comportamiento inusual | Defensa |

**Regla fundamental:** La arquitectura de aplicaciones debe integrar seguridad desde el diseño, no como agregado posterior.

---

## 6. Inteligencia Artificial y Riesgos Emergentes en Arquitectura

### 6.1 Modelos de IA capaces de explotar vulnerabilidades

**Contexto:**
Anthropics presentó **Claude 3.5 Sonnet** (modelo "Mitos"), un modelo de IA avanzado con capacidades de:
- Análisis de código
- Detección de vulnerabilidades
- Generación de exploits
- Automatización de ataques

**Implicaciones para Arquitectura Empresarial:**

1. **Riesgo nuevo: IA como herramienta de ataque**
   - Sistemas financieros pueden ser atacados por IA automatizada
   - Vulnerabilidades descubiertas antes que defendidas
   - Velocidad de ataque acelera exponencialmente

2. **Impacto en diseño arquitectónico:**
   - Necesidad de arquitecturas resistentes a ataques de IA
   - Múltiples capas de validación
   - Monitoreo behavioral en tiempo real
   - Segregación de datos críticos

3. **Decisiones arquitectónicas derivadas:**
   - **API Hardening:** Límites de rate, validación exhaustiva
   - **Detección basada en IA:** Usar IA para defender contra IA
   - **Aislamiento de activos críticos:** Core banking separado de sistemas públicos
   - **Auditoría exhaustiva:** Toda operación registrada y analizable

**Arquitectura segura contra IA:**

```
Ataque de IA (Claude 3.5 Sonnet)
              |
              +------> API Gateway <----> Solicitud Bloqueada
              |
              v
    Detección de Anomalías
    (Behavioral Analytics)
              |
          +---+---+
          |       |
          v       v
       Vault    Core Banking
    (Encriptado) (Protegido)
```

| Capa | Control | Descripción |
|------|---------|-------------|
| Entrada | API Gateway | Validación inicial + Rate limiting |
| Detección | Anomalías | Machine Learning + comportamiento |
| Datos | Vault | Encriptación AES-256 + Keys remotas |
| Lógica | Core Banking | Segmentación de red + Zero Trust |

**Conclusión:** La arquitectura debe anticipar que los atacantes usarán IA, diseñando defensas multicapa y automatizadas.

---

## 7. Impacto Ambiental de la Arquitectura Tecnológica

### 7.1 El costo energético oculto de la IA y centros de datos

**Realidad sorprendente:**

La IA y los centros de datos tienen un **costo ambiental extremadamente alto:**

- **Consumo de energía:** Un modelo de IA entrenado consume ~1,300 MWh de energía
- **Consumo de agua:** Refrigerar servidores requiere millones de litros de agua potable diariamente
- **Impacto global:** Los centros de datos representan ~3-4% del consumo eléctrico mundial

**Ejemplos reales:**

- **Meta (Facebook):** Construyendo centro de datos en Suecia para aprovechar agua fría
- **Google:** Usando IA para optimizar refrigeración, reduciendo consumo 40%
- **Proyectos frenados:**
  - Chile: Proyecto de minería de litio para IA detenido por sequía
  - Uruguay: Centro de datos cancelado por escasez de agua

**Impacto arquitectónico:**

**Soluciones arquitectónicas:**

| Solución | Estrategia | Beneficio | Implementación |
|----------|-----------|----------|-----------------|
| **Eficiencia computacional** | Modelos pequeños (DistilBERT) | 60-80% reducción energía | Quantization, caching |
| **Energías renovables** | Data centers 100% renovables | 40% reducción carbono | Ubicación estratégica |
| **Reutilización de modelos** | Transfer learning vs training | 80% reducción energía | Fine-tuning compartido |
| **Gobernanza** | Audit + límites de uso | Variable según política | Compensación carbono |

| Impacto | Evidencia | Región | Estado |
|---------|-----------|--------|--------|
| **Sequía regional** | Consumo de agua masivo | Chile | Proyecto frenado 2022-2024 |
| **Sequía regional** | Consumo de agua masivo | Uruguay | Data center cancelado |
| **Demanda eléctrica** | Training: 45,000 MWh por modelo | Global | Creciente |
| **Huella carbono** | 1 query IA = 50g CO2 vs Google 0.2g | Global | 250x más intensiva |

### 7.2 Arquitectura sostenible

**Principios de diseño:**

1. **Eficiencia computacional:**
   - Algoritmos optimizados, no fuerza bruta
   - Modelos más pequeños y especializados
   - Caché inteligente para evitar recálculos

2. **Ubicación inteligente:**
   - Centros de datos en zonas de energía renovable
   - Considerar impacto hídrico regional
   - Proximidad a usuarios (reducir latencia y tránsito)

3. **Reutilización de modelos:**
   - APIs compartidas vs. modelos duplicados
   - Fine-tuning sobre pre-trained models
   - Modelo federado vs. centralizado

4. **Gobernanza:**
   - Medir consumo energético por aplicación
   - Reportar huella de carbono
   - Objetivos de reducción vinculados a estrategia

**Regla fundamental:** **La arquitectura moderna debe diseñarse bajo criterios de eficiencia de recursos y sostenibilidad ambiental.**

---

## Conclusiones principales

1. **Trazabilidad estructural:** La arquitectura de aplicaciones establece la trazabilidad formal entre capacidades estratégicas, procesos de negocio y servicios tecnológicos, garantizando que la tecnología esté diseñada para habilitar la ejecución organizacional.

2. **Análisis formal:** El análisis de la relación proceso–aplicación permite identificar dependencias, redundancias y vacíos de soporte tecnológico que impactan en eficiencia operativa y riesgo estructural.

3. **Gestión de portafolio:** La categorización del portafolio de aplicaciones transforma el inventario tecnológico en un instrumento de decisión estratégica, permitiendo priorizar modernización, consolidación o retiro de sistemas.

4. **Flexibilidad e integración:** La integración tecnológica determina el nivel de acoplamiento y flexibilidad del ecosistema digital, siendo factor crítico para escalabilidad, interoperabilidad y evolución organizacional.

5. **Roadmap de transformación:** El análisis de brechas convierte el diagnóstico tecnológico en un roadmap estructurado de transformación, alineado a capacidades estratégicas y reducción de riesgo operativo.

6. **Estrategia arquitectónica como diferenciador:** Los casos de Microsoft Bing y Dropbox demuestran que la **excelencia no está en el producto único, sino en cómo se integra en un portafolio estratégico** que crea valor sostenible y escalable.

7. **Seguridad integrada desde el diseño:** La arquitectura moderna debe anticipar amenazas (incluidas las basadas en IA) e integrar mecanismos de defensa multicapa desde la fase de diseño, no como parche posterior.

8. **Sostenibilidad como imperativo arquitectónico:** La eficiencia energética y el impacto ambiental son factores de diseño críticos. La arquitectura debe optimizar consumo de energía y agua, alineándose con responsabilidad corporativa y regulaciones emergentes.

---

## 🌟 Lecciones Transversales de la Sesión 10

### Tema Central: Arquitectura como Instrumento Estratégico

La arquitectura de aplicaciones **no es un ejercicio técnico aislado**, sino un **instrumento estratégico integrado** que debe considerar:

1. **Portafolio:** ¿Qué sistemas construyen valor? ¿Cuál es el roadmap de modernización?
2. **Integración:** ¿Cómo se comunican los sistemas para evitar silos? ¿Cuál es el nivel de acoplamiento?
3. **Estrategia:** ¿Cómo el portafolio habilita nuevas capacidades del negocio? (Ej: Bing en Windows)
4. **Seguridad:** ¿Cómo se protege la arquitectura contra ataques humanos y automatizados?
5. **Impacto:** ¿Cuál es la huella ambiental de la arquitectura? ¿Es sostenible a largo plazo?

**La arquitectura madura integra todas estas dimensiones.**

---

## Referencias y fuentes

- **TOGAF® Version 9.1** — The Open Group Standard
- **Enterprise Architecture at Work** — Lankhorst, M. (2017)
- **BPMN Version 2.0.2** — Object Management Group
- **UML Version 2.5** — Object Management Group
- **ISO/IEC 42010** — Systems and Software Engineering – Architecture Description
- **Gartner Enterprise Architecture Practice** — Capability-based planning y roadmaps arquitectónicos
- **Microsoft Bing Case Study:** Estrategia de integración en portafolio empresarial
- **Dropbox Evolution:** Adaptabilidad arquitectónica en ciclos de vida de producto
- **Anthropic Claude 3.5 Sonnet:** Riesgos de seguridad en era de IA
- **Data Center Sustainability:** Google, Meta, AWS environmental impact studies
