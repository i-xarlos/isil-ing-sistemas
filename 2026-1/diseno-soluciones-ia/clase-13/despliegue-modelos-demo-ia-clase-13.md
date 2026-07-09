# Despliegue de Modelos y Demo Interactiva (Clase 13)

**Curso:** Diseño de Soluciones con IA (ISIL, 2026-1)  
**Docente:** Omar David Visitacion Romero  
**Fecha:** 02/07/2026

---

## Introducción

**Gancho humano:** Has entrenado un modelo de IA que funciona perfecto en tu laptop. Pero cuando intentas usarlo con usuarios reales... falla. ¿Por qué? Porque hay una gran diferencia entre un modelo en un notebook y un modelo en producción.

**Pregunta guía:** ¿Cómo llevamos un modelo de IA de un experimento a una solución funcional que los usuarios puedan usar?

**Objetivos de aprendizaje:**
- Comprender los conceptos de despliegue de modelos ML/IA
- Conocer las estrategias de release: Canary vs. Blue-Green
- Explorar herramientas de bajo código (Streamlit, Colab, Gradio)
- Diseñar una demo interactiva que demuestre el valor del modelo

---

## 1. Conceptos de Despliegue de Modelos

### ¿Qué significa "desplegar" un modelo?

**Analogía simple:** Entrenar un modelo es como cocinar un plato en tu cocina. Desplegarlo es llevar ese plajo a un restaurante donde cientos de personas lo sirvan cada día, manteniendo la calidad y la velocidad.

Desplegar es pasar de un modelo entrenado a uno que genera predicciones reales en un entorno utilizable.

### Validación previa al despliegue

Antes de desplegar, el modelo debe superar control de calidad de datos, entrenamiento y validación por métricas de rendimiento. Si el negocio exige un **95% de precisión**, una vez alcanzada esa métrica, el modelo está listo para producción.

### Entornos de ejecución

Una línea de escala para ejecutar IA según la complejidad del proyecto:

| Entorno | Descripción | Cuándo usarlo |
|---------|-------------|---------------|
| **Local (PC/Laptops)** | Notebooks, scripts, testing rápido | Prototipos, scripts iniciales, experimentación |
| **On-premise** | Servidores propios, control total | Alto cumplimiento normativo, datos sensibles |
| **Cloud (IaaS/PaaS)** | Elasticidad, servicios gestionados | Despliegue rápido y escalable, dinamismo |
| **Serverless** | Endpoints ligeros, carga variable | APIs con tráfico intermitente |
| **Edge/móvil** | Inferencia en el dispositivo del usuario | Privacidad, baja latencia, offline |

**Ejemplo — Enfoque Cloud vs Edge:**

- **Nube:** Una cámara de seguridad toma una foto para reconocimiento facial, la envía a la nube, la nube procesa y dictamina si la persona está autorizada, y regresa la orden de abrir la puerta. El viaje de datos por internet genera tiempos de espera.
- **Edge:** El modelo de IA reside en la propia cámara o smartphone (como la identificación biométrica actual). El procesamiento es local e instantáneo, eliminando la dependencia de la red.

> **El futuro de la IA apunta hacia terminales autónomos con inferencia en el borde.**

### Patrones de despliegue

| Patrón | Descripción | Ejemplo |
|--------|-------------|---------|
| **API de inferencia** | App web/móvil consume predicciones vía red | ChatGPT API |
| **Microservicio en contenedores** | Modelo como servicio escalable (Docker/K8s) | Amazon SageMaker |
| **Batch scoring** | Predicciones por lotes para reportes | Segmentación semanal de clientes |
| **Streaming inference** | Procesamiento en tiempo real | Detección de fraude en transacciones |

### Empaquetado del modelo

En producción, el modelo se "empaqueta" con:

- Dependencias (librerías)
- Runtime (Python/Java/etc.)
- Configuración y versionado
- Transformaciones (feature engineering)

**Resultado típico:** Contenedor Docker o "model bundle"

### Containers vs. Serverless vs. Edge

