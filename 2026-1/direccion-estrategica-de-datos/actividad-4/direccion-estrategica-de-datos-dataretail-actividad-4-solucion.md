# Actividad 4: Dirección Estratégica de Datos — COBIT

## Caso: Empresa Comercial DATARETAIL S.A.

**Estudiante:** [Apellido y Nombre del Estudiante]
**Curso:** Dirección Estratégica de Datos (ISIL, 2026-1)
**Docente:** Brezli Paola Luna Figueroa
**Fecha:** [pendiente]

---

## 1. DIAGNÓSTICO DE LA SITUACIÓN ACTUAL (4 puntos)

### Problemas de Gobernanza de Datos Identificados

#### Problema 1: Registros Duplicados de Clientes

**Descripción:** La empresa tiene múltiples registros del mismo cliente sin un mecanismo de deduplicación o identificación única.

**Impacto:**
- Reportes de ventas inflados o imprecisos
- Duplicación de esfuerzos en campañas de marketing
- Pérdida de tiempo en reconciliación de información

**Ejemplo:** Un cliente puede aparecer registrado como "Juan Pérez", "J. Pérez" y "Juan Carlos Pérez" en distintos sistemas, generando 3 registros para una sola persona.

#### Problema 2: Ausencia de Responsables Definidos para la Gestión de Datos

**Descripción:** No existen roles formales como Data Owners o Data Stewards. Nadie es responsable de la calidad, disponibilidad o seguridad de los datos.

**Impacto:**
- Nadie responde por errores o inconsistencias en la información
- Las decisiones sobre datos se toman de forma reactiva
- No hay trazabilidad de quién modificó o accedió a datos críticos

**Ejemplo:** Si se detecta un error en el inventario, no hay un responsable designado para corregirlo ni un proceso para investigar el origen del error.

#### Problema 3: Inconsistencias en Reportes de Ventas entre Áreas

**Descripción:** Los distintos departamentos (Ventas, Finanzas, Logística) generan reportes de ventas diferentes para el mismo período.

**Impacto:**
- Desconfianza en los datos presentados a la gerencia
- Decisiones basadas en información contradictoria
- Conflicto interno entre áreas por "cifras oficiales"

**Ejemplo:** Ventas reporta S/ 500,000 en enero, pero Finanzas muestra S/ 475,000 por diferencias en criterios de consolidación.

#### Problema 4: Políticas de Calidad de Datos No Documentadas

**Descripción:** No existen políticas formales que definan estándares de calidad, formatos de captura o reglas de validación para los datos.

**Impacto:**
- Cada área captura datos con criterios propios
- No hay lineamientos para validar completitud o exactitud
- Imposibilidad de implementar controles automáticos

**Ejemplo:** Un área registra teléfonos con código de país (+51) y otra sin él, generando inconsistencias que impiden comunicaciones automatizadas.

---

### Riesgos Asociados a la Situación Actual

#### Riesgo 1: Decisiones Estratégicas Basadas en Datos No Confiables

**Descripción:** La gerencia toma decisiones de inversión, expansión o reducción de costos utilizando información inconsistente o incompleta.

**Consecuencias:**
- Inversiones en productos o zonas con demanda sobreestimada
- Pérdida de oportunidades por no identificar tendencias reales
- Problemas legales si se presentan estados financieros incorrectos

**Ejemplo:** DATARETAIL decide abrir 5 tiendas nuevas basándose en reportes de ventas que no consideran devoluciones, sobreestimando la rentabilidad real.

#### Riesgo 2: Incumplimiento Normativo y Sanciones

**Descripción:** Sin trazabilidad, auditorías o políticas documentadas, la empresa es vulnerable a sanciones por manejo inadecuado de datos de clientes y proveedores.

**Consecuencias:**
- Multas por incumplimiento de normas de protección de datos personales
- Pérdida de contratos con proveedores que exigen estándares de calidad
- Daño reputacional ante clientes y socios comerciales

**Ejemplo:** Si un proveedor solicita evidencia de controles de calidad de datos para mantener contrato y DATARETAIL no puede demostrarlo, pierde el acuerdo comercial.

---

## 2. EVALUACIÓN DE MADUREZ (4 puntos)

### Nivel de Madurez Actual: Nivel 1 — Inicial

**Según el modelo COBIT/CMM, DATARETAIL se encuentra en el Nivel 1 (Inicial) de madurez.**

| Dimensión | Evidencia | Nivel CMM |
|-----------|-----------|-----------|
| **Calidad de datos** | Registros duplicados, inconsistencias entre áreas, sin estándares documentados | 1 |
| **Gestión de datos** | Sin roles definidos, procesos dependen del conocimiento individual | 1 |
| **Cumplimiento normativo** | Sin políticas formales, seguimiento manual por correo electrónico | 1 |
| **Integración de sistemas** | Múltiples sistemas sin integración centralizada | 1 |
| **Medición** | No existen métricas para evaluar calidad de la información | 0-1 |

