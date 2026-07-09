# Arquitectura de Datos: Valor Estratégico, Tipologías y Ciclo de Vida (Clase 13)

**Curso:** Arquitectura Empresarial (ISIL, 2026-1)
**Docente:** [pendiente]
**Fecha:** DD/MM/AAAA

---

## Introducción

**Gancho humano:** ¿Alguna vez te has preguntado por qué Netflix recomienda exactamente la serie que quieres ver, o por qué Amazon sugiere productos que necesitas antes de que los busques? La respuesta está en cómo manejan sus datos.

**Pregunta guía:** ¿Qué diferencia a una empresa que usa datos como activo estratégico de una que los tiene guardados sin explotar?

**Objetivos de aprendizaje:**
- Entender el valor estratégico de los datos como activo empresarial
- Conocer las tres tipologías de arquitectura de datos y cuándo usar cada una
- Comprender el ciclo de vida completo del dato: de la adquisición a la disposición

---

## 1. Valor Estratégico de los Datos

### ¿Qué son los datos como activo estratégico?

**Analogía simple:** Los datos son como el petróleo del siglo XXI, pero con una diferencia clave: el petróleo se agota, los datos se multiplican. El valor no está en tenerlos, sino en saber extraerles información útil.

Los datos generan valor cuando:
- Soportan decisiones estratégicas
- Habilitan capacidades organizacionales
- Reducen incertidumbre
- Permiten analítica avanzada
- Automatizan procesos críticos

### Desde TOGAF (Fase C – Data Architecture)

TOGAF establece que los datos deben asegurar:

```
┌─────────────────────────────────────────────────┐
│   FLUJO: Datos como Activo Estratégico          │
├─────────────────────────────────────────────────┤
│  1. Captura desde sistemas origen               │
│     (ERP, CRM, APIs, IoT)                      │
│     ↓                                           │
│  2. Validación de integridad y consistencia     │
│     ↓                                           │
│  3. Clasificación y metadatos                   │
│     ↓                                           │
│  4. Análisis y explotación                      │
│     ↓                                           │
│  5. Toma de decisiones alineadas a objetivos    │
└─────────────────────────────────────────────────┘
```

### Dimensiones de Calidad del Dato

Una dimensión de calidad afecta directamente los resultados financieros:

| Dimensión | Descripción | Ejemplo Real |
|-----------|-------------|--------------|
| **Exactitud** | El dato refleja la realidad | Una dirección de cliente correcta para envíos |
| **Consistencia** | El mismo dato es igual en todos los sistemas | Precio de producto idéntico en web y tienda física |
| **Integridad** | Relaciones entre datos correctas | Pedido vinculado al cliente correcto |
| **Trazabilidad** | Se puede rastrear el origen | Saber quién modificó un registro y cuándo |
| **Disponibilidad** | Accesible cuando se necesita | Datos de inventario en tiempo real |
| **Seguridad** | Protegido contra accesos no autorizados | Datos bancarios encriptados |

> **Frase clave:** "Un dato sin modelo, sin propietario y sin reglas de calidad no es activo estratégico, es riesgo organizacional."

---

## 2. Tipologías de Arquitectura de Datos

### ¿Qué son las tipologías?

**Analogía simple:** Es como elegir entre una biblioteca centralizada (un solo edificio grande), bibliotecas distribuidas (una en cada barrio), o un sistema federado (bibliotecas independientes con catálogo común).

La tipología define cómo se organizan, gobiernan e integran los activos de información. Impacta directamente en:

- Gobierno de datos
- Escalabilidad tecnológica
- Integración entre dominios
- Velocidad de innovación
- Nivel de control organizacional

### Comparación de Tipologías

| Criterio | Centralizada | Distribuida | Federada |
|----------|--------------|-------------|----------|
| **Control** | Centralizado | Descentralizado | Híbrido |
| **Estandarización** | Alta | Baja | Media-Alta |
| **Agilidad** | Baja | Alta | Media-Alta |
| **Escalabilidad** | Limitada | Alta | Alta |
| **Riesgo de inconsistencia** | Bajo | Alto | Medio |
| **Complejidad de integración** | Simple | Compleja | Moderada |
| **Uso típico** | Pymes, entornos regulatorios | Startups, innovación rápida | Grandes corporaciones, multinegocio |