| Aspecto | Contenedores | Serverless | Edge |
|---------|-------------|------------|------|
| **Control** | Alto | Medio | Bajo |
| **Escalado** | Manual/automático | Automático | Limitado |
| **Costo fijo** | Sí | No (pay per use) | No |
| **Ideal para** | Modelos pesados | Tráfico variable | Privacidad, offline |

---

## 2. Estrategias de Entrenamiento, Inferencia y Release

### Procesos por lotes (Batch Processing)

Se utiliza para entrenamientos o predicciones no continuas dentro de un entorno controlado (usando a menudo un ambiente *Staging* o "espejo" que replica datos de producción sin alterarlos).

**Ejemplo:** En una entidad financiera, se acumulan los datos de nuevos solicitantes y transacciones durante la semana. Cada fin de semana (de forma lotizada), se corre el entrenamiento del modelo con la data generada en esos 7 días para optimizarlo de cara a la semana siguiente.

### Estrategias de lanzamiento

#### Canary Release

Se dirige una pequeña fracción del tráfico al nuevo modelo para evaluar su desempeño con métricas reales. Según los resultados, se promueve o se hace rollback.

```
┌─────────────────────────────────────────────┐
│   CANARY RELEASE                            │
├─────────────────────────────────────────────┤
│                                             │
│  100% tráfico                               │
│     ├── 95% → Modelo actual (v1)            │
│     └── 5%  → Modelo nuevo (v2) ← Canary   │
│                                             │
│  Si v2 funciona bien → gradualmente sube    │
│  Si v2 falla → rollback instantáneo         │
└─────────────────────────────────────────────┘
```

### Blue-Green

Existen dos entornos completos en paralelo. Cuando el nuevo modelo está listo, todo el tráfico se cambia al nuevo entorno.

```
┌─────────────────────────────────────────────┐
│   BLUE-GREEN DEPLOYMENT                     │
├─────────────────────────────────────────────┤
│                                             │
│  ANTES:  Users → Blue (v1) ← Activo        │
│          Users → Green (v2) ← Standby       │
│                                             │
│  DESPUÉS: Users → Green (v2) ← Activo      │
│           Users → Blue (v1) ← Standby       │
│                                             │
│  Si falla → Swap instantáneo a Blue         │
└─────────────────────────────────────────────┘
```

**Clave:** Evitar que un modelo defectuoso impacte al 100% de usuarios.

---

## 3. Principios del Funcionamiento en Producción

### De PoC a Producción

Muchos proyectos de ML se quedan en prueba de concepto (PoC) y no llegan a producción. Las razones más frecuentes:

- Integración compleja
- Operaciones manuales
- Falta de monitoreo
- Baja gobernanza

**MLOps** surge para cerrar esta brecha de manera análoga a DevOps en el software tradicional. Su objetivo es cerrar las brechas de integración y eliminar los procedimientos manuales repetitivos, permitiendo que el ciclo de vida del modelo (desarrollo, empaquetado mediante contenedores como Docker, despliegue y monitoreo) sea automatizado, escalable y repetible utilizando **Infraestructura como Código (IaC)**.

### Deuda técnica oculta en ML

En la práctica de Machine Learning, el código del modelo es solo una pequeña fracción de todo el sistema. Existen brechas de tiempo y gestión en:

- **Recolección de datos** — obtención y preparación
- **Feature engineering** — gestión de características
- **Configuración** — parámetros y entornos
- **Testing** — pruebas automatizadas
- **Monitoreo** — seguimiento continuo

### Pipelines End-to-End (E2E)

**Solución:** Implementar pipelines E2E desde el inicio del proyecto para validar y probar de extremo a extremo todas las fases de manera continua y evitar errores sorpresa al integrar.

### Versionado triple: Datos + Código + Modelo

En producción pueden cambiar:
- **Datos** — nuevos patrones
- **Código** — corrección de errores
- **Modelos** — reentrenamiento

Sin versionado triple, resolver incidentes se vuelve una "adivinanza".

### CI/CD/CT

