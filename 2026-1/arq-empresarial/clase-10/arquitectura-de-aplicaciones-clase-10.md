# Arquitectura de Aplicaciones (Clase 10)

**Curso:** Arquitectura Empresarial (ISIL, 2026-1)  
**Tema:** Arquitectura de Aplicaciones  
**Fecha:** Sesión 10

---

## Resumen ejecutivo

La **arquitectura de aplicaciones** analiza cómo los sistemas de información soportan los procesos del negocio y habilitan la ejecución de las capacidades estratégicas. No es un inventario de software, sino un modelo formal de la estructura lógica de las aplicaciones, sus servicios, dependencias e integración con datos y plataformas.

La arquitectura de aplicaciones es la capa intermedia entre el negocio y la tecnología, actuando como mecanismo de automatización, control y escalabilidad de los procesos organizacionales.

**Mapa conceptual del tema:**

```mermaid
graph TB
    AE["🏗️ ARQUITECTURA DE APLICACIONES"]
    
    AE --> REL["1️⃣ RELACIÓN<br/>Procesos ↔ Aplicaciones"]
    AE --> PORT["2️⃣ PORTAFOLIO<br/>Categorización & Priorización"]
    AE --> INT["3️⃣ INTEGRACIÓN<br/>Modelos & Patterns"]
    AE --> GAP["4️⃣ BRECHAS<br/>As-Is → To-Be"]
    
    REL --> REL1["Trazabilidad:<br/>Capacidad → Proceso →<br/>Servicio → Componente"]
    REL --> REL2["Patrones:<br/>Soporte directo<br/>Fragmentado, etc."]
    
    PORT --> PORT1["Matriz estratégica:<br/>Valor vs Riesgo"]
    PORT --> PORT2["Análisis redundancia<br/>& obsolescencia"]
    
    INT --> INT1["P2P | Hub/ESB<br/>SOA/APIs | Eventos"]
    INT --> INT2["Desacoplamiento<br/>& Interoperabilidad"]
    
    GAP --> GAP1["Roadmap<br/>de transformación"]
    GAP --> GAP2["Priorización<br/>de inversiones"]
    
    style AE fill:#e3f2fd
    style REL fill:#c8e6c9
    style PORT fill:#fff9c4
    style INT fill:#ffccbc
    style GAP fill:#f8bbd0
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

```mermaid
graph TD
    A["🎯 CAPACIDAD<br/>(Saber hacer)"] --> B["⚙️ PROCESO<br/>(Operacionalizar)"]
    B --> C["🔧 SERVICIO<br/>(Automatizar)"]
    C --> D["💻 COMPONENTE<br/>(Implementar)"]
    
    E["EJEMPLO: Banca"] -.-> A
    F["Evaluar crédito"] -.-> B
    G["Motor de scoring"] -.-> C
    H["Core Crediticio"] -.-> D
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

```mermaid
graph LR
    N["🏢 NEGOCIO<br/>Proceso: Procesar venta"] 
    A["💻 APLICACIÓN<br/>Servicio: Carrito compra"]
    D["📊 DATOS<br/>Tabla: ordenes"]
    T["🔌 TECNOLOGÍA<br/>PostgreSQL"]
    
    N --> A
    A --> D
    D --> T
    
    style N fill:#e1f5ff
    style A fill:#fff3e0
    style D fill:#f3e5f5
    style T fill:#e8f5e9
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

**Visualización de patrones:**

```mermaid
graph TB
    subgraph SD["1️⃣ SOPORTE DIRECTO"]
        P1["Proceso:<br/>Atención cliente"]
        S1["Sistema CRM"]
        P1 --> S1
    end
    
    subgraph SF["2️⃣ SOPORTE FRAGMENTADO"]
        P2["Proceso:<br/>Cumplimiento"]
        S2a["Sistema Compliance"]
        S2b["Base de datos<br/>regulaciones"]
        P2 --> S2a
        P2 --> S2b
    end
    
    subgraph RF["3️⃣ REDUNDANCIA"]
        P3["Proceso:<br/>Facturación"]
        S3a["SAP"]
        S3b["Sistema Legacy"]
        P3 --> S3a
        P3 --> S3b
    end
    
    subgraph SM["4️⃣ SOPORTE MANUAL"]
        P4["Proceso:<br/>Aprobación ejecutiva"]
        Manual["📧 Email + Planilla"]
        P4 --> Manual
    end
    
    style SD fill:#c8e6c9
    style SF fill:#fff9c4
    style RF fill:#ffccbc
    style SM fill:#f8bbd0
