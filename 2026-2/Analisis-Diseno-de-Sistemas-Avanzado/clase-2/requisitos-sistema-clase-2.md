# Requisitos del Sistema (Clase 2)

**Curso:** Análisis y Diseño de Sistemas Avanzado (ISIL, 2026-2)  
**Docente:** [pendiente]  
**Fecha:** 01/09/2026

---

## Introducción

**Gancho humano:** ¿Alguna vez has construido algo sin tener claro qué necesitas? Los requisitos son la brújula que guía todo el desarrollo de software.

**Pregunta guía:** ¿Cómo asegurarnos de que el sistema que construimos es el que realmente necesitan los usuarios?

**Objetivos de aprendizaje:**
- Conocer la visión del sistema y su importancia
- Aprender a especificar requisitos de software
- Comprender la verificación y validación de requisitos
- Entender la trazabilidad de requisitos

---

## 1. Visión del Sistema

### ¿En qué consiste?

Este documento articula los objetivos generales, las funcionalidades clave, las restricciones y los criterios de éxito del sistema que se va a desarrollar. La visión del sistema sirve como un punto de referencia común para desarrolladores, stakeholders, gerentes de proyecto y otros miembros del equipo.

### Estándar IEEE Std 830-2018

El estándar IEEE proporciona directrices sobre cómo escribir requisitos de software:
- Descripción del sistema, incluyendo propósito, alcance y objetivos
- Descripción de cómo los usuarios interactúan con el sistema
- Descripción de las funciones que el sistema debe realizar
- Descripción de los requisitos de rendimiento, seguridad, confiabilidad, etc.

### Metodologías para la Visión del Sistema

| Metodología | Descripción |
|-------------|-------------|
| **RUP** | Ofrece una plantilla detallada para un documento de visión |
| **Scrum** | Enfatiza la importancia de tener una "visión del producto" clara |
| **SAFe** | Similar a Scrum, pero diseñado para proyectos más grandes |
| **PMBoK** | Incluye directrices aplicables a la creación de un documento de visión |

### Pasos para Desarrollar la Visión del Sistema

1. **Preparación Inicial:** Reunir stakeholders, definir alcance, identificar fuentes de información
2. **Investigación y Recopilación:** Entrevistas, revisión de documentación, análisis de sistemas similares
3. **Definición de Objetivos y Alcance:** Establecer objetivos generales y definir qué estará incluido
4. **Identificación de Stakeholders:** Listar todas las partes interesadas y definir sus roles
5. **Análisis de Necesidades del Negocio:** Identificar problemas que el sistema resolverá
6. **Características y Funcionalidades:** Listar características clave del sistema
7. **Restricciones y Requisitos:** Identificar limitaciones técnicas, legales o de negocio
8. **Definición de Criterios de Éxito:** Establecer métricas o KPIs
9. **Desarrollo de Escenarios de Uso:** Crear escenarios que describan cómo se utilizará el sistema
10. **Arquitectura de Alto Nivel:** Proporcionar una visión general de la estructura
11. **Revisión y Aprobación:** Revisar con todos los stakeholders y obtener aprobación formal
12. **Mantenimiento y Actualización:** Mantener el documento actualizado

---

## 2. Especificación de Requisitos del Sistema

### ¿Por qué es importante?

Es vital invertir tiempo y esfuerzo en la etapa de recolección y documentación de requisitos. Los proyectos fracasan o enfrentan desafíos porque los requisitos no estaban claros o completos desde el inicio.

### Características de una Buena Especificación

| Característica | Descripción |
|----------------|-------------|
| **Claridad y Precisión** | Evita jerga técnica innecesaria; cada requisito debe tener una única interpretación |
| **Completitud y Coherencia** | Todos los requisitos deben estar incluidos y no contradecirse |
| **Validación y Verificabilidad** | Cada requisito podrá ser probado para confirmar que se ha implementado correctamente |
| **Priorización y Negociabilidad** | Identifica cuáles son los requisitos más críticos para el negocio |
| **Involucramiento de Stakeholders** | Los requisitos deben reflejar las necesidades reales del negocio |
| **Trazabilidad y Modularidad** | Deberías ser capaz de rastrear cada requisito a través de todo el ciclo de desarrollo |
| **Documentación** | Utiliza plantillas o estándares como el IEEE SRS |

### Estándares de Requisitos

| Estándar | Descripción |
|----------|-------------|
| **IEEE 830-1998** | Estándar conocido para la especificación de requisitos de software |
| **ISO/IEC/IEEE 29148** | Actualización y reemplazo del IEEE 830; cubre el proceso de desarrollo completo |
| **CMMI** | Ofrece directrices útiles para el proceso de gestión de requisitos |

### Normalización de Requisitos

Es el proceso de organizar y redactar los requisitos de manera uniforme y coherente para asegurar que sean claros, comprensibles y fáciles de seguir.

**Pasos en la normalización:**
1. Revisión cuidadosa de todos los requisitos recopilados
2. Buscar términos, frases o conceptos que se utilicen de manera inconsistente
3. Reescribir los requisitos para que sean consistentes
4. Asegurar que cada requisito sea claro y sin ambigüedades
5. Agrupar los requisitos relacionados y asignar numeración
6. Compartir los requisitos normalizados con los stakeholders
7. Incorporar los requisitos normalizados en el documento apropiado

