# Arquitectura Empresarial: Zachman y TOGAF (Clase 2)

**Curso:** Arquitectura Empresarial (ISIL, 2026-1)  
**Docente:** Richard Anthony Romero Mori  
**Fecha:** 15/04/2026

## Frameworks y librerías

- El uso de frameworks y librerías es común en el desarrollo de software para acelerar el proceso de desarrollo y aprovechar soluciones ya existentes.
- Provee un lenguaje común y una estructura para el desarrollo de aplicaciones.
- Facilita la colaboración entre desarrolladores al seguir convenciones y patrones establecidos.
- Permiten enfocarse en la lógica de negocio en lugar de reinventar la rueda para tareas repetitivas.

## TOGAF

The Open Group Architecture Framework es un marco de trabajo para el desarrollo de arquitecturas empresariales. Proporciona un enfoque estructurado para diseñar, planificar, implementar y gobernar la arquitectura empresarial. TOGAF se basa en un ciclo de vida que incluye fases como visión, diseño, implementación y gobernanza. Es ampliamente utilizado para alinear la estrategia del negocio con la infraestructura tecnológica.

## Zachman Framework

Desarrollado por John Zachman, este marco destaca la importancia de organizar y clasificar los artefactos de arquitectura empresarial. Se basa en una matriz de seis filas, que representan distintas perspectivas, y seis columnas, que representan distintos aspectos del análisis. Su objetivo es ofrecer una visión completa y estructurada de la arquitectura empresarial.

## TOGAF y Zachman Framework

TOGAF se centra en un proceso estructurado para desarrollar arquitecturas empresariales, mientras que Zachman se enfoca en la clasificación y organización de artefactos. TOGAF proporciona un enfoque paso a paso para construir la arquitectura, y Zachman ofrece una matriz para categorizar y entender sus diferentes dimensiones. Ambos marcos son complementarios y pueden usarse juntos para lograr una visión más completa.

## Resumen de la sesión

La clase se centró en explicar la arquitectura empresarial (AE) como una disciplina estratégica, más que puramente técnica, orientada a alinear la tecnología con los objetivos del negocio.

---

## 1. Fundamentos de la Arquitectura Empresarial

El profesor explicó que la AE sirve para gestionar la **complejidad organizacional**. Su propósito es evitar que la empresa crezca mediante "parches" o soluciones aisladas, y promover en cambio una evolución ordenada como sistema integrado.

- **Alineamiento estratégico:** toda iniciativa tecnológica debe responder a una meta de la organización, como ampliar la base de clientes o mejorar la fidelización.
- **Visión holística:** el arquitecto debe ver el panorama completo y entender cómo interactúan procesos, datos y aplicaciones.
- **Dominios clave:** se presentaron los cuatro pilares que se estudiarán:

    1. **Negocio:** estrategia y procesos.
    2. **Datos:** gestión de la información.
    3. **Aplicaciones:** cómo interactúan los sistemas de software.
    4. **Tecnología:** infraestructura y hardware.

---

## 2. Metodologías y Herramientas

Se introdujo el uso de marcos de trabajo internacionales:

- **TOGAF:** es uno de los estándares más utilizados e incluye el método **ADM** (Architecture Development Method) para guiar la evolución de la empresa desde su estado actual (*as-is*) hacia el estado objetivo (*to-be*).
- **Reutilización:** se enfatizó la importancia de no reinventar la rueda, usando patrones y componentes ya probados para reducir costos y riesgos.

---

## 3. Dinámica de Clase y Perfil de los Alumnos

La sesión incluyó una presentación de los estudiantes, revelando un grupo con experiencia técnica sólida:

- **Perfil:** la mayoría son técnicos titulados en desarrollo, redes o ciberseguridad, y están convalidando estudios para obtener el grado de **Ingeniería de Sistemas**.
- **Sectores:** los alumnos laboran en sectores como banca, educación, entidades públicas, seguros y hotelería.

---

## 4. Casos Prácticos Analizados

Para aterrizar la teoría, se discutieron ejemplos reales apoyados por videos:

