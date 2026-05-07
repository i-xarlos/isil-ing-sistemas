# Minería de Datos: Conceptos, Aplicaciones y Ética (Clase 5)

**Curso:** Análisis Estadístico y Data Mining (ISIL, 2026-1)  
**Docente:** [Pendiente]  
**Fecha:** [Pendiente]

---

## Introducción

La **minería de datos (data mining)** es el proceso analítico de explorar grandes volúmenes de información para descubrir patrones significativos, relaciones ocultas y tendencias útiles que pueden convertirse en conocimiento accionable.

**Regla clave:** La minería de datos no solo describe lo que ocurrió, sino que explica por qué sucedió e incluso predice lo que podría acontecer.

---

## 1. Definición y Objetivos

### Qué es la minería de datos

Es un proceso que integra:
- **Estadística** — análisis descriptivo e inferencial
- **Aprendizaje automático** — algoritmos que aprenden de datos
- **Modelado predictivo** — construcción de modelos que generalizan
- **Sistemas de bases de datos** — gestión de información a escala

### Por qué importa

Según Han, Pei y Kamber (2022), la minería de datos forma parte esencial del proceso KDD (Knowledge Discovery in Databases), constituyendo su etapa más analítica.

**Valor empresarial:**
- Mejora decisiones basadas en evidencia
- Optimiza procesos operativos
- Comprende mejor el comportamiento de clientes
- Reduce incertidumbre operativa

### Rol estratégico

La minería de datos es crítica en industrias con grandes volúmenes de datos:

| Sector | Aplicación | Beneficio |
|---|---|---|
| **E-commerce** | Recomendaciones de productos | Incrementa ventas cruzadas |
| **Banca** | Prevención de fraude | Reduce riesgos financieros |
| **Salud** | Diagnóstico predictivo | Detección temprana de enfermedades |
| **Redes sociales** | Tendencias emergentes | Estrategia de contenido informada |
| **Telecomunicaciones** | Retención de clientes | Reduce churn (abandono) |

### Fases de la minería de datos

```
1. Definir el problema
   ↓
2. Identificar datos necesarios
   ↓
3. Preparar y preprocesar
   ↓
4. Modelar datos
   ↓
5. Entrenar y probar
   ↓
6. Conocimiento
```

### Objetivos principales

| Objetivo | Descripción | Ejemplo |
|---|---|---|
| **Identificación de patrones** | Detectar comportamientos repetitivos | Clientes que compran juntos productos específicos |
| **Segmentación de grupos** | Agrupar por características comunes | Clientes "premium", "ocasionales", "riesgosos" |
| **Detección de anomalías** | Encontrar eventos inusuales | Fraude, fallas técnicas, casos médicos críticos |
| **Predicción** | Estimar valores futuros | Ventas, demanda, riesgo crediticio |

### Caso práctico

Una cadena de supermercados registra millones de transacciones mensuales. Usando minería de datos:

1. **Descubrimiento:** Los clientes que compran pañales también adquieren toallitas húmedas y snacks
2. **Técnica:** Reglas de asociación (Apriori)
3. **Acción:** Reorganizar productos, diseñar promociones complementarias
4. **Resultado:** Incremento en ventas cruzadas

---

## 2. Aplicaciones por Sector

### Comercio

#### 2.1 Análisis de comportamiento del cliente
**Qué:** Identifica patrones de compra, frecuencia, ticket promedio y preferencias

**Cómo:** Análisis de transacciones históricas

**Importancia:** Personalizar ofertas, mejorar experiencia del cliente

#### 2.2 Reglas de asociación (Market Basket Analysis)
**Qué:** Detecta productos que se compran juntos ("quien compra X también compra Y")

**Algoritmo:** Apriori

**Aplicación:** Diseño de promociones, reubicación de productos, combos

**Ejemplo:**
- 72% de clientes que compran cereales también compran leche
- → Promocionar juntos, ubicar juntos

#### 2.3 Predicción de demanda y ventas
**Qué:** Modelos predictivos estiman productos con mayor venta

**Variables consideradas:** Estacionalidad, tendencias, promociones

**Impacto:**
- Evita quiebres de stock
- Reduce sobreinventarios
- Optimiza logística

