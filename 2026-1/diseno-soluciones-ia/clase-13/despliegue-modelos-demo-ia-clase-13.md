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

### Entornos de ejecución

| Entorno | Descripción | Cuándo usarlo |
|---------|-------------|---------------|
| **Local** | Notebooks, scripts, testing rápido | Prototipos, experimentación |
| **Serverless** | Endpoints ligeros, carga variable | APIs con tráfico intermitente |
| **Cloud (IaaS/PaaS)** | Elasticidad, servicios gestionados | Despliegue rápido y escalable |
| **On-premise** | Control total, compliance estricto | Datos sensibles, regulación |
| **Edge/móvil** | Inferencia en dispositivo | Privacidad, baja latencia, offline |

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

## 2. Estrategias de Release de Modelos

### Canary Release

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

**MLOps** surge para cerrar esta brecha mediante prácticas, cultura y automatización.

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

### Monitoreo: Drift y salud del modelo

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

---

## Conclusiones

1. El despliegue transforma un modelo académico en una solución funcional real
2. La demo es clave para validar y comunicar el valor del proyecto
3. Herramientas low-code facilitan la experimentación rápida sin infraestructura compleja
4. Comprender conceptos de producción permite anticipar desafíos reales

**Frase clave:**
> "Un modelo sin despliegue es un experimento. Un modelo desplegado es un producto."

---

## Glosario

| Término | Definición | Ejemplo |
|---------|------------|---------|
| **Despliegue** | Proceso de llevar un modelo de entrenamiento a producción | API de predicciones en la nube |
| **MLOps** | Prácticas para operar modelos ML en producción | CI/CD para modelos |
| **Canary Release** | Estrategia de despliegue gradual con fracción de tráfico | 5% tráfico al modelo nuevo |
| **Blue-Green** | Dos entornos en paralelo, swap instantáneo | Cambio de v1 a v2 sin downtime |
| **Drift** | Cambio en la distribución de datos de entrada | Clientes compran diferente post-pandemia |
| **Streamlit** | Framework para crear dashboards interactivos en Python | App de predicción de precios |
| **Colab** | Notebook de Google con GPU gratis | Entrenar modelos sin configuración |
| **Edge** | Inferencia en el dispositivo del usuario | Filtros de cámara en tiempo real |

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
