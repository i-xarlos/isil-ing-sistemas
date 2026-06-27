# Experimentación como Herramienta Customer Centric (Clase 12)

**Curso:** Customer Centricity en Tecnologías de la Información (ISIL, 2026-1)  
**Docente:** Henry Joseph Paredes del Alamo  
**Fecha:** [Sesión 12]

---

## Introducción

**Gancho humano:** ¿Alguna vez lanzaste una función nueva y descubriste que nadie la usaba? ¿O peor: que la gente se confundía y abandonaba el producto? En el mundo físico, revertir un error de diseño toma semanas. En el digital, puede ser cuestión de clics. La experimentación te permite aprender rápido, fallar barato y crecer con datos, no con suposiciones.

**Pregunta guía:** ¿Cómo pasar de "creo que esta feature va a funcionar" a "sé que esta feature funciona, porque los datos lo confirman"?

**Objetivos de aprendizaje:**
- Entender la experimentación como herramienta clave del enfoque customer centric
- Conocer las principales herramientas del mercado (VWO, Amplitude Experiment, Optimizely)
- Ejecutar el proceso de implementación de un experimento
- Desmontar mitos comunes y aplicar buenas prácticas

---

## 1. ¿Por qué experimentar?

### La ventaja del mundo digital

**Analogía:** En un restaurant físico, si cambias el menú y no gusta, el cliente se fue frustrado y tal vez no vuelva. En una app, si cambias un botón y no funciona, lo reviertes en 5 minutos y el usuario ni se entera. La experimentación digital es como tener un "botón de deshacer" para decisiones de producto.

```
┌─────────────────────────────────────────────────────────────┐
│         MUNDO FÍSICO vs MUNDO DIGITAL                       │
├─────────────────────────────────────────────────────────────┤
│                                                              │
│  MUNDO FÍSICO                    MUNDO DIGITAL              │
│  ─────────────                   ──────────────             │
│  Cambiar menú de restaurant      Cambiar botón en app       │
│  → Semanas de preparación        → Minutos de configuración │
│  → Costo de reimprimir menús     → Costo cero               │
│  → Si falla, clientes perdidos   → Si falla, se revierte    │
│  → Feedback lento (días)         → Feedback inmediato       │
│                                                              │
│  En digital: parar un experimento es cuestión de clics.     │
│  Luego, analizar los datos es automáticos.                  │
│                                                              │
└─────────────────────────────────────────────────────────────┘
```

### Tres beneficios clave de la experimentación

| Beneficio | Qué resuelve | Ejemplo |
|---|---|---|
| **Aprender rápido sobre el usuario** | Reducir el ciclo de feedback de semanas a horas | Probar 3 variantes de checkout en 1 semana |
| **Evitar sesgo por intuición** | Validar con data del mercado, no con opiniones internas | "A alguien se le ocurrió" vs "Los datos muestran que X funciona" |
| **Entender segmentos** | Personalizar experiencias por perfil de usuario | Mostrar variantes diferentes a nuevos vs recurrentes |

---

## 2. ¿Qué es la experimentación en digital?

### Definición

La experimentación es el proceso de **probar hipótesis de producto** mediante variantes controladas, midiendo su impacto en métricas clave para tomar decisiones basadas en datos.

**No es solo "cambiar colores."** Es un proceso estructurado que puede incluir:
- Cambios de diseño (copy, colores, layout)
- Nuevos flujos de usuario (checkout simplificado)
- Nuevas features (gamificación, recomendaciones)
- Incluso nuevos modelos de negocio (fake door testing)

### ¿Cuándo experimentar?

| Fase del producto | Tipo de experimento | Ejemplo |
|---|---|---|
| **Discovery** | Fake door testing, validación de interés | "¿Alquien haría clic en 'Alquilar bicicleta'?" |
| **Design** | Pruebas de diseño, A/B testing de UI | Botón azul vs verde, copy A vs copy B |
| **Delivery** | Optimización de conversión, retención | Checkout con 3 pasos vs 5 pasos |