| Componente | Qué hace | En ML |
|------------|----------|-------|
| **CI** (Continuous Integration) | Integra pruebas automáticas | Valida código y datos |
| **CD** (Continuous Deployment) | Despliega automáticamente | Promueve modelos a producción |
| **CT** (Continuous Training) | Reentrena con nueva data | Actualiza el modelo cuando llegan datos relevantes |

### Monitoreo y continuidad: la degradación del modelo

No basta con que el modelo funcione el primer día. La realidad cambia y el modelo puede empezar a fallar (degradación del modelo). Se requiere monitoreo constante en una línea de tiempo.

**Ejemplo práctico:** El 1 de julio se aprueba un crédito a "Juan Pérez" porque el modelo predijo que pagaría puntualmente. Si para el 1 de agosto el cliente no paga, la realidad contradice al modelo. Ese error se debe capturar para volver a entrenar el modelo con los nuevos datos reales.

### Gobernanza y reentrenamiento

Cuando se detectan errores en producción, se debe aplicar reconfiguración o reentrenamiento. Técnicas como el **aprendizaje por refuerzo** permiten "castigar" errores y "premiar" aciertos para corregir el modelo de forma continua.

### Drift y salud del modelo

| Métrica | Qué mide | Acción si falla |
|---------|----------|-----------------|
| **Latencia** | Tiempo de respuesta | Optimizar infraestructura |
| **Tasa de error** | Errores de predicción | Revisar calidad de datos |
| **Drift de inputs** | Cambios en la distribución de datos | Reentrenar modelo |
| **Performance** | Métricas de calidad (si hay ground truth) | Evaluar reemplazo |
| **Calidad de features** | Integridad de variables de entrada | Corregir pipeline |

---

## 4. Herramientas de Bajo Código

### ¿Por qué usar bajo código?

**Analogía low-code:** Es como usar un kit de ensamblaje en lugar de construir desde cero. No necesitas ser experto en infraestructura para crear una demo funcional.

### Herramientas principales

| Herramienta | Ideal para | Ventaja clave |
|-------------|-----------|---------------|
| **Google Colab** | Notebooks reproducibles, GPU puntual | Gratis, compartible, GPU incluida |
| **Streamlit** | Dashboards de inferencia interactivos | Convierte scripts en apps web en minutos |
| **Gradio** | Demos rápidas de IA | Interfaces simples sin frontend |
| **Lobe/AutoML** | Entrenamiento no-code | Velocidad y accesibilidad |
| **ML-Rapid** | Prototipos con ML + Raspberry Pi | Enfoque educativo |

### Streamlit: Patrón de 3 pestañas

```
┌─────────────────────────────────────────────┐
│   ESTRUCTURA STREAMLIT                      │
├─────────────────────────────────────────────┤
│                                             │
│  Pestaña 1: DATOS                           │
│  └── Visualización y exploración del        │
│      dataset                                │
│                                             │
│  Pestaña 2: PREDICCIÓN                      │
│  └── Interfaz interactiva con sliders,      │
│      inputs para obtener resultados         │
│                                             │
│  Pestaña 3: MÉTRICAS                        │
│  └── Evaluación de rendimiento y precisión  │
│      del modelo                             │
└─────────────────────────────────────────────┘
```

### Riesgos del bajo código

| Riesgo | Problema |
|--------|----------|
| **Caja negra** | No se entiende qué hace por dentro |
| **Escalabilidad** | Funciona para demos, no para producción |
| **Dependencia** | Vendor lock-in con la plataforma |

---

## 5. Diseño de una Demo Interactiva

### ¿Qué es una demo de IA?

Una demo interactiva no es un pitch. Es evidencia funcional del valor del modelo. El público debe poder interactuar y ver cómo se comporta en la práctica.

### Elementos clave

| Elemento | Descripción |
|----------|-------------|
| **Problema** | Qué resuelve el modelo |
| **Datos de entrada** | Qué necesita para funcionar |
| **Predicción/salida** | Qué produce |
| **Impacto** | Valor o beneficio concreto |
| **Límites/errores** | Dónde falla y por qué |
| **Próximos pasos** | Qué faltaría para producción |