#### 2.4 Segmentación de clientes (Clustering)
**Qué:** Agrupa clientes por gasto, frecuencia, intereses, ubicación

**Ejemplo de clusters:**
- **Cluster 1:** "Alta frecuencia" — compran múltiples veces/mes
- **Cluster 2:** "Por campaña" — solo en promociones
- **Cluster 3:** "Premium" — alto gasto, bajo volumen

**Estrategia:** Ofertas personalizadas por cluster

---

### Medicina y Salud Pública

#### 2.5 Predicción de enfermedades
**Qué:** Modelos predictivos analizan síntomas, exámenes, antecedentes

**Beneficio:** Identificar riesgos antes de complicaciones

**Aplicación:** Prevención, diagnósticos tempranos

#### 2.6 Análisis de historias clínicas
**Qué:** Extrae patrones en registros clínicos electrónicos (EHR)

**Objetivo:** Detectar factores de riesgo comunes entre pacientes

**Ejemplo:** Relación entre hábitos, enfermedades crónicas y edad

#### 2.7 Detección de anomalías médicas
**Qué:** Encuentra valores fuera de lo común en exámenes o imágenes

**Utilidad:** Detección temprana de enfermedades raras o condiciones críticas

#### 2.8 Gestión hospitalaria
**Qué:** Analiza tiempos de espera, ocupación de camas, emergencias

**Beneficio:** Hospitales más eficientes, mejor atención

**Caso práctico:**
- Un hospital analiza 200,000 historias clínicas
- Descubre: pacientes mayores con ciertos exámenes = alta probabilidad de insuficiencia respiratoria
- Acción: Sistema de alertas automático para personal especializado

---

### Redes Sociales

#### 2.9 Análisis de sentimientos
**Qué:** Evalúa si comentarios/publicaciones son positivos, negativos o neutros

**Técnica:** Minería de texto + modelos de lenguaje

**Utilidad:**
- Monitorear reputación
- Medir satisfacción
- Gestionar crisis

#### 2.10 Detección de tendencias y temas relevantes
**Qué:** Identifica temas que se vuelven virales o crecientes

**Basado en:** Hashtags, frecuencia de publicaciones, usuarios influyentes

**Aplicación:** Crear contenido alineado a tendencias

#### 2.11 Recomendación de contenido
**Qué:** Sistemas (TikTok, Instagram) muestran contenido relevante

**Análisis:** Interacciones, tiempos de visualización, preferencias

**Beneficio:** Aumenta permanencia y personalización

#### 2.12 Segmentación de audiencias
**Qué:** Agrupa usuarios por intereses, hábitos, ubicación, consumo digital

**Uso:** Campañas publicitarias dirigidas

**Impacto:** Mayor rentabilidad en marketing digital

**Caso práctico:**
- Una empresa analiza 50,000 comentarios sobre su servicio
- Análisis de sentimientos: críticas negativas = problemas de tiempo de entrega
- Acción: Ajusta logística para mejorar tiempos
- Resultado: Reducción de quejas en semanas posteriores

---

## 3. Tipos de Minería de Datos

### 3.1 Clasificación

**Definición:** Asignar elementos a categorías previamente definidas usando modelos entrenados.

**Característica:** Proceso supervisado (aprende de ejemplos etiquetados)

**Algoritmos:**
- Árboles de decisión
- Redes neuronales
- Máquinas de soporte vectorial (SVM)
- k-Nearest Neighbors (k-NN)

**Aplicaciones:**
- Aprobación de créditos en banca
- Detección de fraude en transacciones
- Clasificación de clientes por riesgo
- Diagnóstico de enfermedades

**Ejemplo práctico:**
Un banco utiliza clasificación para determinar si un solicitante de tarjeta es:
- **"Riesgo alto"** → Denegar o requiere garantía adicional
- **"Riesgo bajo"** → Aprobar

El modelo analiza: ingresos, historial crediticio, deudas, comportamiento financiero previo

---

### 3.2 Clustering (Agrupamiento)

**Definición:** Agrupa elementos automáticamente según similitud, sin categorías predefinidas.

**Característica:** Proceso no supervisado (descubre estructuras ocultas)

**Algoritmos:**
- k-Means
- DBSCAN
- Agrupamiento jerárquico

