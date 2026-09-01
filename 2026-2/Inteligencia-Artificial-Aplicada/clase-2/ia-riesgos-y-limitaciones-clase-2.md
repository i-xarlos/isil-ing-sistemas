# IA: Riesgos y Limitaciones (Clase 2)

**Curso:** Inteligencia Artificial Aplicada (ISIL, 2026-2)  
**Docente:** [pendiente]  
**Fecha:** 01/09/2026

---

## Introducción

**Gancho humano:** ¿Alguna vez has confiado completamente en una respuesta de ChatGPT solo para descubrir que era completamente falsa? Las alucinaciones de la IA son más comunes de lo que creemos.

**Pregunta guía:** ¿Cuáles son los principales riesgos de la IA y cómo podemos mitigarlos para usarla de forma responsable?

**Objetivos de aprendizaje:**
- Comprender los principales riesgos y limitaciones de la IA
- Analizar las alucinaciones y errores en los sistemas de IA
- Entender los sesgos y su impacto en los modelos
- Reflexionar sobre la dependencia tecnológica y la seguridad digital

---

## 1. Alucinaciones y Errores

### ¿Qué son las alucinaciones en IA?

Son respuestas que el sistema genera con aparente confianza, pero que contienen información falsa, inventada o inexacta. A diferencia de un error humano consciente, la IA no "sabe" que está equivocada.

### Características Principales

| Característica | Descripción |
|----------------|-------------|
| **Generación con confianza aparente** | La IA presenta información falsa con el mismo tono seguro que usa para datos correctos |
| **Coherencia superficial** | Las respuestas alucinadas suelen ser gramaticalmente correctas y contextualmente plausibles |
| **Invención de referencias** | Los sistemas pueden crear citas bibliográficas falsas, nombres de estudios inexistentes |
| **Mezcla de información** | Combinan datos reales con elementos falsos, creando una narrativa parcialmente correcta |
| **Amplificación de errores** | Si se les pide profundizar en información incorrecta, pueden elaborar más detalles falsos |
| **Dependencia del contexto** | La probabilidad de alucinaciones aumenta con información muy específica o reciente |

### Estrategias de Mitigación

1. **Verificación cruzada obligatoria:** Siempre contrastar la información con fuentes oficiales
2. **Escepticismo informado:** No aceptar todo lo que la IA genera como verdadero
3. **Conocimiento del dominio:** Entender el tema para identificar errores
4. **Solicitar fuentes:** Pedir a la IA que cite sus fuentes
5. **Uso de IA como borrador:** Usar la IA como punto de partida, no como respuesta final

### Ejemplo: Riesgo en Consultoría Empresarial

Una consultora en Lima utilizó IA generativa para obtener estadísticas sobre el flujo turístico en Cusco. El sistema "alucinó" datos atribuidos al Mincetur que eran totalmente falsas. El cliente tomó decisiones de inversión basándose en este análisis erróneo y sufrió pérdidas significativas.

### Ejemplo: Sector Financiero

Interbank implementó un programa de capacitación para sus analistas financieros en el que aprendieron que, cuando la IA genera proyecciones sobre sectores emergentes en Perú, estas deben contrastarse con datos del BCRP y la SBS.

### Ejemplo: Cómo Verificar Información de IA

**Paso 1:** Pide a ChatGPT datos sobre turismo en Cusco
**Paso 2:** El sistema responde: "En 2024, Cusco recibió 4.5 millones de turistas"
**Paso 3:** Verifica en fuentes oficiales:

| Fuente | Dato Real | ¿Coincide? |
|--------|-----------|------------|
| Mincetur (gob.pe) | 3.2 millones (2024) | ❌ No |
| BCRL (Banco Central de Reserva del Perú) | 3.1 millones (2024) | ❌ No |
| OMT (Organización Mundial del Turismo) | Datos no disponibles para Perú | — |

> **Resultado:** La IA inventó el dato. Si lo hubieras usado en una presentación al directorio, habrías perdido credibilidad.

### Ejemplo: Uso Responsable de IA en Estudiantes

| Tarea | Uso Correcto | Uso Incorrecto |
|-------|--------------|----------------|
| Investigar para tesis | Usar IA para obtener ideas, luego verificar en fuentes académicas | Copiar texto de IA sin verificar |
| Redactar ensayo | Usar IA para estructurar ideas, luego escribir con tu propio estilo | Pedir a IA que escriba todo el ensayo |
| Preparar examen | Usar IA para crear preguntas de práctica | Usar IA durante el examen |
| Presentación | Usar IA para diseñar slides, luego revisar contenido | Presentar contenido de IA sin entenderlo |

> **Regla de oro:** La IA es tu asistente, no tu sustituto.

---