```

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

**Visualización de matriz (Ejemplo de Banco):**

```mermaid
graph TB
    subgraph MB["MATRIZ ESTRATÉGICA"]
        Q1["🟢 Alto Valor<br/>Bajo Riesgo<br/>---<br/>Core Banking<br/>Mobile Banking<br/>---<br/>✅ MANTENER"]
        Q2["🔴 Alto Valor<br/>Alto Riesgo<br/>---<br/>Legacy Mainframe<br/>---<br/>⚠️ MODERNIZAR"]
        Q3["🟡 Bajo Valor<br/>Bajo Riesgo<br/>---<br/>Portal interno<br/>---<br/>✓ MANTENER MIN"]
        Q4["🔴 Bajo Valor<br/>Alto Riesgo<br/>---<br/>Sistema EOL<br/>---<br/>❌ RETIRAR"]
    end
    
    style Q1 fill:#c8e6c9
    style Q2 fill:#ffccbc
    style Q3 fill:#fff9c4
    style Q4 fill:#f8bbd0
```

**Ejemplo de portafolio real - Institución Financiera:**

| Aplicación | Valor | Riesgo | Cuadrante | Acción |
|------------|-------|--------|-----------|--------|
| Core Banking | Alto | Bajo | Q1 | Mantener y modernizar gradualmente |
| Mobile Banking | Alto | Bajo | Q1 | Potenciar con nuevas funciones |
| Legacy Mainframe | Alto | Alto | Q2 | **Migración a plataforma moderna** |
| Portal Empleados | Bajo | Bajo | Q3 | Mantener sin inversión mayor |
| Sistema obsoleto | Bajo | Alto | Q4 | **Retiro en 6 meses** |

### 2.5 Identificación de redundancia funcional

La redundancia ocurre cuando:
- Dos sistemas realizan la misma función
- Se registran datos duplicados en múltiples aplicaciones
- Se ejecutan procesos similares en herramientas distintas

**Impacto:**
- Incremento de costo
- Inconsistencia de datos
- Mayor complejidad de integración
- Dificultad para modernizar

Eliminar redundancia mejora gobernanza tecnológica.

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

**Comparativa visual de modelos:**

```mermaid
graph TB
    subgraph P2P["1️⃣ PUNTO A PUNTO<br/>(❌ No recomendado)"]
        A1["App A"]
        A2["App B"]
        A3["App C"]
        A1 -.->|API1| A2
        A1 -.->|API2| A3
        A2 -.->|API3| A3
    end
    
    subgraph HUB["2️⃣ HUB/ESB<br/>(⚠️ Transición)"]
        H["🔧 ESB/Hub"]
        B1["App A"]
        B2["App B"]
        B3["App C"]
        B1 -->|API| H
        B2 -->|API| H
        B3 -->|API| H
    end
    
    subgraph SOA["3️⃣ SERVICIOS/APIs<br/>(✅ Recomendado)"]
        C1["Servicio 1"]
        C2["Servicio 2"]
        C3["Servicio 3"]
        C1 -->|REST| C2
        C2 -->|REST| C3
    end
    
    subgraph EVENT["4️⃣ ORIENTADO A EVENTOS<br/>(✅ Moderno)"]
        E["📨 Message Broker<br/>Kafka/RabbitMQ"]
        D1["Publicador"]
        D2["Suscriptor"]
        D3["Suscriptor"]
        D1 -->|evento| E
        E -->|evento| D2
        E -->|evento| D3
    end
    
    style P2P fill:#f8bbd0
    style HUB fill:#fff9c4
    style SOA fill:#c8e6c9
    style EVENT fill:#c8e6c9
