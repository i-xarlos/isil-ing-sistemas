# ¿Qué es la IA y por qué es importante? (Clase 1)

**Curso:** Inteligencia Artificial Aplicada (ISIL, 2026-2)  
**Docente:** [pendiente]  
**Fecha:** 01/09/2026

---

## Introducción

**Gancho humano:** ¿Alguna vez te has preguntado por qué Netflix te recomienda esa serie exacta que te encanta? O ¿cómo tu banco detecta un cargo sospechoso en tu tarjeta antes de que tú lo hagas? La respuesta está en la inteligencia artificial.

**Pregunta guía:** ¿Qué es realmente la IA y cómo ha evolucionado desde los sistemas simbólicos hasta los modelos generativos actuales?

**Objetivos de aprendizaje:**
- Comprender qué es la inteligencia artificial y sus tres paradigmas principales
- Entender qué es un modelo de lenguaje y cómo funciona
- Analizar cómo se entrena una IA y por qué no "piensa" como los humanos
- Reflexionar sobre los retos éticos, sociales y profesionales que plantea la IA

---

## 1. ¿Qué es la Inteligencia Artificial?

### Definición

Es la capacidad de las máquinas para realizar tareas que normalmente requieren inteligencia humana. Sin embargo, no todas las IA son iguales. Existen **tres paradigmas principales** que han evolucionado a lo largo del tiempo.

### Los Tres Paradigmas de la IA

| Paradigma | Período | Características |
|-----------|---------|-----------------|
| **IA Simbólica** | 1950-1980 | Sistemas basados en reglas lógicas explícitas programadas por humanos |
| **IA Estadística** | 1990-2010 | Sistemas que aprenden patrones a partir de datos usando métodos matemáticos |
| **IA Generativa** | 2020-presente | Sistemas capaces de crear contenido nuevo aprendiendo de ejemplos existentes |

### IA Simbólica (1950-1980)

También conocida como "Good Old-Fashioned AI" (GOFAI).

**Cómo funciona:**
- Los programadores crean un conjunto de reglas del tipo "SI... ENTONCES..."
- El sistema aplica estas reglas para resolver problemas específicos
- Todo el conocimiento debe ser codificado manualmente por expertos humanos

| Ventajas | Limitaciones |
|----------|--------------|
| Transparente y explicable | Requiere que expertos codifiquen manualmente el conocimiento |
| No requiere grandes cantidades de datos | No puede aprender de nuevos casos automáticamente |
| Funciona bien para problemas con reglas claras | Frágil ante situaciones no contempladas en las reglas |

**Ejemplo:** Un sistema experto para el diagnóstico de enfermedades tropicales en la selva peruana.

### IA Estadística (1990-2010)

Utiliza algoritmos matemáticos y estadísticos que pueden aprender patrones a partir de datos.

**Cómo funciona:**
- Se alimenta al sistema con grandes cantidades de datos etiquetados
- El algoritmo identifica patrones estadísticos
- Utiliza esos patrones para hacer predicciones sobre nuevos datos

| Ventajas | Limitaciones |
|----------|--------------|
| Puede manejar problemas complejos | Requiere grandes cantidades de datos de calidad |
| Mejora su rendimiento con más datos | Puede ser una "caja negra" |
| Descubre patrones que los humanos podrían no detectar | Vulnerable a sesgos presentes en los datos |

**Ejemplo:** El BCP utiliza IA estadística para detectar fraudes en tarjetas de crédito.

### IA Generativa (2020-presente)

A diferencia de los sistemas anteriores que solo clasifican o predicen, la IA generativa puede crear contenido nuevo: textos, imágenes, música, código, videos y más.

**Cómo funciona:**
- Utiliza redes neuronales artificiales con múltiples capas
- Aprende las estructuras, patrones y relaciones en cantidades masivas de datos
- Puede generar contenido nuevo que se asemeja a los datos con los que fue entrenada