## 2. Sesgos y Entrenamiento de Modelos

### ¿Qué son los sesgos en la IA?

Son distorsiones sistemáticas en los outputs del modelo que reflejan, amplifican o introducen prejuicios, estereotipos o preferencias injustas hacia ciertos grupos.

### Tipos de Sesgos

| Tipo | Descripción |
|------|-------------|
| **Sesgos de representación** | Ciertos grupos o perspectivas están subrepresentados en los datos |
| **Sesgos históricos** | Los datos reflejan injusticias y desigualdades del pasado |
| **Sesgos de confirmación** | Los modelos pueden reforzar estereotipos existentes |
| **Sesgos geográficos y culturales** | La mayoría de los grandes modelos están entrenados con contenido predominantemente estadounidense y europeo |
| **Sesgos temporales** | Los modelos tienen una "fotografía" del mundo hasta su fecha de entrenamiento |
| **Sesgos de etiquetado** | Las decisiones humanas durante el entrenamiento introducen valores específicos |

### Ejemplo: Reclutamiento Inclusivo en BCP

El BCP realizó una auditoría de sesgos antes del despliegue de herramientas de IA para filtrado de CV. El análisis reveló que el sistema favorecía a candidatos de determinadas universidades de Lima y penalizaba CV con nombres que el algoritmo asociaba a provincias o comunidades indígenas.

### Ejemplo: Exclusión Financiera Digital

Una fintech lanzó una app de préstamos basada en IA entrenada principalmente con datos de usuarios urbanos con smartphones de gama alta. El modelo terminó rechazando sistemáticamente solicitudes de personas de zonas rurales o periurbanas.

### Estrategias de Mitigación

1. **Auditoría de equidad:** Revisar los outputs del modelo en busca de patrones discriminatorios
2. **Diversidad en datos:** Incluir representación diversa en los datos de entrenamiento
3. **Revisión humana crítica:** Evaluar los resultados con perspectiva crítica
4. **Transparencia:** Ser abierto sobre las limitaciones del modelo
5. **Iteración y mejora:** Continuamente refinar el modelo

---

## 3. Riesgos de Dependencia Tecnológica

### ¿Qué es la dependencia tecnológica en IA?

Es la erosión gradual de capacidades humanas críticas cuando delegamos excesivamente tareas cognitivas, creativas o de toma de decisiones a sistemas automatizados.

### Tipos de Dependencia

| Tipo | Descripción | Ejemplo |
|------|-------------|---------|
| **Atrofia de habilidades cognitivas** | El uso constante de IA para redacción reduce nuestra capacidad de estructurar argumentos | Un redactor que usa IA para generar eslóganes pierde su capacidad creativa |
| **Pérdida de conocimiento tácito** | Cuando la IA realiza análisis, perdemos el "aprendizaje en el proceso" | Analistas financieros que no pueden explicar tendencias detrás de reportes automatizados |
| **Erosión del pensamiento crítico** | Si aceptamos outputs de IA sin cuestionamiento, dejamos de ejercitar nuestra capacidad de evaluar | Estudiantes que integran información errónea de IA sin cuestionar |
| **Dependencia operacional** | Organizaciones pueden encontrarse paralizadas si la tecnología falla | Call center que colapsa durante 24 horas de outage |
| **Pérdida de ventaja competitiva** | Profesionales que dependen completamente de herramientas disponibles para todos pierden diferenciación | Arquitectos que solo presentan output de IA sin valor agregado |
| **Vulnerabilidad ante cambios tecnológicos** | Las personas que desarrollan capacidades basándose solo en herramientas específicas quedan expuestas a la obsolescencia | Community manager cuya herramienta se vuelve obsoleta |

### El Equilibrio Apropiado

**PRIMERO DOMINA LOS FUNDAMENTOS HUMANOS:**
- Antes de usar IA para escribir, aprende a estructurar argumentos
- Antes de utilizar IA para programar, entiende algoritmos y lógica computacional

**USA LA IA PARA AMPLIFICAR, NO REEMPLAZAR:**
- Usa IA para generar opciones que tú evalúas y seleccionas
- Utiliza IA para acelerar tareas repetitivas mientras te enfocas en decisiones estratégicas

**MANTÉN LA PRÁCTICA REGULAR DE HABILIDADES:**
- Dedica tiempo a tareas sin asistencia de IA
- Practica resolución de problemas "desde cero" regularmente

---

## 4. Seguridad Digital y Privacidad

### Implicancia de la Seguridad y Privacidad en IA

Se refiere a los riesgos asociados con el manejo de datos personales, información sensible y propiedad intelectual cuando interactuamos con sistemas de IA.

### Características Principales