**Aplicaciones:**
- Segmentación de clientes en marketing
- Agrupamiento de pacientes por síntomas o evolución
- Identificación de patrones en redes sociales
- Detección de regiones geográficas con problemas comunes

**Ejemplo práctico:**
Una empresa de moda agrupa clientes en 3 clusters:

| Cluster | Comportamiento | Estrategia |
|---|---|---|
| **Compradores frecuentes** | Compran múltiples veces/mes | Descuentos por lealtad |
| **Compradores por campaña** | Solo en promociones | Alertas de ofertas especiales |
| **Compradores ocasionales** | Raramente activos | Reenganche, nostalgia |

---

### 3.3 Asociación

**Definición:** Identifica relaciones o reglas que muestran cómo ciertos eventos/productos están vinculados.

**Patrón:** "Si ocurre A, es probable que ocurra B"

**Algoritmo clave:** Apriori (busca conjuntos frecuentes de ítems)

**Aplicaciones:**
- Market basket analysis (análisis de canastas)
- Diseño de promociones y combos
- Análisis de secuencias en navegación web
- Identificación de relaciones entre síntomas y medicamentos

**Métricas clave:**
- **Soporte:** ¿Con qué frecuencia aparecen juntos A y B?
- **Confianza:** Si ocurre A, ¿qué probabilidad hay de que ocurra B?
- **Lift:** ¿Qué tan más probable es que B ocurra dado A?

**Ejemplo práctico:**
Un supermercado descubre:
- **Regla:** "Si cliente compra cereales → compra leche"
- **Soporte:** 35% de todas las transacciones
- **Confianza:** 72% de quienes compran cereales compran leche
- **Acción:** Promoción cruzada, ubicación estratégica

---

### 3.4 Predicción

**Definición:** Estima valores futuros o desconocidos a partir de patrones históricos.

**Diferencia con clasificación:** El resultado es un valor numérico, no una categoría

**Métodos:** Regresión, series temporales, machine learning avanzado

**Aplicaciones:**
- Pronóstico de ventas y demanda
- Predicción de precios en mercados financieros
- Estimación de probabilidad de impago
- Predicción de flujo de pacientes en hospitales

**Ejemplo práctico:**
Una empresa de transporte utiliza predicción para estimar demanda semanal de envíos:

**Variables consideradas:**
- Estacionalidad (compras por fechas especiales)
- Feriados y días festivos
- Condiciones climáticas
- Ventas históricas

**Resultado:** Optimizar asignación de vehículos y personal

---

## 4. Ética en Minería de Datos

### 4.1 Privacidad de datos

**Definición:** Protección de información personal de individuos

**Implica:**
- Garantizar que datos no se usen sin autorización
- Mantener datos en condiciones de seguridad
- Aplicar anonimización, encriptación, control de accesos

**Importancia:**
- Evita uso indebido de datos personales
- Protege información delicada (salud, finanzas, hábitos)
- Alinea con normativas: Ley Peruana de Protección de Datos, GDPR (Europa), CCPA (USA)
- Genera confianza en clientes y usuarios

---

### 4.2 Uso responsable de datos

**Definición:** Emplear datos de manera transparente, ética y alineada con objetivos legítimos

**Supone:**
- Evitar decisiones automatizadas que perjudiquen a personas/grupos
- Garantizar que modelos no reproduzcan sesgos o discriminación
- Transparencia en recopilación y uso

### Principios clave del uso responsable

| Principio | Descripción |
|---|---|
| **Transparencia** | Informar qué datos se recopilan y con qué finalidad |
| **Consentimiento** | Obtener autorización para procesar datos sensibles |
| **Minimización** | Recolectar solo datos estrictamente necesarios |
| **Imparcialidad algorítmica** | Evitar que modelos generen decisiones sesgadas |
| **Responsabilidad corporativa** | La institución es responsable de resultados del análisis |

### Buenas prácticas

✅ Implementar protocolos de ciberseguridad
✅ Aplicar técnicas de anonimización o pseudonimización
✅ Realizar auditorías de modelos para evitar sesgos
✅ Documentar procesos de recopilación y análisis
✅ Capacitar al personal en ética y protección de datos

---

### 4.3 Riesgos éticos

