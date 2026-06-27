# Solución Actividad 12: Alerta Académica ML (Actividad 12)

**Curso:** Diseño de Soluciones con IA (ISIL, 2026-1)  
**Docente:** Omar David Visitacion Romero  
**Fecha:** 24/06/2026

---

## 1. Comprensión del Problema

### Problema principal de la institución

El Instituto Superior TecnoFuturo presenta dificultades para identificar tempranamente a estudiantes en riesgo académico. Durante las primeras semanas del ciclo, algunos estudiantes reducen su asistencia, acumulan tareas no entregadas, obtienen bajos promedios parciales, llegan tarde con frecuencia o dejan de participar en clase. El área de tutoría revisa esta información de forma manual usando hojas de cálculo y reportes de docentes, lo que genera retrasos en la detección. Cuando se identifica al estudiante, ya perdió varias sesiones o acumuló bajas calificaciones.

### Desarrollo de la tabla de comprensión

| Elemento | Desarrollo |
|----------|------------|
| **Problema principal de la institución** | Detección tardía de estudiantes en riesgo académico, cuando ya es difícil revertir la situación |
| **Área que usará la aplicación** | Tutoría y seguimiento académico |
| **Persona que ingresará los datos** | Docentes y tutores (captura de asistencia, calificaciones, participación) |
| **Persona que revisará la alerta generada** | Coordinador de tutoría / tutor asignado |
| **Acción que ayudará a priorizar la IA** | Clasificar automáticamente los casos por nivel de severidad para asignar recursos de seguimiento |
| **Riesgo de usar mal el resultado** | Estigmatización del estudiante, asignación incorrecta de recursos, falsa sensación de seguridad si el modelo falla |
| **Beneficio esperado** | Intervención temprana, reducción de deserción, mejor asignación de tutorías |

### Párrafo del problema

El Instituto Superior TecnoFuturo necesita una aplicación web llamada **Alerta Académica ML** que reciba datos académicos de estudiantes (asistencia, promedio, tareas, participación, tardanzas) y use un modelo de Machine Learning para clasificar el caso en un nivel de alerta: **Sin alerta**, **Alerta preventiva** o **Alerta crítica**. La solución debe mostrar los factores que más influyeron en la clasificación y apoyar la priorización de tutorías, sin reemplazar la decisión humana del docente o tutor.

---

## 2. Tarea Exacta de la IA

### Ficha funcional de la IA

| Elemento | Desarrollo |
|----------|------------|
| **Entrada** | Datos académicos del estudiante (asistencia, promedio, tareas, participación, tardanzas, semana) |
| **Procesamiento** | Modelo de clasificación supervisada que compara el caso con patrones aprendidos |
| **Salida** | Nivel de alerta categorizado + factores de influencia |
| **Uso** | Priorización de casos para tutoría |
| **Límite** | No sanciona, no aprueba/reprueba, no retira, no reemplaza al tutor |

### Niveles de alerta

| Nivel | Descripción |
|-------|-------------|
| **Sin alerta** | El estudiante muestra un comportamiento académico dentro de parámetros normales. Asistencia ≥ 75%, promedio ≥ 14, tareas entregadas al día, participación aceptable. No se requiere intervención inmediata. |
| **Alerta preventiva** | El estudiante presenta señales tempranas de dificultad. Asistencia entre 60-74%, promedio entre 10-13, 1-2 tareas pendientes o participación baja. Se recomienda tutoría preventiva y seguimiento cercano. |
| **Alerta crítica** | El estudiante está en situación de alto riesgo. Asistencia < 60%, promedio < 10, 3+ tareas pendientes, participación muy baja o ausencias frecuentes. Requiere intervención urgente del tutor y possible coordinación con apoyo psicológico o académico. |

---

## 3. Variables de Entrada del Modelo

### Tabla de variables

| Dato de entrada | ¿Qué representa? | Tipo de dato | Rango o ejemplo | ¿Por qué puede ayudar al modelo? |
|-----------------|-------------------|--------------|-----------------|-----------------------------------|
| Código del estudiante | Identificador único del estudiante | Texto | E2026-018 | Permite agrupar datos por estudiante y rastrear historial |
| Curso | Materia donde se analiza el riesgo | Texto | Matemática I | Diferentes cursos tienen distintas dificultades y patrones de aprobación |
| Asistencia acumulada | Porcentaje de clases asistidas | Numérico | 0 a 100% | Baja asistencia es el indicador más fuerte de deserción |
| Promedio parcial | Nota obtenida hasta el momento | Numérico | 0 a 20 | Refleja el rendimiento académico actual |
| Tareas no entregadas | Cantidad de actividades pendientes | Numérico | 0, 1, 2, 3... | Acumulación de tareas indica desorganización o desinterés |
| Participación en clase | Nivel de intervención del estudiante | Categoría | baja, media, alta | La reducción de participación puede ser primer signo de abandono |
| Tardanzas acumuladas | Veces que llegó tarde | Numérico | 0, 1, 2, 3... | Tardanzas frecuentes afectan el aprendizaje y compromiso |
| Semana académica | Semana del ciclo en que se analiza | Numérico | 1 a 16 | Permite contextualizar: en semana 2 es diferente que en semana 14 |