| Característica | Descripción |
|----------------|-------------|
| **Persistencia de datos** | Las conversaciones con sistemas de IA son típicamente almacenadas por los proveedores |
| **Uso para entrenamiento** | Tus conversaciones pueden ser utilizadas para entrenar versiones futuras |
| **Falta de contexto de confidencialidad** | Los modelos de IA no tienen concepto real de "confidencial" o "privado" |
| **Vulnerabilidad a prompt injection** | Atacantes pueden diseñar prompts maliciosos que manipulan el comportamiento de la IA |
| **Riesgos de fuga de información** | Información sensible puede aparecer inadvertidamente en respuestas a otros usuarios |
| **Jurisdicción legal ambigua** | Los datos pueden estar almacenados en servidores de múltiples países |

### Mejores Prácticas de Seguridad y Privacidad

**Para uso individual:**
1. **Regla de oro:** Nunca compartas con la IA nada que no compartirías en una red social pública
2. **Anonimización:** Remueve toda información identificable
3. **Verificación de configuración:** Revisa configuraciones de privacidad
4. **Uso de instancias privadas:** Para trabajo profesional sensible, considera servicios empresariales

**Para organizaciones:**
1. **Políticas claras:** Establecer políticas de uso aceptable de IA
2. **Capacitación regular:** Educar a empleados sobre riesgos de privacidad continuamente
3. **Soluciones empresariales:** Implementar deployments privados de IA
4. **Respuesta a incidentes:** Establecer protocolos claros ante incidentes de datos

### Marco Legal en Perú

| Ley | Descripción |
|-----|-------------|
| **Ley N.° 29733** | Ley de Protección de Datos Personales |
| **Ley N.° 31814** | Ley que Promueve el Uso de la Inteligencia Artificial |
| **Código de Protección y Defensa del Consumidor** | Protección al consumidor |

---

## Conclusiones

1. Los sistemas de IA pueden generar alucinaciones, contenido falso presentado con confianza, especialmente en temas técnicos o recientes.
2. Todo sistema de IA contiene sesgos derivados de sus datos de entrenamiento, que frecuentemente subrepresentan perspectivas latinoamericanas.
3. El uso irreflexivo de IA puede erosionar gradualmente habilidades cognitivas fundamentales.
4. Cada interacción con sistemas de IA implica compartir información que puede ser almacenada y procesada de maneras no previstas.

**Frase clave:**
> "La tecnología es un sirviente útil, pero un amo peligroso." — Christian Lous Lange, Nobel de la Paz

---

## Glosario

| Término | Definición | Ejemplo |
|---------|------------|---------|
| **Alucinación** | Información falsa presentada con confianza por la IA | Estadísticas inventadas atribuidas a fuentes oficiales |
| **Sesgo de representación** | Grupos subrepresentados en datos de entrenamiento | Modelos entrenados con contenido predominantemente occidental |
| **Dependencia tecnológica** | Erosión de capacidades humanas por exceso de delegación en IA | Redactor que pierde capacidad creativa por uso constante de IA |
| **Prompt injection** | Ataque que manipula el comportamiento de la IA | Prompts maliciosos que hacen que la IA ignore restricciones |
| **Optimismo crítico** | Aprovechar la IA comprendiendo sus límites | Usar ChatGPT siempre verificando la información |
| **Marco legal en Perú** | Ley 29733 (datos personales) y Ley 31814 (promoción de IA) | Regulación del uso de IA en el país |

---

## Preguntas de Reflexión

1. **Pregunta aplicada:** Si tuvieras que usar IA para investigar un tema de tu tesis o proyecto, ¿cómo mitigarías el riesgo de alucinaciones?

2. **Pregunta comparativa:** ¿Cuál de los riesgos de dependencia tecnológica crees que es más peligroso para los profesionales peruanos? ¿Por qué?

3. **Pregunta crítica:** ¿Cómo平衡ar los beneficios de la IA con los riesgos de privacidad en un país como Perú donde la regulación es incipiente?

---

## Fuentes

| # | Fuente | Tipo | URL |
|---|--------|------|-----|
| 1 | Akhtar, M. A. K., et al. (2024). Towards Ethical and Socially Responsible Explainable AI | Libro | https://doi.org/10.1007/978-3-031-66489-2 |
| 2 | Bai, X., et al. (2025). Explicitly unbiased large language models still form biased associations | Artículo | https://doi.org/10.1073/pnas.2416228122 |
| 3 | Eubanks, V. (2018). *Automating Inequality* | Libro | https://www.abebooks.com/9781250074317/Automating-Inequality-High-Tech-Tools-Profile-1250074312/plp |
| 4 | Nemko Digital. (2025). AI regulation in Peru | Artículo | https://digital.nemko.com/regulations/ai-regulation-in-peru |

---

*Última verificación: 01/09/2026.*