---

## 3. Verificación y Validación de Requisitos

### Verificación de Requisitos

La verificación se centra en asegurar que el producto está siendo construido de acuerdo con las especificaciones y requisitos definidos. La pregunta clave es: **"¿Estamos construyendo el producto correctamente?"**

**Técnicas de verificación:**
- Revisión por Pares
- Inspecciones Formales
- Análisis Estático
- Modelado y Simulación
- Pruebas Unitarias y de Integración

### Validación de Requisitos

La validación se preocupa de asegurar que el producto construido efectivamente satisface las necesidades y expectativas de los usuarios y stakeholders. La pregunta clave es: **"¿Estamos construyendo el producto correcto?"**

**Técnicas de validación:**
- Pruebas de Aceptación del Usuario (UAT)
- Prototipado
- Entrevistas y Cuestionarios
- Análisis de Caso de Uso
- Revisiones de Campo

### Ejemplo: Sistema de Gestión de Pensiones

| Requisitos Funcionales | Requisitos No Funcionales |
|------------------------|---------------------------|
| Registro de nuevos beneficiarios | Manejar al menos 100.000 usuarios concurrentes |
| Cálculo automático de la pensión | Todos los datos deben estar encriptados |
| Consulta en línea del estado | Accesible a través de múltiples plataformas |

---

## 4. Trazabilidad de Requisitos

### ¿Qué es?

Se refiere a la capacidad para seguir la vida de un requisito a lo largo de todo el ciclo de vida del proyecto, desde su origen hasta su validación y mantenimiento.

### ¿Por qué es importante?

1. Ayuda a manejar cambios de manera controlada
2. Permite asegurar que todos los requisitos se han implementado correctamente
3. Actúa como un "mapa" para entender el estado actual de cada requisito
4. Facilita la auditoría y la revisión post-proyecto

### Matriz de Trazabilidad

Una matriz de trazabilidad incluye:
- **ID del Requisito:** Identificador único para cada requisito
- **Descripción:** Descripción breve pero clara
- **Fuente:** Quién solicitó o identificó el requisito
- **Etapa de Verificación:** Técnicas que se utilizarán para verificar
- **Etapa de Validación:** Cómo se validará que el requisito cumple con las necesidades
- **Elemento de Implementación:** Qué parte del sistema es responsable de implementarlo

---

## Conclusiones

1. Definir claramente la visión del sistema desde el inicio provee un marco de referencia crucial para guiar el desarrollo.
2. La verificación se asegura de que "estás construyendo el sistema correctamente", mientras que la validación garantiza que "estás construyendo el sistema correcto".
3. La Trazabilidad de Requisitos es el GPS del Proyecto: permite seguir la vida de cada requisito a lo largo del ciclo.
4. Una Matriz de Requisitos bien estructurada es una herramienta que organiza la información esencial y sirve como un registro vivo del proyecto.

**Frase clave:**
> "Los requisitos no son solo un documento, son el contrato entre lo que el negocio necesita y lo que la tecnología entregará."

---

## Glosario

| Término | Definición | Ejemplo |
|---------|------------|---------|
| **Visión del Sistema** | Documento que articula objetivos, funcionalidades y criterios de éxito | Documento IEEE 830 |
| **Requisitos Funcionales** | Funciones que el sistema debe realizar | Registro de beneficiarios |
| **Requisitos No Funcionales** | Restricciones de rendimiento, seguridad, etc. | Manejar 100.000 usuarios concurrentes |
| **Verificación** | Asegurar que el producto se construye correctamente | Pruebas unitarias |
| **Validación** | Asegurar que el producto construido satisface necesidades | Pruebas de aceptación |
| **Trazabilidad** | Seguir la vida de un requisito a lo largo del proyecto | Matriz de trazabilidad |

---

## Preguntas de Reflexión

1. **Pregunta aplicada:** Si tuvieras que diseñar un sistema de gestión de citas médicas, ¿qué requisitos funcionales y no funcionales considerarías más importantes?

2. **Pregunta comparativa:** ¿Cuál crees que es la diferencia más importante entre verificación y validación? ¿Por qué ambas son necesarias?

3. **Pregunta crítica:** ¿Alguna vez has experimentado un proyecto donde los requisitos no estaban claros? ¿Qué problemas causó?

---

## Fuentes

| # | Fuente | Tipo | URL |
|---|--------|------|-----|
| 1 | Sommerville, I. (2015). *Software Engineering* | Libro | https://www.pearson.com/en-us/subject-catalog/p/software-engineering/P200000003190 |
| 2 | Wiegers, K. E., & Beatty, J. (2013). *Software Requirements* | Libro | https://www.amazon.com/Software-Requirements-3rd-Karl-Wiegers/dp/0735679665 |
| 3 | IEEE Std 830-1998 | Estándar | https://standards.ieee.org/standard/830-1998.html |
| 4 | ISO/IEC/IEEE 29148 | Estándar | https://www.iso.org/standard/45171.html |
| 5 | Atlassian - Traceability Matrix | Guía | https://www.atlassian.com/software/confluence/templates/traceability-matrix |

---

*Última verificación: 01/09/2026.*