### Análisis de utilidad de variables

| Dato | ¿Sirve para identificar? | ¿Sirve para predecir alerta? |
|------|---------------------------|-------------------------------|
| Código del estudiante | Sí | No |
| Curso | No | Sí (contexto) |
| Asistencia acumulada | No | Sí (fuerte predictor) |
| Promedio parcial | No | Sí (fuerte predictor) |
| Tareas no entregadas | No | Sí ( predictor moderado) |
| Participación en clase | No | Sí (predictor moderado) |
| Tardanzas acumuladas | No | Sí (predictor débil-fuerte) |
| Semana académica | No | Sí (contexto temporal) |

---

## 4. Variable Objetivo

| Elemento | Desarrollo |
|----------|------------|
| **Variable objetivo** | Nivel de alerta académica |
| **Categorías posibles** | Sin alerta, Alerta preventiva, Alerta crítica |
| **Uso del resultado** | Priorización de tutorías y seguimiento académico |
| **Persona que revisará el resultado** | Coordinador de tutoría / tutor asignado |
| **Acción posterior al resultado** | Asignar sesión de tutoría, contactar al estudiante, escalar a apoyo psicológico si es necesario |

### Tipo de resultado

- [x] Una categoría
- [ ] Un número exacto
- [ ] Una imagen
- [ ] Un texto libre
- [ ] Un grupo de estudiantes sin nombre de categoría

**Justificación:** La aplicación debe generar **una categoría** porque el objetivo es clasificar el estado del estudiante en niveles predefinidos (Sin alerta, Alerta preventiva, Alerta crítica). Esto permite a los tutores tomar decisiones rápidas sin interpretar valores numéricos. Una categoría es clara, accionable y fácil de comunicar.

---

## 5. Selección de Técnica de Machine Learning

### Tabla comparativa de técnicas

| Técnica | ¿Qué permite hacer? | ¿Aplica al caso? | Justificación |
|---------|----------------------|-------------------|---------------|
| **Clasificación** | Asignar un caso a una categoría | **Sí** | El problema requiere asignar cada estudiante a uno de 3 niveles de alerta. Es el caso perfecto para clasificación supervisada. |
| Regresión | Estimar un valor numérico | No | No se necesita predecir un número, sino categorizar el riesgo. |
| Agrupamiento | Formar grupos sin etiquetas previas | No | Ya se tienen categorías definidas (Sin alerta, preventiva, crítica). No es un problema de descubrimiento. |
| Detección de anomalías | Detectar casos fuera de lo normal | Parcial | Podría complementar, pero el problema tiene categorías claras predefinidas. |
| Recomendación | Sugerir recursos o acciones | No | El objetivo es clasificar riesgo, no recomendar contenido. |

### Selección final

**Técnica seleccionada:** Clasificación supervisada

**Justificación:** El problema tiene una variable objetivo categórica con 3 clases predefinidas. Se necesita entrenar el modelo con datos históricos etiquetados (estudiantes pasados con sus niveles de alerta conocidos) para que aprenda patrones y clasifique nuevos casos. Al ser clasificación, se pueden usar árboles de decisión o Random Forest, que además permiten explicar qué variables influyeron más en la decisión (interpretabilidad).

---

## 6. Decisión Técnica: Modelo en Frontend o Backend

### Matriz de decisión

| Criterio | Frontend | Backend | Justificación |
|----------|----------|---------|---------------|
| **Privacidad** | 4 | 5 | Backend protege mejor los datos académicos sensibles del estudiante |
| **Seguridad institucional** | 2 | 5 | El backend permite control de accesos, autenticación y roles |
| **Velocidad de respuesta** | 5 | 3 | Frontend es más rápido pero Backend es aceptable para este caso |
| **Facilidad de mantenimiento** | 2 | 5 | Backend centraliza actualizaciones del modelo |
| **Control de versiones del modelo** | 1 | 5 | Solo backend permite versionado y rollback del modelo |
| **Registro de historial** | 1 | 5 | Backend almacena historial de clasificaciones en BD |
| **Auditoría de consultas** | 1 | 5 | Backend registra quién consultó, cuándo y qué resultado obtuvo |
| **Costo operativo** | 5 | 3 | Frontend es gratis para la institución pero Backend tiene costos de servidor |
| **Facilidad de implementación inicial** | 4 | 3 | Frontend es más rápido de prototipar |
| **Escalabilidad** | 2 | 5 | Backend escala mejor con muchos estudiantes |
| **Total** | **27** | **44** | **Backend gana por 17 puntos** |