### Justificación

El Nivel 1 (Inicial) se caracteriza por:

1. **Procesos informales y reactivos:** Las actividades de gestión de datos ocurren sin un procedimiento establecido. Cada colaborador actúa según su criterio personal.

2. **Dependencia del conocimiento individual:** Los procesos dependen de quién realiza la tarea. Si una persona clave se ausenta, la información puede perderse o degradarse.

3. **Ausencia de estandarización:** No hay políticas documentadas, formatos unificados ni reglas de validación. Cada área maneja datos con sus propios criterios.

4. **Resultados inconsistentes:** Los reportes generados por diferentes áreas presentan discrepancias porque no existe una "versión única de la verdad".

5. **Seguimiento manual:** El control de incidencias se realiza mediante correos electrónicos, sin herramientas de tracking ni métricas de seguimiento.

**Ejemplo concreto:** Cuando un cliente reporta un error en su registro, no hay un proceso definido para corregirlo.Depende de quién reciba la queja y de su voluntad de resolverla.

### Características del Siguiente Nivel: Nivel 2 — Repetible

**Objetivo:** Alcanzar el Nivel 2 (Repetible) para establecer procesos básicos documentados con resultados consistentes.

| Característica | Descripción | Beneficio Esperado |
|---------------|-------------|-------------------|
| **Procesos documentados** | Cada actividad crítica de gestión de datos tiene un procedimiento escrito | Consistencia en ejecución |
| **Resultados repetibles** | Al seguir el mismo proceso, se obtienen resultados similares independientemente de quién lo ejecute | Reducción de errores humanos |
| **Básicas herramientas de control** | Se implementan mecanismos simples de validación y seguimiento | Detección temprana de problemas |
| **Responsabilidades asignadas** | Aunque no haya roles especializados, se asignan responsables específicos por proceso | Accountability claro |
| **Registros de actividad** | Se documentan las acciones realizadas sobre los datos | Trazabilidad básica |

**Plan para alcanzar el Nivel 2:**

1. **Semana 1-2:** Documentar los 5 procesos críticos de gestión de datos (captura, validación, almacenamiento, reporte, archivado)
2. **Semana 3-4:** Definir responsables para cada proceso y capacitarlos
3. **Semana 5-6:** Implementar herramientas básicas de control (plantillas de validación, registro de cambios)
4. **Semana 7-8:** Establecer métricas simples (% completitud, tiempo de respuesta) y reportes semanales

---

## 3. DISEÑO DE CONTROLES Y RESPONSABILIDADES (4 puntos)

### Tres Controles para Mejorar la Calidad e Integridad de los Datos

#### Control 1: Control Preventivo — Validación de Entrada de Datos

**Descripción:** Implementar validaciones automáticas en el punto de captura para asegurar que los datos cumplan con estándares de calidad antes de ingresar al sistema.

**Componentes:**
- Reglas de validación en formularios (campos obligatorios, formato de correo, teléfono válido)
- Listas desplegables para categorías predefinidas (evitar texto libre)
- Alertas en tiempo real si un registro no cumple estándares

**Ejemplo práctico:** Al registrar un nuevo cliente, el sistema valida automáticamente:
- DNI: exactamente 8 dígitos numéricos
- Teléfono: 9 dígitos empezando por 9
- Correo: formato válido con @ y dominio existente
- Dirección: campo obligatorio, mínimo 10 caracteres

**Responsable:** Gerente de Tecnología + Data Steward de Clientes

**Frecuencia:** Continua (en cada transacción)

#### Control 2: Control Detectivo — Auditorías Periódicas de Calidad

**Descripción:** Realizar revisiones programadas para identificar registros que no cumplen con los estándares de calidad establecidos.

**Componentes:**
- Script de auditoría semanal que escanea bases de datos
- Reporte automático de anomalías (duplicados, campos vacíos, formatos incorrectos)
- Dashboard de calidad de datos para monitoreo en tiempo real

**Ejemplo práctico:** Cada lunes a las 8:00 AM, el sistema genera un reporte que muestra:
- % de registros de clientes con todos los campos completos
- Cantidad de duplicados detectados
- Registros con formato inconsistente

**Responsable:** Data Governance Manager + Equipo de TI

**Frecuencia:** Semanal

#### Control 3: Control Correctivo — Proceso de Limpieza y Corrección

**Descripción:** Establecer un proceso formal para corregir los errores detectados, con seguimiento hasta su resolución completa.

**Componentes:**
- Ticket de incidencia para cada error detectado
- Flujo de aprobación para correcciones masivas
- Registro de todas las correcciones realizadas (trazabilidad)