---

## 3. Herramientas de experimentación

### Principales plataformas

| Herramienta | Enfoque principal | Ideal para | Curva de aprendizaje |
|---|---|---|---|
| **VWO** | A/B testing, personalización, encuestas | Equipos de marketing y producto | Baja (no-code disponible) |
| **Amplitude Experiment** | Experimentos integrados con analítica de producto | Equipos que ya usan Amplitude | Media |
| **Optimizely** | A/B testing, testing multivariante, personalización | Empresas grandes con múltiples canales | Media-Alta |
| **Adobe Target** | Personalización y testing enterprise | Organizaciones con ecosistema Adobe | Alta |
| **Google Optimize** *(descontinuado)* | A/B testing básico | Proyectos pequeños (ya no disponible) |

### ¿Cómo elegir la herramienta correcta?

**Factores a evaluar:**

1. **¿Ya tienes otra solución de la misma empresa?** (integración nativa)
2. **Soporte y documentación** (comunidad, tutoriales, soporte técnico)
3. **Precio** (costo vs capacidad)
4. **Facilidad de implementación** (requiere desarrollo o es no-code)

### Capacidades clave de estas herramientas

| Capacidad | Qué permite | Ejemplo práctico |
|---|---|---|
| **Configuración de experimentos** | Definir público, duración, métrica principal, significancia | "Mostrar a 20% de usuarios, medir durante 2 semanas, 95% significancia" |
| **Monitoreo en tiempo real** | Ver cómo impacta cada variante vs control | Dashboard con conversión por variante |
| **Segmentación** | Mostrar variantes por perfil, comportamiento o evento | "Solo a usuarios nuevos que vinieron de Instagram" |
| **No-code editing** | Cambiar elementos sin tocar código | Arrastrar y soltar botones, cambiar textos |
| **Integración con analítica** | Conectar resultados con herramientas de medición | VWO + Amplitude, Optimizely + Google Analytics |

---

## 4. Proceso de implementación de experimentos

### Las 4 fases

```
┌─────────────────────────────────────────────────────────────┐
│          PROCESO DE IMPLEMENTACIÓN PASO A PASO               │
├─────────────────────────────────────────────────────────────┤
│                                                              │
│  FASE 1: OBJETIVOS E HIPÓTESIS                              │
│  Definir qué quieres lograr y cómo lo vas a probar          │
│              │                                               │
│              ▼                                               │
│  FASE 2: IDEA SOLUCIONES                                    │
│  Generar variantes priorizando valor vs esfuerzo            │
│              │                                               │
│              ▼                                               │
│  FASE 3: IMPLEMENTA LAS VARIANTES                           │
│  Desarrollar (con código o no-code) cada variante           │
│              │                                               │
│              ▼                                               │
│  FASE 4: CONFIGURA Y DESPLIEGA                              │
│  Configurar en la herramienta y poner en vivo               │
│                                                              │
└─────────────────────────────────────────────────────────────┘
```

### Fase 1: Objetivos e Hipótesis

**Objetivo:** ¿Qué quieres lograr?  
**Hipótesis:** ¿Cómo el experimento te va a ayudar a lograrlo?

**Ejemplo real:**
- **Problema:** Bajo uso recurrente de una feature a pesar de inversión en marketing
- **Hipótesis:** "Utilizando la feature X, los clientes van a elevar sus probabilidades de quedarse con nosotros"
- **Objetivo:** Aumentar la retención de usuarios que activan la feature

### Fase 2: Idea Soluciones

**Regla:** Todas las ideas son bienvenidas, pero se priorizan por **valor vs esfuerzo**.