```

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

```mermaid
graph LR
    POS["POS<br/>Tienda"]
    ERP["ERP SAP<br/>2005"]
    WEB["E-commerce<br/>Magento"]
    EXCEL["📊 Excel<br/>Inventario"]
    EMAIL["📧 Email<br/>Integraciones"]
    
    POS -.->|FTP| EXCEL
    ERP -.->|Manual| EXCEL
    WEB -.->|CSV| EXCEL
    EXCEL -.->|Email| EMAIL
    EMAIL -->|Manual| ERP
    
    style POS fill:#ffccbc
    style ERP fill:#ffccbc
    style WEB fill:#ffccbc
    style EXCEL fill:#f8bbd0
    style EMAIL fill:#f8bbd0
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

```mermaid
graph LR
    POS2["POS<br/>Tienda"]
    OMS["Order Mgmt<br/>API"]
    INVENTORY["Inventory<br/>Service"]
    WEB2["E-commerce<br/>Cloud"]
    
    POS2 -->|REST API| OMS
    WEB2 -->|REST API| OMS
    OMS -->|REST API| INVENTORY
    
    style POS2 fill:#c8e6c9
    style OMS fill:#c8e6c9
    style INVENTORY fill:#c8e6c9
    style WEB2 fill:#c8e6c9
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

**Ejemplo visual - Brecha en banca:**

```mermaid
graph TB
    subgraph AS["🔴 ARQUITECTURA ACTUAL"]
        ASAPP["Core Banking<br/>COBOL 1998"]
        ASPERF["Rendimiento:<br/>2,000 tx/seg"]
        ASCOST["Costo anual:<br/>$2M"]
    end
    
    subgraph TO["🟢 ARQUITECTURA OBJETIVO"]
        TOAPP["Core Banking<br/>Microservicios"]
        TOPERF["Rendimiento:<br/>50,000 tx/seg"]
        TOCOST["Costo anual:<br/>$500K"]
    end
    
    ASAPP -->|BRECHA| TOAPP
    ASPERF -->|BRECHA| TOPERF
    ASCOST -->|BRECHA| TOCOST
    
    style AS fill:#f8bbd0
    style TO fill:#c8e6c9
```

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

```mermaid
graph LR
    Q1["Q1: Evaluar<br/>Historia clínica"]
    Q2["Q2: Pilotar<br/>Historia clínica"]
    Q3["Q3: Migrar<br/>50% datos"]
    Q4["Q4: Migrar<br/>100% + Portal"]
    Q5["2025-Q1: Telemedicina<br/>+ Facturación"]
    
    Q1 --> Q2
    Q2 --> Q3
    Q3 --> Q4
    Q4 --> Q5
    
    style Q1 fill:#fff9c4
    style Q2 fill:#fff9c4
    style Q3 fill:#ffccbc
    style Q4 fill:#c8e6c9
    style Q5 fill:#c8e6c9
```

---

## 5. Conclusiones principales

1. **Trazabilidad estructural:** La arquitectura de aplicaciones establece la trazabilidad formal entre capacidades estratégicas, procesos de negocio y servicios tecnológicos, garantizando que la tecnología esté diseñada para habilitar la ejecución organizacional.

2. **Análisis formal:** El análisis de la relación proceso–aplicación permite identificar dependencias, redundancias y vacíos de soporte tecnológico que impactan en eficiencia operativa y riesgo estructural.

3. **Gestión de portafolio:** La categorización del portafolio de aplicaciones transforma el inventario tecnológico en un instrumento de decisión estratégica, permitiendo priorizar modernización, consolidación o retiro de sistemas.

4. **Flexibilidad e integración:** La integración tecnológica determina el nivel de acoplamiento y flexibilidad del ecosistema digital, siendo factor crítico para escalabilidad, interoperabilidad y evolución organizacional.

5. **Roadmap de transformación:** El análisis de brechas convierte el diagnóstico tecnológico en un roadmap estructurado de transformación, alineado a capacidades estratégicas y reducción de riesgo operativo.

---

## Referencias y fuentes

- **TOGAF® Version 9.1** — The Open Group Standard
- **Enterprise Architecture at Work** — Lankhorst, M. (2017)
- **BPMN Version 2.0.2** — Object Management Group
- **UML Version 2.5** — Object Management Group
- **ISO/IEC 42010** — Systems and Software Engineering – Architecture Description
- **Gartner Enterprise Architecture Practice** — Capability-based planning y roadmaps arquitectónicos