**Ejemplo práctico:** Cuando la auditoría detecta 150 registros de clientes con teléfono incompleto:
1. Se crea un ticket con prioridad "Alta"
2. Se asigna al Data Steward de Clientes
3. Se contacta a los clientes o se cruza con fuentes externas
4. Se registra la corrección con fecha, responsable y motivo
5. Se cierra el ticket una vez verificada la calidad

**Responsable:** Data Stewards por dominio + Data Governance Manager

**Frecuencia:** Según detección (semanal o bajo demanda)

---

### Tres Roles Responsables de la Gobernanza de Datos según COBIT

#### Rol 1: Chief Data Officer (CDO) — Liderazgo Estratégico

**Funciones principales:**
- Alinear la estrategia de datos con los objetivos de negocio de DATARETAIL
- Establecer la visión y dirección del programa de gobernanza de datos
- Comunicar el valor de los datos a la alta gerencia y accionistas
- Aprobar inversiones en herramientas, infraestructura y talento
- Asegurar cumplimiento de regulaciones de protección de datos

**Área de reporte:** Gerencia General

**Justificación COBIT:** Este rol corresponde al dominio **EDM** (Evaluar, Dirigir y Monitorear), responsable de la dirección estratégica.

#### Rol 2: Data Governance Manager — Políticas y Cumplimiento

**Funciones principales:**
- Diseñar e implementar políticas de gobernanza de datos
- Definir estándares de calidad y reglas de validación
- Establecer y mantener el catálogo de datos (Data Catalogue)
- Coordinar la asignación de Data Owners por dominio
- Auditar cumplimiento de políticas y reportar resultados

**Área de reporte:** CDO o Gerencia de Tecnología

**Justificación COBIT:** Este rol ejecuta procesos del dominio **APO** (Alinear, Planear y Organizar), específicamente APO14 (Gestión de Datos).

#### Rol 3: Data Steward — Ejecución por Dominio

**Funciones principales:**
- Mantener la calidad de datos dentro de su dominio asignado (Clientes, Productos, Ventas, etc.)
- Validar y aprobar cambios en datos maestros
- Resolver incidencias de calidad de datos de su área
- Capacitar a su equipo en buenas prácticas de captura y uso de datos
- Reportar métricas de calidad al Data Governance Manager

**Área de reporte:** Data Governance Manager + Gerente de Área

**Justificación COBIT:** Este rol opera en el dominio **DSS** (Entrega, Servicio y Soporte), ejecutando controles operativos de calidad.

---

## 4. DEFINICIÓN DE MÉTRICAS E INDICADORES (4 puntos)

### KPI 1: Porcentaje de Registros con Datos Completos

**Nombre:** Completitud de Registros de Clientes

**Fórmula:**
```
% Completitud = (Registros con todos los campos obligatorios completos / Total de registros) × 100
```

**Objetivo:** Asegurar que al menos el 95% de los registros de clientes tengan toda la información requerida (nombre, DNI, teléfono, correo, dirección).

**Frecuencia de medición:** Semanal

---

### KPI 2: Tasa de Duplicación de Clientes

**Nombre:** Índice de Duplicación

**Fórmula:**
```
% Duplicación = (Registros duplicados identificados / Total de registros únicos) × 100
```

**Objetivo:** Reducir la tasa de duplicación a menos del 2% en los primeros 6 meses de implementación.

**Frecuencia de medición:** Mensual

---

### KPI 3: Tiempo de Resolución de Incidencias de Calidad

**Nombre:** Lead Time de Corrección

**Fórmula:**
```
Lead Time = Promedio (Fecha de cierre - Fecha de apertura del ticket)
```

**Objetivo:** Resolver el 80% de las incidencias de calidad de datos en menos de 48 horas.

**Frecuencia de medición:** Semanal

---

### KPI 4: Cumplimiento de Políticas de Calidad por Área

**Nombre:** Adherencia a Políticas

**Fórmula:**
```
% Cumplimiento = (Áreas que cumplen todas las políticas documentadas / Total de áreas evaluadas) × 100
```

**Objetivo:** Alcanzar 100% de cumplimiento en todas las áreas operativas en 12 meses.

**Frecuencia de medición:** Trimestral

---

## 5. PLAN DE MEJORA CONTINUA (4 puntos)

### Objetivo General

Implementar un programa de gobernanza de datos basado en COBIT que permita a DATARETAIL S.A. alcanzar el Nivel 3 de madurez en gestión de calidad de datos en un plazo de 12 meses.

---

### Tres Actividades Prioritarias

#### Actividad 1: Implementación del Catálogo de Datos Corporativo

**Descripción:** Crear un repositorio centralizado que documente todas las fuentes de datos de la empresa, sus propietarios, estándares de calidad y estado actual.