| Criterio | Pregunta |
|---|---|
| **Impacto esperado** | ¿Cuánto podría mejorar la métrica? |
| **Esfuerzo de implementación** | ¿Cuánto tiempo/dinero toma? |
| **Riesgo** | ¿Qué podría salir mal? |
| **Velocidad de aprendizaje** | ¿Cuánto tardaremos en saber si funcionó? |

### Fase 3: Implementa las Variantes

- Desarrollar cada variante priorizada
- Si es no-code, usar el editor de la herramienta
- Asegurar que cada variante sea independiente y medible

### Fase 4: Configura y Despliega

**Variables de configuración obligatorias:**

| Variable | Qué define | Ejemplo |
|---|---|---|
| **Público** | A quiénes se les muestra | 20% de usuarios nuevos |
| **Variantes** | Cuántas versiones hay | Control + 2 variantes |
| **Métrica principal** | Qué se mide | Tasa de conversión del flujo |
| **Duración** | Cuánto tiempo corre | 2 semanas |
| **Significancia estadística** | Cuán seguro quieres estar | 95% |

---

## 5. Caso real: Optimización de retención

### El problema

Una empresa lanzó una feature nueva y la promovió con marketing agresivo. Resultado: muchos usuarios la activaron, pero **pocos la usaron recurrentemente**. La inversión en marketing no se estaba traduciendo en retención.

### El proceso

```
┌─────────────────────────────────────────────────────────────┐
│              CASO REAL: RETENCIÓN DE FEATURE                 │
├─────────────────────────────────────────────────────────────┤
│                                                              │
│  PROBLEMA                                                    │
│  Usuarios activan feature pero no la usan recurrentemente   │
│              │                                               │
│              ▼                                               │
│  HIPÓTESIS                                                   │
│  "Si mostramos el valor de la feature en el momento          │
│   correcto del journey, los usuarios la adoptarán"          │
│              │                                               │
│              ▼                                               │
│  SOLUCIONES (3 variantes priorizadas)                       │
│  ├── Variante A: Tour guiado al primer uso                  │
│  ├── Variante B: Notificación push en momento clave         │
│  └── Variante C: Banner contextual en el journey            │
│              │                                               │
│              ▼                                               │
│  RESULTADO                                                   │
│  ✓ Mayor llegada de usuarios sin caer actividad en otros    │
│  ✓ Detección de capacidades con problemas (ajuste rápido)   │
│  ✗ Algunas soluciones invasivas → descartadas               │
│                                                              │
│  APRENDIZAJE CLAVE                                           │
│  No se trata de colocar todo en todos lados.                │
│  Las soluciones invasivas se perciben como "errores".       │
│                                                              │
└─────────────────────────────────────────────────────────────┘
```

### Lecciones aprendidas

1. **Aprendizaje rápido:** Tener más usuarios permitió detectar problemas que no se veían con poca data
2. **Iteración veloz:** Ajustar la feature mientras se preparaba para escalar
3. **No invadir:** Soluciones demasiado intrusivas generan rechazo, no adopción

---

## 6. Fake Door Testing

### ¿Qué es?

Una técnica de pre-validación de interés donde se muestra al usuario un "camino" hacia un producto o feature que **aún no existe**. Si el usuario hace clic, se le notifica que próximamente estará disponible.

### ¿Para qué sirve?

- Medir interés real antes de invertir en desarrollo
- Validar si una idea de negocio tiene tracción
- Evitar construir algo que nadie quiere

### Flujo del Fake Door Test

```
┌─────────────────────────────────────────────────────────────┐
│              FLUJO DE FAKE DOOR TESTING                      │
├─────────────────────────────────────────────────────────────┤
│                                                              │
│  1. Crear botón/enlace hacia el "nuevo producto"            │
│     (ej: "Alquilar bicicleta" en la homepage)               │
│              │                                               │
│              ▼                                               │
│  2. Usuario hace clic en el elemento                        │
│              │                                               │
│              ▼                                               │
│  3. En lugar de mostrar el producto, mostrar:               │
│     "¡Próximamente disponible! Te notificaremos"            │
│              │                                               │
│              ▼                                               │
│  4. Medir: ¿Cuántos hicieron clic?                         │
│     ¿Qué % dejó su email para notificación?                │
│                                                              │
│  RESULTADO: Dato real de interés sin construir nada         │
│                                                              │
└─────────────────────────────────────────────────────────────┘
```