| Ventajas | Limitaciones |
|----------|--------------|
| Creatividad y versatilidad sin precedentes | Puede generar información falsa con confianza ("alucinaciones") |
| Puede realizar múltiples tareas sin reentrenamiento | Requiere recursos computacionales masivos |
| Interfaz natural en lenguaje humano | Plantea desafíos éticos y de derechos de autor |

**Ejemplo:** Un estudiante de Marketing en ISIL puede utilizar ChatGPT para generar ideas de campaña para promover el turismo en Cusco.

---

## 2. ¿Qué es un Modelo de Lenguaje?

### Definición

Un modelo de lenguaje es un sistema de IA diseñado específicamente para entender, procesar y generar lenguaje humano. Es un modelo probabilístico que predice la probabilidad de una secuencia de palabras.

### Funcionamiento

1. **Tokenización:** Divide el texto en unidades pequeñas llamadas "tokens"
2. **Representación vectorial:** Convierte cada token en números que capturan su significado
3. **Predicción:** Utiliza sus conocimientos estadísticos para predecir la continuación más probable
4. **Ejemplo:** Si escribes "La capital del Perú es...", el modelo sabe que la palabra más probable es "Lima"

### Tipos de Modelos de Lenguaje

| Tipo | Características |
|------|-----------------|
| **Modelos pequeños especializados** | Enfocados en una tarea específica, eficientes, requieren menos recursos |
| **Modelos de lenguaje grande (LLM)** | Entrenados con billones de palabras, múltiples tareas sin reentrenamiento, versátiles pero costosos |

### Capacidades Principales

- Comprensión de texto en contexto
- Generación de texto coherente y relevante
- Traducción entre idiomas
- Resumen de documentos largos
- Respuesta a preguntas
- Clasificación de textos
- Extracción de información

---

## 3. ¿Cómo se Entrena una IA?

### El Entrenamiento

Entrenar una IA es como enseñar a un niño, pero con millones de ejemplos. Este proceso puede requerir meses y cientos de miles de dólares en recursos computacionales.

### Las 6 Fases del Entrenamiento

| Fase | Descripción |
|------|-------------|
| **1. Recolección de datos** | Reunir una cantidad masiva de datos relevantes |
| **2. Preparación y etiquetado** | Limpiar y etiquetar los datos (trabajo laborioso y crucial) |
| **3. Selección del modelo** | Elegir la arquitectura de red neuronal apropiada |
| **4. Entrenamiento** | Inicialización, forward pass, cálculo del error, backpropagation, iteración |
| **5. Validación y ajuste** | Probar con datos nuevos y ajustar parámetros |
| **6. Despliegue y monitoreo** | Implementar en entorno real y monitorear continuamente |

### ¿Por qué la IA no "piensa" como los humanos?

1. La IA opera mediante correlaciones estadísticas, no comprensión
2. La IA no tiene experiencia sensorial
3. La IA no tiene conciencia ni intencionalidad
4. La IA no razona causalmente como los humanos
5. Los humanos aprenden de pocos ejemplos, la IA necesita millones
6. La IA carece de sentido común

---

## 4. La IA en el Día a Día

### Asistentes Virtuales y Chatbots

**Ejemplos en Perú:**
- "Alexa" de BCP
- "SofIA" de Interbank
- Chatbots de Claro, Movistar, Entel

### Algoritmos de Recomendación

**Ejemplos:**
- Netflix recomienda series basándose en lo que has visto
- Spotify genera listas personalizadas como "Descubrimiento semanal"
- Juntoz: "Los clientes que compraron esto también compraron..."

### Personalización en Plataformas Digitales

La personalización adapta la experiencia completa según cada usuario:
- **Banca:** La app muestra primero los servicios que más usas
- **Salud:** Apps de fitness ajustan planes de entrenamiento
- **Educación:** Khan Academy adapta el ritmo y contenido

### Predicción y Anticipación

