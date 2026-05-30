# Arquitectura Empresarial: Fundamentos (Clase 1)

**Curso:** Arquitectura Empresarial (ISIL, 2026-1)  
**Docente:** Richard Anthony Romero Mori  
**Fecha:** 08/04/2026

---

## Resumen de la sesión
La primera clase presentó la **Arquitectura Empresarial (AE)** como una disciplina de nivel estratégico.  
La idea central fue clara: la tecnología debe responder a objetivos del negocio, no avanzar de forma aislada.

## Síntesis integrada del material fuente

**Archivo base consolidado:** 40096-S01-PRESENTACION.pdf

La presentación de la sesión reforzó que la arquitectura empresarial funciona como un marco para asegurar coherencia entre estrategia, operación y tecnología. También resumió su evolución desde un enfoque centrado en TI hacia una visión empresarial completa, con foco en alineamiento estratégico, reutilización y trazabilidad.

**Conceptos clave consolidados:** definición y propósito de la AE, principios de alineamiento, evolución histórica, beneficios estratégicos y componentes de negocio, datos, aplicaciones e infraestructura.

## ¿Qué es la AE y por qué importa?

La **AE** es una forma de diseñar y gobernar la organización como un sistema integrado.

Sirve para:

- Gestionar la complejidad cuando la empresa crece.
- Evitar "parches" que resuelven algo puntual pero crean nuevos problemas.
- Alinear decisiones tecnológicas con metas de negocio.
- Mejorar coordinación entre áreas técnicas y no técnicas.

### Idea clave

La AE no es solo hacer diagramas: es tomar mejores decisiones de cambio organizacional.

---

## Principios trabajados en clase
- **Alineamiento estratégico:** cada proyecto de TI debe justificar su aporte al negocio.
- **Visión holística:** entender cómo se relacionan procesos, datos, aplicaciones y tecnología.
- **Evolución ordenada:** pasar de decisiones reactivas a una hoja de ruta planificada.
- **Valor sostenible:** priorizar soluciones reutilizables y mantenibles en el tiempo.

## Dominios de la Arquitectura Empresarial (4 pilares)

1. **Negocio:** estrategia, capacidades y procesos que generan valor.
2. **Datos:** información crítica, calidad de datos y soporte para decisiones.
3. **Aplicaciones:** sistemas, integraciones y dependencias entre plataformas.
4. **Tecnología:** infraestructura, redes, plataformas y continuidad operativa.

### Conexión práctica

Cuando estos cuatro dominios se diseñan por separado, aparecen brechas.  
Cuando se diseñan en conjunto, la organización reduce fricción y mejora resultados.

---

## Introducción a **TOGAF** y **ADM**
En clase se introdujo **TOGAF** como marco de referencia para ordenar el trabajo de arquitectura.

- **TOGAF:** framework para diseñar, planificar y gobernar la AE.
- **ADM (Architecture Development Method):** método de trabajo para conducir el cambio.

---

### AS-IS y TO-BE
- **AS-IS:** estado actual de la organización.
- **TO-BE:** estado objetivo al que se quiere llegar.

El valor del enfoque es cerrar brechas entre ambos estados con una ruta realista.

## Reutilización: no reinventar la rueda

Se enfatizó que una buena arquitectura aprovecha componentes, patrones y prácticas ya probadas.

Beneficios de reutilizar:

- Menor costo de implementación.
- Menor riesgo técnico y operativo.
- Mayor velocidad de entrega.
- Mayor estandarización entre proyectos.

---

## Dinámica de clase y perfil de estudiantes
La clase incluyó presentación del grupo y contexto profesional.

- Perfil técnico predominante: Desarrollo, Redes y Ciberseguridad.
- Varios estudiantes están en proceso de convalidación hacia **Ingeniería de Sistemas**.
- Se observó diversidad de experiencia en organizaciones públicas y privadas.

---

### Sectores representados
- Banca (ej. BCP)
- Educación
- Sector público (ej. SUNAT, Ministerio de Agricultura)
- Seguros
- Hotelería

## Casos prácticos revisados

### Smart Cities (Ciudades Inteligentes)

- Se analizó la ciudad como "sistema de sistemas".
- Sensores y datos permiten optimizar tráfico, seguridad y uso de recursos.
- Lección de AE: integrar múltiples actores, procesos y plataformas.

### Continuidad bancaria y contingencia (DR)

- Caso de inversión anual en centro de contingencia para evitar pérdidas por interrupción.
- Lección de AE: la arquitectura también guía decisiones de riesgo y continuidad del negocio.

### Cambridge Analytica

- Caso usado para discutir uso de datos personales y perfilado.
- Lección de AE: gobierno de datos, ética y control del uso de información son parte del diseño empresarial.

## Transcripción del PPT: Introducción a la Arquitectura Empresarial

### Definición y Propósito

La arquitectura empresarial asegura coherencia y trazabilidad entre estrategia, operación y tecnología, mediante principios, modelos y gobierno que guían la evolución de la organización.

**Ejemplo práctico:** En una empresa de retail como Falabella, la AE evita que el sistema de inventarios crezca sin integrarse con ventas online. Sin AE, cada departamento compra su propio software, creando silos. Con AE, se diseña un modelo unificado que conecta inventarios, pedidos y logística, reduciendo costos y mejorando la experiencia del cliente.

### Evolución Histórica y Contexto Actual

La AE surge para gestionar complejidad organizacional. El crecimiento de procesos, sistemas y datos genera duplicidad, silos e incoherencia. La AE aparece como disciplina para describir el sistema empresa y guiar su evolución.

**Ejemplo práctico:** Una startup que comienza con un solo sistema ERP, pero al crecer agrega CRM, BI y apps móviles. Sin AE, estos sistemas no se comunican, llevando a datos duplicados. Con AE, se planifica una arquitectura integrada desde el inicio, como en el caso de Amazon, que evoluciona su plataforma para manejar millones de transacciones sin colapsar.

