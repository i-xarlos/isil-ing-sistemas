# Estrategias de Datos: casos prácticos y viabilidad de proyectos (Clase 2)

**Curso:** Dirección Estratégica de Datos (ISIL, 2026-1)  
**Docente:** Brezli Paola Luna Figueroa  
**Fecha:** 16/04/2026

---

## 1. Innovación social y el proyecto Guagua Laptop

La sesión abrió con un video sobre **Guagua Laptop**, un emprendimiento peruano que fabrica laptops con materiales reciclados y software libre para reducir la brecha digital en zonas vulnerables.

### EducatIA: IA generativa sin conexión

El proyecto incluye **EducatIA**, una herramienta de inteligencia artificial generativa diseñada para funcionar *offline*. Esto es clave en comunidades rurales donde el acceso a internet es intermitente o inexistente.

> **Conexión con Diseño de Soluciones con IA:** EducatIA demuestra que la IA no siempre depende de la nube. Los modelos locales permiten despliegues en entornos con infraestructura limitada.

### Hardware vs. estrategia: el error más común

El debate en clase reveló una tensión frecuente en proyectos de tecnología educativa:

| Factor | Enfoque equivocado | Enfoque estratégico |
|---|---|---|
| Dispositivo | Entregar la tablet y ya | Asegurar que docentes y alumnos la usen pedagógicamente |
| Conectividad | Asumir internet disponible | Diseñar para funcionar offline con servidores locales |
| Datos | Ignorar el consumo | Monitorear y restringir usos no educativos |

**Experiencia real compartida en clase:** un estudiante describió su trabajo actualizando tablets del Ministerio de Educación (Minedu). Los problemas más frecuentes fueron el agotamiento rápido de datos por usos recreativos y la ausencia de servidores locales en escuelas rurales, que dejaba sin soporte a los dispositivos cuando no había red.

**Conclusión:** El dispositivo es solo el vehículo. Sin estrategia de datos, formación docente y soporte técnico local, la inversión no genera aprendizaje.

---

## 2. Caso Data Force: gobierno de datos en el sector financiero

**Data Force** es una consultora chilena que trabajó con una institución financiera que sufría graves problemas de calidad de datos.

### El problema

- El banco llamaba a clientes que **ya habían pagado** su deuda, generando fricciones y pérdida de confianza.
- Las campañas de marketing llegaban a segmentos incorrectos, con bajo retorno.
- La raíz de ambos problemas era la misma: **datos de baja calidad**.

### La solución: Data Governance

Data Force implementó un modelo de **Gobierno de Datos** que incluyó:

1. Auditoría del estado actual de los datos (calidad, completitud, consistencia).
2. Definición de propietarios de datos por área del negocio.
3. Reglas claras de validación y actualización de registros.
4. Procesos de limpieza y enriquecimiento continuo.

### El resultado

| Métrica | Antes | Después |
|---|---|---|
| Calidad de datos | 75 % | 99 % |
| Errores en cobranzas | Frecuentes | Casi eliminados |
| Precisión de campañas | Baja | Alta |

**Lección clave:** La calidad de los datos no es un problema técnico aislado; es un problema de gobierno. Sin reglas claras de quién es responsable de los datos y cómo se mantienen, el deterioro es inevitable.

> **Conexión con Arquitectura Empresarial:** el Gobierno de Datos es parte de la capa de Arquitectura de Datos en TOGAF. Establece políticas, roles y estándares que habilitan decisiones confiables.

---

## 3. Estrategia de datos en la administración pública

La profesora contrastó cómo usan los datos el sector privado y el sector público.

### Privado vs. público: objetivos distintos

| Dimensión | Sector privado | Sector público |
|---|---|---|
| Objetivo principal | Competitividad y ROI | Transparencia y servicio al ciudadano |
| Audiencia de los datos | Accionistas, clientes | Ciudadanos, organismos de control |
| Riesgo de opacidad | Pérdida de mercado | Pérdida de legitimidad y confianza |

### Caso: Gobierno de Aragón (España)

El Gobierno de Aragón implementó una estrategia de datos orientada a **interoperabilidad**: la capacidad de que sistemas diferentes se comuniquen y compartan información.

**Problema concreto:** un ciudadano tenía su DNI en un sistema, su pasaporte en otro y su licencia de conducir en un tercero. Cada trámite exigía presentar documentos por separado porque los sistemas no "conversaban" entre sí.

**Solución:** una plataforma de datos centralizada que conecta los registros de identidad, eliminando la duplicidad de trámites y reduciendo tiempos de atención.