### Alternativa seleccionada

- [ ] Modelo ML en frontend
- [x] **Modelo ML en backend**
- [ ] Modelo híbrido

### Justificación

**La alternativa seleccionada es: Modelo ML en backend**

Se selecciona esta alternativa porque:

1. **Privacidad de datos:** Los datos académicos son información sensible. El backend mantiene el modelo y los datos en el servidor, evitando que se expongan en el navegador del usuario.

2. **Control institucional:** Permite implementar roles (docente, tutor, coordinador), autenticación y auditoría de consultas, que son requisitos de gobernanza en entornos educativos.

3. **Mantenimiento del modelo:** Cuando se necesite reentrenar o actualizar el modelo con nuevos datos, se hace en un solo lugar (el servidor) sin depender de actualizaciones en clientes.

4. **Historial y trazabilidad:** El backend almacena cada clasificación realizada, permitiendo generar reportes, auditar decisiones y mejorar el modelo con el tiempo.

5. **Seguridad:** La lógica del modelo no queda expuesta en el navegador, reduciendo riesgos de reverse engineering o manipulación.

### Stack tecnológico propuesto

| Capa | Tecnología | Función |
|------|------------|---------|
| **Frontend** | HTML, CSS, Bootstrap | Interfaz responsiva para ingreso de datos y visualización de resultados |
| **Backend** | Python Flask / FastAPI | API REST que recibe datos y retorna clasificación |
| **Modelo ML** | scikit-learn (Random Forest o Árbol de Decisión) | Clasificación supervisada con interpretabilidad |
| **Base de datos** | SQLite / PostgreSQL | Almacenamiento de historial de clasificaciones y datos de estudiantes |
| **Comunicación** | API REST | Frontend envía datos → Backend procesa → Retorna resultado JSON |

---

## 7. Flujo de Datos

```
┌─────────────────────────────────────────────────────────────────┐
│                    FLUJO DE DATOS - Alerta Académica ML         │
├─────────────────────────────────────────────────────────────────┤
│                                                                 │
│  1. DOCENTE/TUTOR ingresa datos del estudiante                  │
│     (asistencia, promedio, tareas, participación, tardanzas)    │
│                              ↓                                  │
│  2. FRONTEND envía datos vía API REST                           │
│     POST /api/clasificar                                        │
│                              ↓                                  │
│  3. BACKEND recibe y valida datos                               │
│     - Verifica completitud                                      │
│     - Convierte categorías a valores numéricos                  │
│                              ↓                                  │
│  4. MODELO ML procesa                                           │
│     - Random Forest / Árbol de Decisión                         │
│     - Calcula nivel de alerta                                   │
│     - Identifica variables de mayor influencia                  │
│                              ↓                                  │
│  5. BACKEND retorna respuesta JSON                              │
│     {                                                           │
│       "alerta": "preventiva",                                   │
│       "factores": ["asistencia", "tareas"],                     │
│       "confianza": 0.87                                         │
│     }                                                           │
│                              ↓                                  │
│  6. FRONTEND muestra resultado                                  │
│     - Nivel de alerta con color (verde/amarillo/rojo)           │
│     - Factores que influyeron                                   │
│     - Recomendación de acción                                   │
│                              ↓                                  │
│  7. BACKEND registra en BD                                      │
│     - Historial de clasificación                                │
│     - Auditoría de consulta                                     │
│                                                                 │
└─────────────────────────────────────────────────────────────────┘
```

---

## 8. Pantallas Principales

### Pantalla 1: Formulario de Ingreso

| Elemento | Descripción |
|----------|-------------|
| **Título** | "Clasificar Estudiante" |
| **Campos** | Código del estudiante, Curso, Asistencia (%), Promedio parcial, Tareas no entregadas, Participación (select), Tardanzas acumuladas, Semana académica |
| **Botón** | "Analizar Alerta" |
| **Diseño** | Formulario limpio con Bootstrap, validación en cliente |

### Pantalla 2: Resultado de Clasificación