### 01. Arquitectura Centralizada

**Definición:** Datos almacenados y gobernados en un repositorio único (Data Warehouse o repositorio corporativo).

**Ventajas:**
- Mayor estandarización
- Control normativo
- Consistencia organizacional

**Características:**
- Gobierno central
- Modelo de datos unificado
- Alta consistencia e integridad
- Control estricto de calidad

**Riesgos:**
- Cuello de botella en gestión
- Menor agilidad en dominios específicos

**Ejemplo real:** Un banco que mantiene todos los datos de clientes en un Data Warehouse centralizado para cumplir con regulaciones financieras.

### 02. Arquitectura Distribuida

**Definición:** Los datos son gestionados por dominios o unidades independientes.

**Ventajas:**
- Escalabilidad
- Flexibilidad organizacional
- Mayor velocidad de innovación

**Características:**
- Autonomía por área
- Integración mediante APIs o eventos
- Descentralización del gobierno

**Riesgos:**
- Duplicidad de datos
- Inconsistencias
- Complejidad de integración

**Ejemplo real:** Una empresa de tecnología donde cada equipo (marketing, ventas, producto) tiene su propio Data Lake y se comunican mediante APIs.

### 03. Arquitectura Federada

**Definición:** Modelo híbrido que combina gobierno central con ejecución distribuida.

**Características:**
- Políticas corporativas compartidas
- Autonomía operativa por dominio
- Modelo de datos armonizado
- Principio de alineamiento

**Ventaja estratégica:**
- Equilibra control estructural y flexibilidad operativa
- Es el modelo más utilizado en organizaciones complejas y multinegocio

**Ejemplo real:** Una cadena multinacional donde cada país gestiona sus datos localmente pero sigue estándares corporativos globales.

### Criterios para elegir modelo

```
┌─────────────────────────────────────────────────┐
│   FLUJO: Decisión de Tipología                  │
├─────────────────────────────────────────────────┤
│  1. Evaluar tamaño organizacional               │
│     ↓                                           │
│  2. Identificar nivel regulatorio               │
│     ↓                                           │
│  3. Analizar complejidad de integración          │
│     ↓                                           │
│  4. Medir madurez de gobierno de datos           │
│     ↓                                           │
│  5. Definir estrategia digital                   │
│     ↓                                           │
│  6. Seleccionar tipología alineada               │
└─────────────────────────────────────────────────┘
```

---

## 3. Ciclo de Vida de los Datos

### ¿Qué es el ciclo de vida del dato?

**Analogía simple:** Es como la vida de un producto en una tienda: llega (adquisición), se guarda en bodega (almacenamiento), se vende (uso) y eventualmente se descarta (disposición).

Desde arquitectura empresarial, el ciclo de vida no es operativo: es estructural y estratégico.

### Fases del Ciclo de Vida

#### Fase 1: Adquisición y Validación

- Captura desde sistemas origen (ERP, CRM, APIs, IoT)
- Validación de integridad y consistencia
- Asignación de metadatos y clasificación

**Impacto estratégico:** Entrada de datos erróneos → decisiones estratégicas defectuosas.

#### Fase 2: Almacenamiento y Gestión

- Bases relacionales
- Índice de redundancia funcional
- Data Warehouse
- Data Lake
- Plataformas híbridas

**Impacto estratégico:** Debe garantizar seguridad, disponibilidad, integridad y escalabilidad.

#### Fase 3: Uso y Explotación

- Business Intelligence
- Analítica predictiva
- Machine Learning
- Automatización de procesos

**Impacto estratégico:** El valor se materializa aquí. Dato almacenado pero no explotado = costo, no activo.

#### Fase 4: Retención y Disposición

- Archivado estructurado
- Retención normativa
- Anonimización
- Eliminación segura

**Impacto estratégico:**
- Cumplimiento regulatorio
- Reducción de riesgo legal
- Optimización de almacenamiento
- Protección de reputación corporativa

### Casos por Industria