---

## 7. Mitos y verdades sobre la experimentación

| Mito | Verdad |
|---|---|
| **"Experimentar solo es cambiar colores o contenidos"** | **FALSO.** Las herramientas no-code avanzan cada vez más: flujos completos, layouts, funcionalidades, no solo estética |
| **"Necesitas desarrolladores para cada experimento"** | **FALSO.** Depende de la complejidad. Muchos experimentos se hacen con no-code. Pero flujos complejos sí requieren desarrollo |
| **"Solo se usa para mejorar features existentes"** | **FALSO.** Organizaciones usan experimentación para probar nuevos modelos de negocio (fake door testing) |
| **"Más data es siempre mejor"** | **FALSO.** Solo medir lo que genera decisiones. Cada evento tiene un costo en la plataforma |
| **"Los experimentos siempre dan resultados claros"** | **FALSO.** A veces no hay diferencia significativa, y eso también es un aprendizaje válido |

---

## 8. Buenas prácticas

| Práctica | Por qué importa |
|---|---|
| **No todos los productos están listos para experimentar** | Si los recursos (especialmente tiempo) son limitados, enfócate en MVPs válidos primero |
| **Tener un equipo dedicado** | No necesita ser grande, pero sí con guía y backlog claro de objetivos a experimentar |
| **Almacenar resultados en bitácora compartida** | Evita repetir pruebas ya hechas, democratiza aprendizajes |
| **Usar significancia estadística** | No sacar conclusiones prematuras. Esperar al 95% de confianza antes de escalar |
| **Definir métrica principal ANTES de empezar** | Evitar buscar resultados que confirmen lo que ya creías (confirmation bias) |
| **No escalar sin validación** | Un experimento exitoso en 20% de usuarios no garantiza éxito al 100% |

---

## 9. Herramientas: comparativa rápida

| Característica | VWO | Amplitude Experiment | Optimizely |
|---|---|---|---|
| **A/B testing** | ✅ | ✅ | ✅ |
| **Multivariante** | ✅ | ❌ | ✅ |
| **No-code editor** | ✅ Fuerte | ❌ | ✅ |
| **Integración con analítica** | Google Analytics, Mixpanel | Nativo con Amplitude | Google Analytics, Segment |
| **Personalización** | ✅ | ❌ | ✅ |
| **Fake door testing** | ✅ | ❌ | ✅ |
| **Precio** | Medio | Incluido con Amplitude | Alto |
| **Ideal para** | Marketing + Producto | Equipos ya en Amplitude | Enterprise |

---

## Errores Comunes a Evitar

| Error | Ejemplo real | Consecuencia |
|---|---|---|
| **No definir métrica antes del experimento** | Equipo corre el test y luego busca qué métrica se "ve mejor" | Confirmation bias, conclusiones inválidas |
| **Escalar sin significancia estadística** | Escalar después de 3 días con 100 usuarios | Resultados por azar, no por efecto real |
| **Hacer demasiados experimentos a la vez** | 10 experimentos corriendo simultáneamente | Resultados contaminados, imposible aislar efectos |
| **No documentar resultados** | Experimento exitoso pero nadie recuerda por qué funcionó | Repetir errores, perder aprendizajes |
| **Ignorar resultados negativos** | Descartar un experimento que falló sin analizar por qué | Perder insights valiosos sobre el usuario |
| **No considerar el contexto** | Probar en diciembre y asumir que funciona siempre | Resultados sesgados por estacionalidad |

---

## Conclusiones

