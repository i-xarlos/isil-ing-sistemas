# Introducción al Diseño de Soluciones con IA (Clase 1)

**Curso:** Diseño de Soluciones con IA - 6508.202610 (ISIL, 2026-1)  
**Docente:** Omar David Visitación Romero  
**Fecha:** 08/04/2026

---

## Resumen de la sesión

La primera clase presentó la metodología del curso, el enfoque de **diseño antes que tecnología**, y los conceptos transversales que guiarán las 16 semanas.  
La idea central: la IA vale cuando resuelve un problema real con impacto medible, no cuando se aplica "porque sí".

---

## Introducción y Metodología

El docente es ingeniero electrónico y de telecomunicaciones, especializado en analítica de datos y desarrollo de software.

El curso sigue la metodología de **"aprender haciendo"**:

- Orientada a resolver problemas reales del entorno laboral.
- La tecnología (Python, ML, Colab) es un medio; el objetivo es **diseñar y justificar soluciones**.
- El alumno debe aprender a "vender" sus soluciones con argumentos de impacto.

---

## El Rol del Diseño en Soluciones de IA

El énfasis del curso no está en "usar IA", sino en **saber diseñar** la solución correcta.

### Identificación del Problema

Antes de aplicar cualquier modelo o herramienta:

- **Delimitar el alcance** del problema evita desperdicio de recursos (tiempo, datos, infraestructura).
- Un problema mal definido produce una solución costosa y poco útil.

### Análisis Costo-Beneficio

La IA **no siempre conviene**. El criterio es económico y estratégico:

| Escenario | ¿Vale automatizar? |
|---|---|
| Tarea manual con Opex bajo | No necesariamente |
| Tarea con potencial predictivo | Sí |
| Proceso que requiere escalar rápido | Sí |
| Reemplazo de tarea simple sin ganancia real | No |

La IA genera valor cuando aporta:

- **Predicción:** anticipar eventos antes de que ocurran.
- **Capacidad analítica:** detectar patrones, segmentar, entender comportamientos.
- **Agilidad:** respuestas más rápidas y escalabilidad sin incremento proporcional de costos.

> Si el costo operativo de la tarea manual es menor al costo de la tecnología, la automatización no tiene sentido.

---

## Estructura del Curso (Semanas 1–16)

El curso se divide en cuatro bloques progresivos:

### Bloque 1 — Fundamentos e Identificación (Semanas 1–3)

- Conceptos básicos de **Machine Learning**, **Procesamiento de Lenguaje Natural (NLP)** y **Visión por Computadora**.
- Identificación de casos de uso relevantes.

### Bloque 2 — Preparación de Datos (Semanas 4–7)

- La etapa más crítica del proceso.
- **Limpieza y exploración de datos** con Python.
- Objetivo: evitar sesgos y garantizar que los resultados del modelo sean confiables.

### Bloque 3 — Modelamiento y Entrenamiento (Semanas 9–12)

- Técnicas de **clasificación**, **regresión** y **clusterización**.
- Herramientas: **Google Colab** y **Python**.

### Bloque 4 — Prototipado y Despliegue (Semanas 13–16)

- Creación de un **Demo o Prueba de Concepto (PoC)**.
- Debe incluir una **interfaz básica (front-end)** para que el usuario final pueda interactuar con la solución.

---

## Conceptos Técnicos Transversales

### Cloud Computing

| Modelo | Descripción |
|---|---|
| **On-premise** | Servidores físicos locales; costo fijo e infraestructura propia |
| **Nube (Cloud)** | Servicios de **AWS**, **Azure** o **Google Cloud**; pago por uso |

Ventaja clave de la nube: **flexibilidad y escalabilidad** sin inversión inicial en hardware.

### Ética y Transparencia

- El manejo de **datos sensibles** requiere protocolos claros de confidencialidad.
- Usar herramientas como **ChatGPT** en entornos corporativos conlleva riesgos de filtración de información.
- La ética no es opcional: es parte del diseño de la solución.

### KPIs

- Las métricas técnicas (precisión del modelo, latencia, F1-score) deben traducirse a **indicadores de negocio**.
- Los decisores no evalúan modelos; evalúan impacto: reducción de costos, aumento de ventas, mejora en tiempos.

> **Regla práctica:** si no puedes explicar el valor del modelo en términos de negocio, la solución no está lista para presentarse.

---

## Evaluación y Proyecto Final

### Sistema de evaluación

| Semana | Evaluación | Peso |
|---|---|---|
| 7 | Evaluación parcial 1 | 15% |
| 10 | Evaluación parcial 2 | 15% |
| 13 | Evaluación parcial 3 | 15% |
| 16 | **Proyecto final** | **40%** |

> **Nota:** Las evaluaciones confirmadas en clase suman 85%. El 15% restante no fue detallado en esta sesión. Consultar al docente para confirmar si corresponde a participación, asistencia u otra actividad.

### Proyecto final

- **Trabajo grupal.**
- Identificar un **problema real**, preferiblemente del entorno laboral del equipo.
- Desarrollar un **prototipo funcional** que solucione el problema.
- El entregable incluye:
  - Justificación del problema y análisis costo-beneficio.
  - Datos utilizados y proceso de limpieza.
  - Modelo entrenado.
  - **Demo o PoC con interfaz** para interacción del usuario.
  - Presentación orientada a impacto de negocio (KPIs).

---

## Implicancias Prácticas

Lo que el curso espera del alumno y del proyecto:

1. **Definir el problema antes de elegir la tecnología.** El alcance mal definido es el error más común y costoso.
2. **Tener datos utilizables o una estrategia realista para obtenerlos.** Sin datos limpios, el modelo no sirve.
3. **Elegir un alcance que permita un demo funcional en la semana 16.** Mejor un prototipo acotado y funcionando que una idea ambiciosa sin entregable.
4. **Definir KPIs de negocio desde el inicio.** El proyecto se evalúa por impacto, no solo por precisión técnica.
5. **Aprender a "vender" la solución.** El curso es técnico, pero también requiere comunicación efectiva hacia decisores no técnicos.

> El criterio de éxito no es "usar IA": es demostrar que la solución resuelve el problema, con datos, con modelo y con impacto medible.

---

## Conceptos relacionados en otros cursos

- **Arquitectura Empresarial — Clase 1:** trabaja el concepto de **alineamiento estratégico**, donde cada decisión tecnológica debe justificar su aporte al negocio. En diseño de IA, esto se traduce en definir KPIs de negocio desde el inicio. [Ver notas](../../arq-empresarial/clase-1/arquitectura-empresarial-fundamentos-clase-1.md)