| Industria | Dato recopilado | Uso | Beneficio |
|-----------|-----------------|-----|-----------|
| **Banca** | Transacciones, historial crediticio | Scoring crediticio, detección de fraude | Préstamos precisos, reducción de pérdidas |
| **Retail** | Historial de compras, comportamiento web | Recomendaciones, inventario predictivo | Mayor ticket promedio, menos quiebre de stock |
| **Salud** | Historial médico, datos de wearables | Diagnóstico asistido, medicina preventiva | Precisión médica, reducción de costos |
| **Educación** | Rendimiento, interacción con plataforma | Aprendizaje adaptativo | Mejores resultados, retención de estudiantes |
| **Tech** | Uso de producto, logs de aplicación | Mejora continua, personalización | Mayor engagement, reducción de churn |

---

## 4. Errores Comunes a Evitar

| Error | Ejemplo real | Consecuencia |
|-------|--------------|--------------|
| **No definir propietarios de datos** | Empresas sin Data Owners formales | Datos sin governance, inconsistencias crónicas |
| **Elegir tipología por tendencia** | Copiar modelo de Netflix sin analizar contexto | Inversión en infraestructura inadecuada |
| **Ignorar calidad desde la captura** | Entrada manual sin validación | Decisiones basadas en datos erróneos |
| **No planificar disposición** | Datos personales sin política de retención | Multas por incumplimiento de GDPR/LFPDPPP |
| **Almacenar sin explotar** | Data Lakes llenos de datos sin uso | Costos de almacenamiento sin retorno |
| **Duplicidad no controlada** | Mismo cliente registrado 5 veces en sistemas distintos | Confusión, gasto duplicado, decisiones incorrectas |

---

## 5. Conclusiones

1. **Los datos son activos estratégicos** cuando tienen modelo, propietario y reglas de calidad claras
2. **La elección de tipología** (centralizada, distribuida o federada) es estratégica, no técnica
3. **El ciclo de vida** debe estar formalmente diseñado y gobernado
4. **Dato almacenado sin explotar** es un costo, no un activo
5. **La madurez en gobierno de datos** define qué modelo es sostenible en el tiempo

**Frase clave:**
> "Un dato sin modelo, sin propietario y sin reglas de calidad no es activo estratégico, es riesgo organizacional."

---

## Glosario

| Término | Definición | Ejemplo |
|---------|------------|---------|
| **Data Warehouse** | Repositorio centralizado de datos históricos para análisis | Base de datos corporativa para reportes |
| **Data Lake** | Almacén de datos crudos en formato nativo | Archivos JSON, CSV, logs sin procesar |
| **Data Owner** | Persona responsable de la calidad y gobierno de un dominio de datos | El gerente de finanzas es dueño de datos contables |
| **Data Stewards** | Personas que implementan las políticas de gobierno a nivel operativo | El analista que valida datos diariamente |
| **Gobierno de datos** | Marco de políticas, procesos y roles para gestionar datos | Políticas de acceso, calidad, seguridad |
| **Trazabilidad** | Capacidad de rastrear origen y cambios de un dato | Saber quién modificó un registro y cuándo |
| **Anonimización** | Proceso de eliminar información identificable | Datos de pacientes sin nombres para investigación |
| **Federación** | Modelo con gobierno central y ejecución distribuida | Multinacional con estándares globales y ejecución local |

---

## Preguntas de Reflexión

1. **Pregunta aplicada** — "Si tuvieras una tienda online, ¿qué datos recopilarías y cómo los usarías para mejorar ventas?"

2. **Pregunta comparativa** — "¿Cuál de las tres tipologías (centralizada, distribuida, federada) ves más en las empresas que conoces? ¿Por qué crees que la eligieron?"

3. **Pregunta crítica** — "¿Algún dato tuyo se está usando sin que lo sepas? ¿Te parece correcto?"

---

## Fuentes

| # | Fuente | Tipo | URL |
|---|--------|------|-----|
| 1 | TOGAF Standard - Phase C: Data Architecture | Oficial | [https://pubs.opengroup.org/togaf-standard/phased/c-data-architecture.html](https://pubs.opengroup.org/togaf-standard/phased/c-data-architecture.html) |
| 2 | DAMA International. *DAMA-DMBOK: Data Management Body of Knowledge* | Libro | [https://dama.org/cpages/dama-dmbok](https://dama.org/cpages/dama-dmbok) |

---

*Última verificación: 30/06/2026.*