- **Smart Cities (ciudades inteligentes):** análisis de cómo un "sistema de sistemas" optimiza recursos como el tráfico, el riego y la seguridad mediante sensores y Big Data.
- **Gestión de riesgos:** el caso de un banco que invierte 5 millones de dólares anuales en un centro de datos de contingencia en Brasil para evitar pérdidas de un millón por hora ante desastres.
- **Ética y Big Data:** el caso de **Cambridge Analytica**, mostrando cómo el perfilado psicológico y los datos de redes sociales pueden influir en decisiones estratégicas masivas.

---

## 5. Próximos Pasos

El profesor habilitó un **grupo de WhatsApp** para una comunicación ágil y recalcó que el curso será mayormente **aplicativo**, usando herramientas de software para diseñar arquitecturas en lugar de centrarse únicamente en la teoría.


---

## Conceptos clave de las imágenes

### Imagen 1: ae-fundamentos-clase-2.png

- **Arquitectura Empresarial (AE):** disciplina para alinear estrategia de negocio, procesos y tecnología.
- **Enfoque integral:** visión de toda la organización y no de soluciones aisladas.
- **Dominios de la AE:** negocio, datos, aplicaciones y tecnología.
- **Objetivo principal:** pasar de un estado actual (*as-is*) a un estado objetivo (*to-be*) con menor riesgo.

### Imagen 2: zachman-togaf-diagrama-clase-2.png

- **TOGAF (ADM):** método por fases para diseñar, implementar y gobernar la arquitectura empresarial.
- **¿Qué es Zachman?:** es un **framework de arquitectura empresarial** creado por John Zachman que organiza la información de una empresa en una matriz de perspectivas (quién mira) y dimensiones (qué se analiza).
- **Zachman Framework:** matriz de clasificación para organizar artefactos de arquitectura por perspectivas y preguntas clave.
- **Complementariedad TOGAF + Zachman:** TOGAF define el proceso y Zachman ordena los entregables.
- **Valor para la organización:** mejora la toma de decisiones, reduce retrabajo y facilita la trazabilidad entre negocio y TI.

### Imagen 3: zachman-cobertura-matriz-6x6.png

- **Comparativa por contexto:** ayuda a seleccionar marcos según el tipo de necesidad organizacional.
- **Beneficio principal:** cobertura total, evitando vacíos de gestión y de metodología.
- **Zachman como taxonomía:** clasifica y organiza todo lo que debe describirse en la empresa para asegurar cobertura completa.
- **Matriz 6x6 (qué se ordena):**
    - **Columnas (preguntas):** Qué, Cómo, Dónde, Quién, Cuándo, Por qué.
    - **Filas (perspectivas):** desde visión ejecutiva o de negocio hasta diseño y construcción.

- **Valor clave:** consistencia entre modelos, documentos y especificaciones, con control de “agujeros” en programas grandes (fusiones, regulación, modernizaciones).

### Aplicación práctica en clase

- Uso de **casos reales** (Smart Cities, contingencia en banca, Cambridge Analytica) para conectar teoría con decisiones estratégicas.
- Importancia de la **ética de datos** y la **gestión de riesgos** dentro de la arquitectura empresarial.

### ¿Cómo se usa Zachman en la práctica?

1. **Define el alcance del problema** (por ejemplo: mejorar el proceso de atención al cliente).
2. **Elige una perspectiva inicial** de la matriz (Planner u Owner para nivel estratégico).
3. **Llena columnas clave** según la necesidad:
    - **What:** datos que intervienen.
    - **How:** procesos de negocio.
    - **Who:** roles y responsables.
    - **Where:** sedes, canales o sistemas.
    - **When:** tiempos, eventos y frecuencias.
    - **Why:** objetivos y reglas del negocio.
4. **Baja al nivel técnico** (Designer/Builder) para traducir eso a aplicaciones, integraciones y tecnología.
5. **Detecta vacíos y duplicidades** (por ejemplo, procesos sin dueño o datos sin gobierno).
6. **Prioriza iniciativas** y crea un plan de implementación por fases.

**Ejemplo corto:**

Si una empresa quiere reducir reclamos, con Zachman puede mapear qué datos faltan en el CRM (**What**), qué parte del flujo genera demoras (**How**), quién aprueba excepciones (**Who**) y por qué la política actual causa fricción (**Why**). Con eso se definen mejoras concretas de proceso y sistema.