| Riesgo | Descripción | Impacto |
|---|---|---|
| **Discriminación algorítmica** | Modelos que clasifican de manera injusta | Exclusión sistemática de grupos |
| **Vigilancia excesiva** | Recopilación masiva sin consentimiento | Invasión de privacidad |
| **Filtración de datos** | Acceso no autorizado por fallas de seguridad | Exposición de información sensible |
| **Uso secundario no consentido** | Datos para objetivo A, usados para objetivo B | Violación de confianza |

**Ejemplo:** Una app de salud recopila datos para monitorear actividad física, pero una aseguradora intenta usarla para segmentar pólizas. Esto es uso no autorizado y violación ética.

---

### 4.4 Caso: Cambridge Analytica - Facebook (2018)

**El escándalo que cambió la privacidad global**

#### Qué sucedió
- Cambridge Analytica obtuvo acceso a datos de **87 millones de usuarios** de Facebook sin consentimiento explícito
- Una app llamada "This Is Your Digital Life" explotó brecha en políticas de Facebook
- Recopilaba datos no solo del usuario, sino de **todos sus contactos**

#### Cómo se usó
- Cambridge Analytica construyó **perfiles psicológicos** detallados
- Identificó rasgos de personalidad, preferencias políticas, hábitos de consumo
- Diseñó campañas de publicidad **ultradirigida y manipuladora**
- Influenció votantes en **elecciones 2016 (USA)** y **Brexit (UK)**

#### Consecuencias
- **Multa:** Facebook pagó $5,000 millones de dólares a la FTC
- **Audiencia:** Mark Zuckerberg tuvo que declarar ante Congreso de USA
- **Confianza:** Ola global de desconfianza hacia plataformas digitales
- **Regulación:** Aceleró creación de leyes más estrictas (GDPR reforzado)

#### Lecciones éticas clave

| Lección | Implicación |
|---|---|
| **Consentimiento engañoso** | Usuarios no informados correctamente sobre uso real de datos |
| **Uso indebido de información sensible** | Datos psicológicos usados para manipulación política |
| **Falta de transparencia** | Ni Facebook ni Cambridge Analytica explicaron recopilación y uso |
| **Impacto social masivo** | Ética de datos afecta a sociedades completas |
| **Necesidad de regulación** | Plataformas tecnológicas requieren controles estrictos |

---

## 5. Desafíos de la Minería de Datos

### 5.1 Escalabilidad: Volumen y Velocidad

**Definición:** Capacidad de un sistema/algoritmo para procesar cantidades crecientes sin perder velocidad ni precisión

**Contexto:**
Empresas almacenan información de múltiples fuentes:
- Transacciones
- Sensores IoT
- Redes sociales
- Sistemas de ventas
- E-commerce
- Dispositivos móviles

**Desafío:** Cuando datos superan capacidad de sistemas tradicionales

**Solución:** Infraestructura especializada
- **Hadoop:** Almacenamiento y procesamiento distribuido
- **Apache Spark:** Framework de procesamiento en paralelo (100x más rápido que Hadoop)
- **Bases de datos distribuidas:** NoSQL, data lakes

**Impacto crítico:**
- Banca, telecomunicaciones, marketing digital procesan **miles de operaciones/minuto**
- Un algoritmo no escalable puede tardar horas en procesar lo que llega en segundos
- La escalabilidad es factor estratégico, no solo técnico

---

### 5.2 Calidad de datos: Veracidad y Consistencia

**Definición:** Nivel en que información es completa, correcta, consistente, actualizada y relevante

**Regla de oro (Pyle, 2020):** 
> "80% del tiempo de un analista se dedica a limpiar y preparar datos porque ningún algoritmo puede corregir un mal conjunto de datos"

**Problemas principales:**

| Problema | Descripción | Ejemplo |
|---|---|---|
| **Valores faltantes** | Información incompleta | Ingresos no declarados |
| **Errores de registro** | Datos mal ingresados | Fechas incorrectas, números fuera de rango |
| **Duplicados** | Mismo elemento registrado múltiples veces | Cliente duplicado en base de datos |
| **Inconsistencia** | Mismo campo con formatos diferentes | Teléfono: "555-1234" vs "5551234" |
| **Sesgo en datos** | Información que induce conclusiones erróneas | Datos faltantes sistemáticos |