### Estructura recomendada

```
┌─────────────────────────────────────────────┐
│   ESTRUCTURA DE DEMO                        │
├─────────────────────────────────────────────┤
│  1. Contexto y problema (1 diapositiva)     │
│  2. Objetivo del modelo                     │
│  3. Datos: qué entra, de dónde proviene     │
│  4. Arquitectura: pipeline, modelo, servicio│
│  5. Demo en vivo                            │
│  6. Evaluación: métricas y ejemplos de error│
│  7. Cierre: riesgos, ética, plan producción │
└─────────────────────────────────────────────┘
```

### Guion de demo

- **Usa enfoque "antes/después"**: Antes = proceso manual, lento. Después = asistente de IA que predice y explica
- **Evita:** 10 diapositivas de teoría antes de mostrar el modelo
- **Métrica ancla:** Tiempo ahorrado, errores reducidos, mayor consistencia

### Checklist final

- [ ] **Funcional:** la demo funciona sin "magia" oculta
- [ ] **Interactiva:** al menos dos inputs distintos y casos límite
- [ ] **Transparente:** indica versión del modelo, datos, supuestos y limitaciones
- [ ] **Métricas:** al menos una métrica técnica y una de experiencia de usuario
- [ ] **Segura:** no expone datos sensibles
- [ ] **Puente a producción:** identifica qué faltaría para MLOps real

---

## 6. Errores Comunes a Evitar

| Error | Ejemplo | Consecuencia |
|-------|---------|--------------|
| Saltarse el monitoreo | Modelo funciona bien al inicio pero degradación silenciosa | Pérdida de calidad sin detectar |
| Sin versionado | No se sabe qué versión del modelo está en producción | Imposible hacer rollback |
| Demo sin transparencia | "La IA predice perfecto" sin mostrar métricas | Falta de confianza |
| Ignorar el drift | Los datos cambian pero el modelo no se reentrena | Predicciones cada vez peores |
| No implementar pipelines E2E | Integración manual de datos, modelo y servicio | Errores sorpresa al integrar |
| Dejar PoCs sin producción | Prototipos guardados que nunca se usan | Inversión sin retorno |

---

## Conclusiones

1. El despliegue transforma un modelo académico en una solución funcional real
2. La validación previa (métricas de rendimiento) es prerequisito antes de pasar a producción
3. El monitoreo continuo detecta la degradación del modelo cuando la realidad cambia
4. Los pipelines E2E evitan la deuda técnica oculta y los errores sorpresa al integrar
5. MLOps automatiza el ciclo de vida completo: desarrollo, empaquetado (Docker), despliegue y monitoreo con IaC
6. La demo es clave para validar y comunicar el valor del proyecto
7. Herramientas low-code facilitan la experimentación rápida sin infraestructura compleja
8. El futuro de la IA apunta a terminales autónomos con inferencia en el borde (Edge)

**Frase clave:**
> "Un modelo sin despliegue es un experimento. Un modelo desplegado es un producto."

---

## Glosario