La IA no solo reacciona, sino que predice comportamientos y necesidades futuras:
- **Mantenimiento predictivo:** Southern Copper o Antamina predicen cuándo fallarán equipos
- **Gestión de riesgo crediticio:** Los bancos predicen la probabilidad de que un cliente pague
- **Predicción de demanda:** Supermercados predicen qué productos se venderán más

---

## 5. Diferencias entre IA Generativa y Otras Formas de Automatización

| Tipo | Características |
|------|-----------------|
| **Automatización tradicional** | Tareas repetitivas siguiendo reglas fijas; confiable pero inflexible |
| **IA tradicional** | Clasifica, predice o decide; eficiente pero sin creatividad |
| **IA generativa** | Crea contenido nuevo; versátil pero puede generar alucinaciones |

---

## Conclusiones

1. La IA evolucionó de reglas simbólicas a modelos generativos. No piensa como humano, sino usa correlaciones estadísticas.
2. La IA en Perú ya se usa en banca, retail y logística. Existe una brecha digital que puede ampliar desigualdades, pero también oportunidades únicas.
3. Es recomendable adoptar un "optimismo crítico": aprovechar la IA para aumentar productividad, siempre verificando la información.
4. La IA plantea dilemas sobre responsabilidad, privacidad y equidad.

**Frase clave:**
> "La inteligencia artificial es la nueva electricidad. Así como la electricidad transformó casi todo hace 100 años, hoy la IA está a punto de transformar casi todas las industrias." — Andrew Ng

---

## Glosario

| Término | Definición | Ejemplo |
|---------|------------|---------|
| **IA Simbólica** | Sistemas basados en reglas lógicas explícitas | Sistemas expertos médicos |
| **IA Estadística** | Sistemas que aprenden patrones a partir de datos | Detección de fraudes bancarios |
| **IA Generativa** | Sistemas capaces de crear contenido nuevo | ChatGPT, DALL-E, Midjourney |
| **Modelo de Lenguaje** | Sistema de IA para entender y generar lenguaje humano | GPT-4, BERT, LLaMA |
| **LLM** | Modelo de lenguaje entrenado con billones de palabras | GPT-4, Claude, Gemini |
| **Token** | Unidad pequeña de texto que el modelo procesa | Palabra o parte de palabra |
| **Alucinación** | Información falsa presentada con confianza por la IA | Estadísticas inventadas |
| **Optimismo crítico** | Aprovechar IA comprendiendo sus límites | Usar ChatGPT verificando resultados |

---

## Preguntas de Reflexión

1. **Pregunta aplicada:** Si tuvieras que usar IA generativa para mejorar un proceso en tu trabajo o estudio actual, ¿cuál sería y cómo lo harías?

2. **Pregunta comparativa:** ¿Cuál de los tres paradigmas de IA crees que tiene más potencial para resolver problemas en el Perú? ¿Por qué?

3. **Pregunta crítica:** ¿Cómo crees que la brecha digital en el Perú afecta el acceso a los beneficios de la IA?

---

## Fuentes

| # | Fuente | Tipo | URL |
|---|--------|------|-----|
| 1 | Banco Interamericano de Desarrollo. (2022). IA para el bien social en América Latina | Informe | https://publications.iadb.org/es/inteligencia-artificial-para-el-bien-social-en-america-latina-y-el-caribe |
| 2 | CAF. (2023). Transformación digital e IA en América Latina | Informe | https://www.caf.com/es/conocimiento/visiones/2023/01/transformacion-digital-inteligencia-artificial/ |
| 3 | Comisión Europea. (2020). Libro blanco sobre IA | Informe | https://ec.europa.eu/info/publications/white-paper-artificial-intelligence-european-approach-excellence-and-trust_es |
| 4 | Ministerio de la Producción del Perú. (2019). Estrategia Nacional de IA | Informe | https://cdn.www.gob.pe/uploads/document/file/1394099/Estrategia%20Nacional%20de%20Inteligencia%20Artificial.pdf |
| 5 | Ng, A. (2024). AI for everyone | Curso | https://www.coursera.org/learn/ai-for-everyone-es |

---

*Última verificación: 01/09/2026.*