**Impacto en ética:**
La calidad afecta directamente:
- **Confiabilidad ética:** Modelos defectuosos pueden producir decisiones injustas
- **Confiabilidad estadística:** Predicciones incorrectas
- **Sesgos discriminatorios:** Modelos que discriminan sistemáticamente
- **Decisiones erróneas:** Impacto en negocio y personas

---

## 6. Herramientas y Frameworks

### 6.1 Lenguajes de programación

| Herramienta | Fortaleza | Caso de uso |
|---|---|---|
| **R** | Análisis estadístico, visualización | Investigación, educación, marketing, finanzas, salud |
| **Python** | Versatilidad, simplicidad, librerías especializadas | Ciencia de datos, ML, análisis general |

**Librerías Python principales:**
- `pandas` — manipulación de datos
- `scikit-learn` — machine learning
- `seaborn` / `matplotlib` — visualización
- `TensorFlow` — deep learning

---

### 6.2 Frameworks distribuidos

| Framework | Características | Caso de uso |
|---|---|---|
| **Hadoop** | Almacenamiento y procesamiento distribuido | Datos históricos masivos |
| **Apache Spark** | 100x más rápido que Hadoop en memoria | Processing en paralelo, ML, streaming |

---

### 6.3 Plataformas gráficas (sin programación)

| Plataforma | Características |
|---|---|
| **RapidMiner** | Interfaz "arrastrar y soltar", modelos pre-construidos (clasificación, clustering, asociación) |
| **KNIME** | Integra limpieza, estadística, ML; flujos automatizados, exportables |

---

### 6.4 Herramientas de visualización

| Herramienta | Características | Caso de uso |
|---|---|---|
| **Tableau** | Gráficos interactivos, exploración intuitiva, maneja grandes volúmenes | BI avanzada |
| **Power BI** | Desarrollado por Microsoft, se integra con Excel/Azure/Teams, reportes automatizados | Inteligencia empresarial |

---

### 6.5 Importancia profesional

Estas herramientas son críticas en:

**Administración:** Monitorear procesos, costos, desempeño
**Marketing:** Segmentación, análisis de campañas, predicción de ventas
**Finanzas:** Detección de fraudes, valoración de riesgos, optimización de inversiones
**Negocios internacionales:** Análisis de mercados globales, tendencias
**Ciencia de datos:** Base operativa para modelar y experimentar

---

## Conclusiones

1. **La minería de datos transforma datos en decisiones estratégicas**
   - Más allá de describir qué pasó, explica por qué e identifica oportunidades futuras

2. **Aplicaciones reales impactan en múltiples sectores**
   - Comercio, medicina, redes sociales demuestran ROI tangible
   - Incrementa competitividad y eficiencia institucional

3. **Los cuatro tipos principales abordan problemas distintos**
   - Clasificación: categorizar
   - Clustering: agrupar
   - Asociación: relacionar
   - Predicción: estimar futuro

4. **La ética no es opcional, es fundacional**
   - Cambridge Analytica ejemplifica riesgos de negligencia
   - Privacidad, transparencia y responsabilidad determinan sostenibilidad

5. **Escalabilidad y calidad son desafíos persistentes**
   - El 80% del esfuerzo va en preparación de datos
   - Infraestructura especializada es necesaria para volúmenes reales

6. **El dominio de herramientas es habilidad crítica en el mercado laboral**
   - Python, R, Spark, Tableau son demandados
   - Combinación de habilidades: análisis + programación + ética

---

## Bibliografía

Fernández-Avilés, G., & Montero, J. M. (2024). *Fundamentos de ciencia de datos con R*. McGraw-Hill Interamericana de España.

García Herrero, J., Berlanga de Jesús, A., Guisado, M. A., & Padilla, W. R. (2020). *Ciencia de datos, minería de datos y big data: técnicas analíticas y aprendizaje estadístico. Un enfoque práctico*. Alfaomega / Altaria Editorial.

Han, J., Pei, J., & Kamber, M. (2022). *Data mining: Concepts and techniques* (4th ed.). Morgan Kaufmann.

Larose, D. T., & Larose, C. D. (2021). *Data mining and predictive analytics* (2nd ed.). John Wiley & Sons.

Pyle, D. (2020). *Data preparation for machine learning*. O'Reilly Media.