| Elemento | Descripción |
|----------|-------------|
| **Indicador visual** | Semáforo de color: Verde (Sin alerta), Amarillo (Preventiva), Rojo (Crítica) |
| **Nivel de alerta** | Texto grande con la categoría asignada |
| **Factores de influencia** | Lista de las variables que más afectaron la decisión (ej: "Asistencia: 52%", "Tareas pendientes: 4") |
| **Nivel de confianza** | Porcentaje de confianza del modelo (ej: "87% de confianza") |
| **Recomendación** | Acción sugerida según el nivel (tutoría preventiva, intervención urgente, seguimiento normal) |

### Pantalla 3: Historial de Clasificaciones

| Elemento | Descripción |
|----------|-------------|
| **Tabla** | Lista de estudiantes clasificados con fecha, nivel de alerta y curso |
| **Filtros** | Por nivel de alerta, curso, semana |
| **Exportar** | Botón para descargar reporte en CSV |

---

## 9. Seguridad y Privacidad

| Aspecto | Implementación |
|---------|----------------|
| **Autenticación** | Login con roles (Docente, Tutor, Coordinador) |
| **Autorización** | Solo tutores ven alertas, solo coordinadores ven historial completo |
| **Cifrado** | HTTPS para todas las comunicaciones |
| **Retención** | Datos se conservan por ciclo académico, luego se archivan |
| **Auditoría** | Registro de cada consulta: quién, cuándo, qué estudiante, qué resultado |
| **Protección de datos** | Código del estudiante se almacena, no datos personales sensibles adicionales |

---

## 10. Métricas de Validación

### Métricas del modelo

| Métrica | Qué mide | Objetivo |
|---------|----------|----------|
| **Exactitud (Accuracy)** | Porcentaje de clasificaciones correctas | ≥ 85% |
| **Precisión por clase** | Qué tan precisas son las predicciones de cada nivel | ≥ 80% en cada categoría |
| **Recall** | Qué porcentaje de casos reales detecta | ≥ 90% para Alerta Crítica (no podemos fallar con casos críticos) |
| **F1-Score** | Balance entre precisión y recall | ≥ 0.82 |
| **Validación cruzada** | Consistencia del modelo con diferentes subsets | Score estable en 5-fold CV |

### Métricas de la aplicación

| Métrica | Qué mide | Objetivo |
|---------|----------|----------|
| **Tiempo de respuesta** | Latencia del endpoint /api/clasificar | < 500ms |
| **Tasa de disponibilidad** | Porcentaje de tiempo operativo | ≥ 99% |
| **Satisfacción del usuario** | Encuesta a tutores post-uso | ≥ 4/5 |
| **Impacto real** | Reducción de deserción vs año anterior | Medir al cierre del ciclo |

---

## 11. Conexión con Clases del Curso

Esta solución integra conceptos de múltiples sesiones del curso:

| Concepto | Clase | Aplicación en la actividad |
|----------|-------|----------------------------|
| Diseñar antes que tecnologizar | Clase 1 | Se definió el problema antes de elegir tecnología |
| Tipos de aprendizaje supervisado | Clase 2, 10 | Se usó clasificación supervisada con datos etiquetados |
| Árboles de decisión | Clase 12 | Modelo elegido por su interpretabilidad |
| Métricas de evaluación | Clase 11 | Se definieron accuracy, precision, recall y F1 |
| Integración via API | Clase 12 | Arquitectura frontend-backend con REST API |
| Seguridad y gobernanza | Clase 12 | Políticas de retención, auditoría, roles |
| MVP y prototipado | Clase 12 | Se diseñaron pantallas mínimas funcionales |

---

## Fuentes

Las afirmaciones y datos provienen de estas fuentes.  
Tipo: **oficial** = autor/creador; **tercero** = prensa o fuente secundaria.

### Contenido del curso

| # | Fuente | Tipo | URL |
|---|--------|------|-----|
| 1 | Visitacion Romero, O. D. (2026). *Diseño de Soluciones con IA — Clase 12: Técnicas de Machine Learning* | Oficial | ISIL, 2026-1 |
| 2 | Visitacion Romero, O. D. (2026). *Diseño de Soluciones con IA — Clase 10: Elección del Modelo Correcto* | Oficial | ISIL, 2026-1 |
| 3 | Visitacion Romero, O. D. (2026). *Diseño de Soluciones con IA — Clase 11: Métricas de Evaluación* | Oficial | ISIL, 2026-1 |

### Conceptos de ML

| # | Fuente | Tipo | URL |
|---|--------|------|-----|
| 4 | Scikit-learn. *Classification* | Oficial | https://scikit-learn.org/stable/supervised_learning.html#supervised-learning |
| 5 | Scikit-learn. *Decision Trees* | Oficial | https://scikit-learn.org/stable/modules/tree.html |

---

*Última verificación: 24/06/2026.*