### Beneficios Estratégicos y Operativos

La AE crea un lenguaje común para describir arquitectura y soluciones, reduciendo ambigüedad entre áreas. Enterprise Continuum organiza arquitecturas y soluciones desde lo genérico hasta lo específico, facilitando adopción progresiva.

**Ejemplo práctico:** En el sector salud, como en un hospital, la AE permite integrar sistemas de pacientes, facturación y telemedicina. Sin ella, un paciente podría tener registros duplicados en diferentes apps. Con AE, se crea un repositorio central de datos maestros, mejorando diagnósticos y reduciendo errores, como en el sistema de Epic en hospitales de EE.UU.

### Componentes: Negocio, Datos, Aplicaciones e Infraestructura

- **Arquitectura de Negocio:** capacidades, procesos end-to-end, roles, servicios.
- **Arquitectura de Datos/Información:** entidades, flujos, calidad, gobierno, linaje.
- **Arquitectura de Aplicaciones:** portafolio, integraciones, servicios, patrones.
- **Arquitectura Tecnológica:** plataformas, red, nube/híbrido, observabilidad, continuidad.

**Ejemplo práctico:** En una empresa de logística como DHL, la arquitectura de negocio define procesos de envío, la de datos asegura trazabilidad de paquetes, la de aplicaciones integra apps de tracking, y la tecnológica soporta la nube para escalabilidad. Esto permite entregar paquetes en tiempo real, diferenciándose de competidores.

### Principios Fundamentales

- Alineamiento estratégico: toda iniciativa debe mapearse a objetivos y capacidades.
- Estandarización selectiva: estandarizar lo crítico para escalar (no todo).
- Interoperabilidad: integración por contratos (APIs, eventos, estándares).
- Reutilización antes que duplicación.
- Seguridad y cumplimiento por diseño.

**Ejemplo práctico:** En banca, el principio de interoperabilidad permite que una app móvil se integre con el core bancario. Sin él, los clientes tendrían que usar múltiples apps. Con AE, se diseña una API común, como en BBVA, facilitando transacciones seguras y rápidas.
---
## Próximos pasos del curso
- Comunicación ágil por grupo de WhatsApp.
- Enfoque aplicativo: uso de herramientas para modelar arquitectura.
- Aplicación de conceptos en escenarios reales de sectores diversos.
- Profundización progresiva en **TOGAF**, **ADM** y gobierno de datos.

## Glosario breve

- **AE:** disciplina estratégica para alinear negocio y tecnología. Trata la organización como un sistema integrado donde procesos, datos,
aplicaciones e infraestructura deben diseñarse juntos, no aislados.
- **AS-IS:** situación actual de procesos, datos, aplicaciones y tecnología. Es el punto de partida para cualquier iniciativa de cambio.
- **TO-BE:** estado objetivo definido para la evolución organizacional. Es lo que se quiere lograr después de implementar cambios.
- **TOGAF:** marco de trabajo (framework) que proporciona método, herramientas y buenas prácticas para diseñar, planificar e implementar arquitectura empresarial.
- **ADM:** Architecture Development Method. Es el método propuesto por TOGAF que divide el trabajo arquitectónico en fases ordenadas para pasar de AS-IS a TO-BE.
- **Alineamiento estratégico:** relación directa entre iniciativas de TI y objetivos de negocio. Garantiza que el dinero invertido en tecnología aporta valor estratégico.
- **Dominios de AE:** cuatro pilares que deben diseñarse juntos: Negocio (estrategia, procesos), Datos (información crítica), Aplicaciones (sistemas), Tecnología (infraestructura).

---

## Conceptos relacionados en otros cursos

- **Diseño de Soluciones con IA — Clase 1:** introduce el concepto de "alineamiento de diseño", similar a cómo AE alinea negocio con tecnología. Ambos enfoques priorizan **entender el problema antes de elegir la solución**. [Ver notas](../../diseno-soluciones-ia/clase-1/diseno-soluciones-ia-introduccion-clase-1.md)

---

## Visión integrada de los 4 dominios

```mermaid
flowchart TB
    OBJ["🎯 Objetivo del Negocio"] --> PROC["📋 Procesos Clave"]
    PROC --> APP["💻 Aplicaciones"]
    PROC --> DATA["📊 Datos"]
    DATA --> APP
    APP --> TECH["🔧 Tecnología"]
    TECH --> CONT["♻️ Continuidad Operativa"]
    
    PROC -.Impactado por.-> NEGOCIO["DOMINIO NEGOCIO"]
    DATA -.Impactado por.-> DATOS["DOMINIO DATOS"]
    APP -.Impactado por.-> APLICACIONES["DOMINIO APLICACIONES"]
    TECH -.Impactado por.-> TECNOLOGIA["DOMINIO TECNOLOGÍA"]
    
    NEGOCIO --> RESULT["✅ Decisiones alineadas<br/>Menos parches<br/>Más valor sostenible"]
    DATOS --> RESULT
    APLICACIONES --> RESULT
    TECNOLOGIA --> RESULT
    
    style OBJ fill:#fff3e0
    style RESULT fill:#c8e6c9
    style NEGOCIO fill:#e3f2fd
    style DATOS fill:#f3e5f5
    style APLICACIONES fill:#fce4ec
    style TECNOLOGIA fill:#e0f2f1
```

### Clave del diagrama

- Los **4 dominios** están conectados: cambios en uno afectan a los otros
- Un **objetivo de negocio** debe traducirse en procesos, datos, aplicaciones y tecnología alineados
- El resultado es una **arquitectura coherente** que evita decisiones aisladas