**Acciones:**
1. Inventariar sistemas y bases de datos existentes
2. Clasificar datos por dominio (Clientes, Productos, Transacciones, Proveedores)
3. Asignar Data Owner a cada dominio
4. Documentar metadatos: fuente, formato, calidad actual, responsable
5. Implementar herramienta de catálogo (Microsoft Purview, Collibra o similar)

**Duración:** 6 semanas

**Responsable:** Data Governance Manager

**Indicador de éxito:** 100% de fuentes de datos críticas documentadas en el catálogo

---

#### Actividad 2: Capacitación en Estándares de Calidad de Datos

**Descripción:** Capacitar a todo el personal involucrado en captura y uso de datos sobre las nuevas políticas, procedimientos y herramientas.

**Acciones:**
1. Diseñar programa de capacitación por rol (captura, análisis, reporte)
2. Ejecutar talleres presenciales o virtuales de 2 horas
3. Crear material de referencia rápida (guías, checklists)
4. Establecer programa de certificación interna
5. Realizar evaluaciones post-capacitación

**Duración:** 4 semanas (con refuerzo trimestral)

**Responsable:** Data Governance Manager + RRHH

**Indicador de éxito:** 90% del personal capacitado y aprobando evaluación

---

#### Actividad 3: Dashboard de Monitoreo de Calidad de Datos

**Descripción:** Implementar un tablero de control en tiempo real que muestre el estado de los KPIs de calidad para cada dominio de datos.

**Acciones:**
1. Definir fuentes de datos para cada KPI
2. Configurar conexiones con sistemas operativos
3. Diseñar visualizaciones por rol (gerencia, steward, operaciones)
4. Establecer alertas automáticas cuando KPIs bajen de la meta
5. Capacitar usuarios en interpretación de dashboards

**Duración:** 3 semanas

**Responsable:** Equipo de TI + Data Governance Manager

**Indicador de éxito:** Dashboard operativo con 4 KPIs activos y alertas configuradas

---

### Herramienta Tecnológica Sugerida

| Herramienta | Propósito | Costo Estimado |
|-------------|-----------|----------------|
| **Microsoft Purview** | Catálogo de datos, lineage automático, clasificación | $2,000/mes |
| **Power BI** | Dashboards de KPIs y reportes ejecutivos | $300/mes |
| **Jira** | Seguimiento de incidencias de calidad de datos | $500/mes |

**Alternativa PYME:** Si el presupuesto es limitado, se puede iniciar con Excel + Power Automate para flujos básicos de validación y reportes.

---

### Indicadores de Éxito del Plan

| Indicador | Meta | Plazo |
|-----------|------|-------|
| Nivel de madurez CMM | Nivel 3 | 12 meses |
| Completitud de registros | ≥ 95% | 6 meses |
| Tasa de duplicación | ≤ 2% | 6 meses |
| Tiempo de resolución de incidencias | ≤ 48 horas | 3 meses |
| Personal capacitado | 90% | 4 semanas |
| Dashboard operativo | 4 KPIs activos | 3 semanas |

---

## CONCLUSIONES

DATARETAIL S.A. enfrenta un reto común en muchas organizaciones retail: **pasar de una gestión reactiva y fragmentada de datos a una estrategia gobernanza y medición.** La ausencia de roles definidos, políticas documentadas y herramientas de control genera inconsistencias que afectan la toma de decisiones.

### Síntesis de Solución:

1. **Diagnóstico:** La empresa está en Nivel 1 (Inicial) de madurez COBIT, con problemas de calidad, duplicidad y falta de trazabilidad.

2. **Roles:** Implementar CDO, Data Governance Manager y Data Stewards para crear una estructura clara de responsabilidades.

3. **Controles:** Combinar controles preventivos (validación de entrada), detectivos (auditorías periódicas) y correctivos (procesos de limpieza).

4. **Métricas:** Establecer KPIs medibles y monitoreados regularmente para evaluar el progreso.

5. **Mejora continua:** Ejecutar un plan de 12 meses con actividades priorizadas y herramientas tecnológicas adecuadas.

### Impacto Esperado (12 meses):

- **Reducción de duplicación de clientes:** Del ~15% actual a menos del 2%
- **Mejora en completitud de datos:** Del ~60% actual a más del 95%
- **Tiempo de resolución de incidencias:** De días a menos de 48 horas
- **Confianza en reportes:** De inconsistencias entre áreas a una "versión única de la verdad"
- **Cumplimiento normativo:** De sin documentación a políticas auditables

---

**Referencias norma APA:**

Luna Figueroa, B. P. (2026). Dirección Estratégica de Datos: Sesiones de clase 7-11. Instituto de Ingeniería de Sistemas de Lima (ISIL), cohorte 2026-1.

ISACA. (2018). *COBIT 2019: Introduction and Methodology*. ISACA.