**Impacto directo para el ciudadano:**
- Menos papeleo.
- Menos visitas presenciales.
- Menos errores por datos desactualizados en distintos registros.

> **Aplicación local:** en el Perú, iniciativas como la PIDE (Plataforma de Interoperabilidad del Estado) buscan el mismo objetivo: conectar los sistemas de salud, educación, tributación y seguridad para ofrecer servicios más eficientes.

---

## 4. Dinámica: el caso Fabrico

La clase analizó los problemas de datos en **Fabrico**, una empresa ficticia de manufactura con una cadena de suministro disfuncional.

### Causas de ineficiencia identificadas

- **Mala elección de proveedores:** sin datos de desempeño histórico, se elige por precio, no por confiabilidad.
- **Falta de comunicación del alcance:** los proveedores no tienen visibilidad de los volúmenes reales que se les pedirá.
- **Visibilidad de inventario nula:** el área de producción no sabe en tiempo real cuánto hay en bodega, lo que genera sobrestock o desabastecimiento.

### La "última milla": el punto crítico

En logística, la **última milla** es el tramo final de entrega al cliente. Es el más caro y el que más impacta la experiencia.

**Ejemplo concreto:** una torta de cumpleaños producida con los mejores ingredientes y embalada correctamente pierde todo su valor si llega tarde, fría o en mal estado. Todo el esfuerzo previo se anula en el último eslabón.

### El rol de los datos en tiempo real

Las aplicaciones de seguimiento (como las de delivery o de aerolíneas) permiten:

- **Al cliente:** saber exactamente dónde está su pedido y cuándo llega.
- **A la empresa:** detectar cuellos de botella en tiempo real y reasignar recursos.
- **A ambos:** reducir la incertidumbre, que es la principal causa de reclamos y costos adicionales.

**Tecnologías habilitadoras:** GPS integrado, IoT en vehículos, alertas automáticas por umbral de temperatura o tiempo de tránsito.

---

## 5. Planificación y viabilidad de proyectos de datos

La sesión cerró con un marco práctico para implementar una dirección estratégica de datos en cualquier organización.

### Paso 1 — Alineación estratégica

Los datos deben responder al objetivo principal del negocio.

**Ejemplo:** si la meta de una empresa es prepararse para una venta o fusión, los datos deben mostrar la salud financiera con precisión, consistencia y trazabilidad. Un inversor que encuentre inconsistencias en los datos retirará su oferta.

### Paso 2 — Diagnóstico del estado actual

Antes de cualquier inversión, hay que hacer **"la foto del espejo"**: un diagnóstico honesto de la calidad de la información disponible.

Preguntas clave:
- ¿Qué porcentaje de los registros está completo?
- ¿Cuántos sistemas duplican la misma información?
- ¿Quién es responsable de cada fuente de datos?

### Paso 3 — Análisis de riesgos

Todo proyecto de datos enfrenta tres tipos de riesgo:

| Tipo | Descripción | Ejemplo |
|---|---|---|
| **Técnico** | Incompatibilidad entre sistemas antiguos y nuevos | Un ERP legacy que no puede exportar datos al nuevo CRM |
| **Operativo** | Resistencia al cambio del personal | Equipos que siguen usando Excel en paralelo al nuevo sistema |
| **Financiero** | Presupuesto insuficiente o ROI difícil de justificar | Proyecto detenido a mitad por recortes |

### Change Management: el riesgo más subestimado

La resistencia interna es el mayor obstáculo en proyectos de datos. Un sistema perfecto fracasa si el equipo no lo adopta.

**Estrategias de change management:**
- Involucrar a los usuarios clave desde el diseño, no solo en la implementación.
- Comunicar el beneficio personal de cada cambio ("¿qué gano yo con esto?").
- Capacitar de forma práctica y continua, no en una sola sesión de lanzamiento.
- Designar campeones internos que promuevan el uso del nuevo sistema.

---

## Conclusión de la sesión

> Tomar decisiones "a ciegas" puede arruinar un negocio. En 2026, la tecnología existe y es accesible. El reto principal es establecer un **Gobierno de Datos** que garantice que la información sea íntegra, veraz y segura.

Los tres pilares de una estrategia de datos efectiva:

1. **Calidad:** los datos deben ser correctos, completos y actualizados.
2. **Gobierno:** debe haber reglas claras sobre quién gestiona qué datos y cómo.
3. **Alineación:** la estrategia de datos debe servir al objetivo del negocio, no existir por sí sola.