1. **La experimentación es la herramienta más rápida para aprender sobre tu usuario.** En el mundo digital, probar una idea puede tomar horas, no semanas. Esto permite iterar y mejorar continuamente.

2. **No es solo cambiar colores.** La experimentación puede abarcar flujos completos, nuevos modelos de negocio y personalización por segmentos.

3. **El proceso es más ágil que el desarrollo tradicional.** Objetivos → Soluciones → Implementar → Configurar. El esfuerzo vs el valor incierto es lo que guía la priorización.

4. **Las herramientas facilitan, pero no reemplazan el criterio.** Elegir la herramienta correcta, definir métricas antes de empezar y almacenar resultados son prácticas que nadie hace por ti.

5. **No todos los productos están listos para experimentar.** Si los recursos son limitados, enfócate en construir un MVP sólido antes de optimizar.

**Frase clave:**
> "Un experimento bien diseñado te dice más sobre tu usuario que mil encuestas. Pero un experimento mal diseñado te dice mentiras con confianza del 95%."

---

## Glosario

| Término | Definición | Ejemplo |
|---|---|---|
| **A/B Testing** | Comparar dos variantes para ver cuál funciona mejor | Botón azul vs botón verde |
| **Multivariante** | Probar múltiples variantes de múltiples elementos a la vez | Color + copy + ubicación |
| **Fake Door Testing** | Mostrar acceso a algo que no existe para medir interés | Botón "Alquilar bicicleta" que lleva a "Próximamente" |
| **Variante** | Versión alternativa del producto que se está probando | Checkout simplificado vs original |
| **Control** | Versión original contra la que se compara | Versión actual del producto |
| **Significancia estadística** | Nivel de confianza de que el resultado no es azar | 95% significa 1 de 20 posibilidades de error |
| **No-code** | Capacidad de hacer cambios sin programar | Arrastrar y soltar elementos en VWO |
| **Confirmation Bias** | Tendencia a buscar resultados que confirmen lo que ya crees | "Miramos solo la métrica que mejoró" |
| **Bitácora de experimentos** | Registro compartido de todos los experimentos realizados | Wiki con hipótesis, resultados y aprendizajes |

---

## Preguntas de Reflexión

1. **Pregunta práctica:** "Si tuvieras una app de delivery y notaras que el 60% de los usuarios abandonan antes de completar el pedido, ¿qué 3 experimentos diseñarías para reducir ese abandono?"

2. **Pregunta crítica:** "¿Alguna vez tomaste una decisión de producto basada en la intuición de alguien del equipo? ¿Qué habría pasado si hubieran hecho un A/B testing primero?"

3. **Pregunta técnica:** "Si tuvieras que elegir entre VWO y Amplitude Experiment para tu equipo, ¿qué factores considerarías? ¿Qué pasaría si ya usas Amplitude para analítica?"

4. **Pregunta ética:** "El fake door testing muestra algo que no existe. ¿Crees que esto es engañoso para el usuario? ¿Dónde está la línea entre validar interés y decepcionar al cliente?"

---

## Fuentes

| # | Fuente | Tipo | URL |
|---|--------|------|-----|
| 1 | UserPilot. *Fake Door Testing* | Tercero | https://userpilot.com/blog/fake-door-testing/ |
| 2 | Amplitude. *Amplitude Experiment* | Oficial | https://amplitude.com/amplitude-experiment |
| 3 | VWO. *Funnels & Insights* | Oficial | https://vwo.com/insights/funnels/ |
| 4 | Kohavi, R., Tang, D., & Xu, Y. (2020). *Trustworthy Online Controlled Experiments*. Cambridge University Press | Libro | https://www.trustworthyexperiments.com/ |
| 5 | Optimizely. * experimentation Resources* | Oficial | https://www.optimizely.com/optimization-glossary/ab-testing/ |

---

*Última verificación: 26/06/2026.*