| Término | Definición | Ejemplo |
|---------|------------|---------|
| **PoC (Prueba de Concepto)** | Prototipo funcional que valida si un modelo puede resolver el problema real | Modelo de scoring crediticio en notebooks con datos de prueba |
| **Despliegue** | Proceso de llevar un modelo de entrenamiento a producción | API de predicciones en la nube |
| **MLOps** | Prácticas para operar modelos ML en producción (análogo a DevOps) | CI/CD para modelos, monitoreo automatizado |
| **Canary Release** | Estrategia de despliegue gradual con fracción de tráfico | 5% tráfico al modelo nuevo |
| **Blue-Green** | Dos entornos en paralelo, swap instantáneo | Cambio de v1 a v2 sin downtime |
| **Batch Processing** | Entrenamiento o predicción por lotes en intervalos programados | Reentrenamiento semanal de fin de semana en banca |
| **Streaming inference** | Procesamiento de predicciones en tiempo real sobre flujos de datos | Detección de fraude en transacciones |
| **Drift** | Cambio en la distribución de datos de entrada que degrada el modelo | Clientes compran diferente post-pandemia |
| **Degradación del modelo** | Pérdida de rendimiento cuando la realidad cambia y el modelo no se actualiza | Modelo predice pagos que no ocurren |
| **Deuda técnica oculta** | Brechas invisibles entre código del modelo y el sistema completo | Falta de monitoreo, feature engineering manual |
| **Pipelines E2E** | Flujo automatizado de extremo a extremo del ciclo ML | Validación continua de datos → modelo → producción |
| **IaC (Infraestructura como Código)** | Gestión de infraestructura mediante scripts versionados | Terraform, CloudFormation |
| **Feature engineering** | Creación y gestión de variables de entrada para el modelo | Transformar fechas en categorías temporales |
| **Aprendizaje por refuerzo** | Técnica que castiga errores y premia aciertos para corregir el modelo | Reentrenamiento con feedback de producción |
| **Docker** | Plataforma de empaquetado en contenedores para despliegue portátil | Modelo ML empaquetado con todas sus dependencias |
| **Kubernetes (K8s)** | Orquestador de contenedores para escalar servicios | Escalar automáticamente un modelo con alta demanda |
| **Rollback** | Revertir el despliegue a una versión anterior ante un fallo | Volver al modelo v1 tras detectar errores en v2 |
| **Staging** | Entorno de pruebas que replica producción sin afectar usuarios | Probar el modelo con datos reales antes de liberarlo |
| **Ground truth** | Respuesta correcta conocida para validar predicciones | El cliente real pagó o no pagó el crédito |
| **CI/CD/CT** | Integración, despliegue y entrenamiento continuos | Pipeline que reentrena el modelo al recibir nuevos datos |
| **On-premise** | Servidores en instalaciones propias de la organización | Data center corporativo con datos sensibles |
| **Serverless** | Ejecución de código sin gestionar servidores (pay per use) | Endpoint de inferencia con tráfico intermitente |
| **Edge (Computación en el Borde)** | Inferencia directamente en el dispositivo del usuario | Modelo de reconocimiento facial en la cámara |
| **Latencia** | Tiempo de respuesta entre solicitud y resultado | <100ms para inferencia en Edge vs 500ms en Cloud |
| **Compliance** | Cumplimiento normativo y regulatorio | GDPR, protección de datos personales |
| **Streamlit** | Framework para crear dashboards interactivos en Python | App de predicción de precios |
| **Gradio** | Herramienta para crear demos rápidas de modelos de IA | Interfaz web para clasificación de imágenes |
| **Colab** | Notebook de Google con GPU gratis | Entrenar modelos sin configuración local |
| **MVP (Producto Mínimo Viable)** | Versión más básica funcional de una solución IA | App con chatbot y 3 pantallas principales |

---

## Preguntas de Reflexión

1. **Pregunta aplicada:** "Si tuvieras que desplegar un modelo de recomendación para una tienda online, ¿elegirías contenedores o serverless? Justifica."
2. **Pregunta comparativa:** "¿Cuál de las herramientas de bajo código crees que es más adecuada para una demo de clasificación de imágenes?"
3. **Pregunta crítica:** "¿Por qué muchos proyectos de ML fracasan al pasar de PoC a producción?"

---

## Fuentes

| # | Fuente | Tipo | URL |
|---|--------|------|-----|
| 1 | De Silva, D., & Alahakoon, D. (2022). *An artificial intelligence life cycle* | Artículo | Patterns, 3(6) |
| 2 | Kreuzberger, D., et al. (2023). *Machine learning operations (MLOps)* | Artículo | IEEE Access, 11 |
| 3 | Parimi, S. K., & Yarram, V. K. (2022). *AI-First Enterprise Architecture* | Artículo | The Computertech |
| 4 | Sánchez, O. V. G. (2025). Herramientas de IA para presentaciones en educación superior | Artículo | RITI, 13(29) |
| 5 | Sun, L., et al. (2020). *Developing a toolkit for prototyping ML products* | Artículo | Int. J. of Design, 14(2) |
