# Modelo IA: Integracion de Modelos en Aplicaciones y Diseno de Interfaces (Clase 12)

**Curso:** Diseno de Soluciones con IA (ISIL, 2026-1)  
**Docente:** Omar David Visitacion Romero  
**Fecha:** 24/06/2026

---

## Introduccion

**Gancho humano:** Cuando usas un chatbot en una pagina web o un filtros de Instagram que reconoce tu cara, estas usando un modelo de IA integrado en una aplicacion. Pero detras de esa experencia simple hay una decision tecnica critica: donde corre el modelo, como se conecta con el usuario, y como se disena la interfaz para que sea util, no solo bonita.

**Pregunta guia:** Como llevamos un modelo de IA evaluado hacia una aplicacion funcional que el usuario pueda usar?

**Objetivos de aprendizaje:**
- Entender las estrategias de integracion de modelos IA en apps web y moviles
- Conocer el patron de integracion via API y sus componentes
- Disenar interfaces con IA que prioricen usabilidad sobre estetica
- Evaluar soluciones IA reales y prototipar un MVP funcional

---

## 1. Integracion de Modelos IA en Aplicaciones Web y Moviles

### El panorama actual

**Analogia:** Antes, la IA era un modulo separado (como un programa independiente). Ahora, la IA esta embebida en la aplicacion misma, como el GPS en tu telefono: siempre ahi, invisible, pero fundamental.

La tendencia actual es integrar IA directamente en el flujo principal de la aplicacion, no como herramienta aparte.

| Componente | Como impacta la IA |
|------------|-------------------|
| **Experiencia de usuario** | Personalizacion automatica, recomendaciones |
| **Interfaz (UI)** | Chatbots integrados, generacion de contenido |
| **Decisiones** | Analisis en tiempo real, scoring automatico |

### Estrategias de despliegue

```
┌─────────────────────────────────────────────────────────┐
│            ESTRATEGIAS DE DESPLIEGUE IA                 │
├─────────────────────────────────────────────────────────┤
│                                                         │
│  BACKEND (Servidor)          FRONTEND (Browser)         │
│  ─────────────────          ──────────────────          │
│  El modelo corre en         El modelo corre en el       │
│  cloud/servidor.            cliente (navegador) con     │
│  La app llama a             TensorFlow.js.              │
│  endpoints HTTP.            Datos no salen del          │
│                             dispositivo.                │
│                                                         │
│  Ideal para:                 Ideal para:                 │
│  - Modelos grandes           - Privacidad critica        │
│  - Inferencia masiva         - Tiempo real               │
│  - Complejidad alta          - Modelos pequenos          │
│                                                         │
└─────────────────────────────────────────────────────────┘
```

### Por que usar Frontend en Deep Learning?

| Ventaja | Explicacion | Ejemplo |
|---------|-------------|---------|
| **Privacidad** | Los datos no salen del dispositivo | App de salud que procesa datos medicos localmente |
| **Baja latencia** | Inferencia local sin ida y vuelta al servidor | Filtros de camara en tiempo real |
| **Costo/escala** | Reduce dependencia de GPU en la nube | Miles de usuarios sin escalar servidores |

### Riesgos del Frontend

| Riesgo | Problema |
|--------|----------|
| **Tamano del modelo** | El entorno cliente impone restricciones de memoria y velocidad |
| **Despliegue complejo** | Conversion de modelos, pruebas en multiples dispositivos |
| **Compatibilidad** | WebGL/WebGPU, consumo energetico, dispositivos de gama baja |

---

## 2. Integracion via API: El Patron Estandar

### Como funciona

```
┌──────────┐      HTTP/REST      ┌──────────┐      API      ┌──────────┐
│ USUARIO  │ ──────────────────> │ BACKEND  │ ────────────> │ MODELO   │
│ (App)    │ <────────────────── │ (Servidor│ <──────────── │ IA       │
└──────────┘    Respuesta JSON   └──────────┘   Respuesta   └──────────┘
```

### Stack tecnologico comun

| Capa | Tecnologias | Funcion |
|------|-------------|---------|
| **Backend** | Laravel, PHP, Node.js | Estructura MVC, logica de negocio |
| **Frontend** | Bootstrap, Vue.js, JavaScript | Interfaz responsiva e interactiva |
| **IA** | API externa (ChatGPT, DALL-E) | Inferencia y generacion |
| **Voz** | Web Speech API | Comandos de voz, interaccion multimodal |
| **Datos** | SQL | Almacenamiento relacional |

### Caso real: iADAN

Un portal academico con chatbot integrado:

```
┌─────────────────────────────────────────────────────┐
│                   iADAN                             │
├─────────────────────────────────────────────────────┤
│  Entrada: Texto o voz del usuario                   │
│     ↓                                               │
│  Procesamiento NLP: Descomposicion sintactica       │
│     ↓                                               │
│  Consulta a ChatGPT: Generacion contextualizada     │
│     ↓                                               │
│  Salida: Respuesta adaptada al perfil del usuario   │
└─────────────────────────────────────────────────────┘
```

**Componentes de IA:**
- **ChatGPT:** Consultas academicas, tramites, navegacion
- **DALL-E:** Recursos visuales educativos, ilustraciones

---

## 3. Seguridad, Privacidad y Control

**Analogia:** Integrar IA no es solo "conectar una API". Es como abrir una tienda: necesitas reglas de acceso, registro de ventas, politica de devoluciones y auditoria.

### Politicas de gobernanza obligatorias

| Politica | Que controla |
|----------|-------------|
| **Periodos de retencion** | Cuanto tiempo se guardan los datos |
| **Control de accesos** | Quien puede ver que informacion |
| **Auditoria** | Registro de actividades y decisiones |
| **Limites del bot** | Que puede y que no puede hacer |

### Medidas formales de control

- Repositorio centralizado para gestion de codigo y versiones
- Almacenamiento seguro del historial de interacciones
- Cumplimiento de normativas de proteccion de datos personales

---

## 4. Diseno de una Interfaz con IA

### Que significa "disenar UI con IA"?

La IA puede hacer dos cosas distintas en el diseno:

| Enfoque | Que hace | Ejemplo |
|---------|----------|---------|
| **Generar interfaces** | Crea wireframes, prototipos, codigo HTML/CSS/JS | Herramientas que generan UI desde texto |
| **Evaluar interfaces** | Analiza consistencia, accesibilidad, usabilidad | Sistemas que puntuan la calidad del diseno |

### El problema: estetica vs. usabilidad

**Error comun:** Concentrarse solo en que la interfaz se vea bonita y olvidar si funciona.

Investigacion sobre LUIM (Large UI Models) muestra que muchas herramientas generan interfaces visualmente atractivas pero no garantizan usabilidad.

### Atributos de usabilidad que la IA debe "aprender"

| Atributo | Definicion | Por que importa |
|----------|------------|-----------------|
| **Eficiencia** | Rapidez para completar tareas | El usuario no debe pensar donde hacer click |
| **Learnability** | Facilidad de aprendizaje inicial | Primera experiencia sin friccion |
| **Efectividad** | Logro de objetivos sin errores | La interfaz no debe confundir |
| **Satisfaccion** | Percepcion durante la interaccion | El usuario quiere volver a usarla |
| **Memorabilidad** | Retomar uso sin reaprendizaje | Despues de un mes, sigue siendo intuitiva |

### Evaluacion asistida: Score y nivel de confianza

Una UI con IA puede incluir un panel tipo "QA de diseno":

```
┌─────────────────────────────────────────────┐
│         PANEL DE EVALUACION UI              │
├─────────────────────────────────────────────┤
│  Score global:        78/100                │
│  Nivel de confianza:  85%                   │
│                                             │
│  Riesgos detectados:                        │
│  - Contraste bajo en texto secundario       │
│  - Jerarquia debil en menus                 │
│  - Inconsistencia de componentes            │
└─────────────────────────────────────────────┘
```

### Patron de trabajo recomendado

```
Wireframe
  ↓
UI alta fidelidad
  ↓
Evaluacion automatica (score + confianza)
  ↓
Test con usuarios
  ↓
Iterar y documentar cambios
```

---

## 5. Ejemplos de Soluciones IA

### Ejemplo 1: iADAN — Portal Academico con Chatbot

| Aspecto | Detalle |
|---------|---------|
| **Objetivo** | Mejorar interaccion en instituto tecnologico |
| **Stack** | Laravel, Bootstrap, Vue.js, SQL |
| **IA integrada** | ChatGPT (NLP) + DALL-E (imagenes) + SpeechRecognition (voz) |
| **Flujo** | Entrada texto/voz → Procesamiento NLP → Consulta ChatGPT → Respuesta contextualizada |

### Ejemplo 2: Polidata — Evaluacion Automatica de Diseno Movil

| Aspecto | Detalle |
|---------|---------|
| **Problema** | IA generativa crea pantallas bonitas pero sin garantizar usabilidad |
| **Solucion** | Modelo multiclase de deep learning entrenado con criterios de Material Design |
| **Dataset** | Aplicaciones Android evaluadas en: tipografia, colores, proporciones, elevaciones, diagramacion |
| **Salida** | Score de calidad + nivel de confianza por pantalla |

### Ejemplo 3: Front-end Deep Learning — TensorFlow.js

| Aspecto | Detalle |
|---------|---------|
| **Tecnologia** | TensorFlow.js ejecuta modelos directamente en el navegador |
| **Ventajas** | Privacidad (datos en cliente), tiempo real, sin servidor |
| **Aplicaciones** | Playgrounds educativos, deteccion de pose, arte generativo, reconocimiento facial, healthcare |

### Ejemplo 4: TripSense — Recomendaciones Geolocalizadas + LLM

| Aspecto | Detalle |
|---------|---------|
| **Concepto** | Combina geolocalizacion con IA para itinerarios personalizados |
| **Stack** | React, Node.js/Express, MongoDB, Google Maps, Gemini |
| **Funciones** | Buscar POI, organizar por dias, recomendaciones con LLM |
| **Arquitectura** | REST API + prompts estructurados = escalabilidad |

### Comparacion de los 4 ejemplos

| Solucion | Enfoque clave | Arquitectura |
|----------|---------------|--------------|
| **iADAN** | Control institucional + multimodal (voz, texto, imagen) | Capas + API |
| **Polidata** | Evaluacion cuantitativa + score de confianza | Deep learning + dataset |
| **Front-end DL** | Experiencia interactiva + privacidad en cliente | TensorFlow.js en navegador |
| **TripSense** | Prompts estructurados + APIs externas | REST + LLM modular |

---

## 6. Prototipo: De la Idea al MVP

### Que debe tener el prototipo

```
┌─────────────────────────────────────────────────────────┐
│                  PROTOTIPO MVP                          │
├─────────────────────────────────────────────────────────┤
│                                                         │
│  1. APP WEB/MOVIL con interfaz funcional                │
│     ↓                                                   │
│  2. LLM integrado por API                               │
│     ↓                                                   │
│  3. Genera contenido (texto/plan/itinerario)            │
│     ↓                                                   │
│  4. Geolocalizacion opcional                            │
│     ↓                                                   │
│  5. Evaluacion UI con score basico                      │
│     ↓                                                   │
│  6. (Opcional) Modelo pequeno en browser                │
│                                                         │
└─────────────────────────────────────────────────────────┘
```

### Flujos principales del MVP

| Flujo | Descripcion |
|-------|-------------|
| **Planificador** | Genera contenido estructurado (dia 1/2/3, actividades, tiempos) |
| **Asistente** | Responde consultas con NLP pipeline contextualizado |
| **Control de calidad** | Evaluacion UI con checklist y score |

### Arquitectura sugerida

| Variante | Descripcion | Ideal para |
|----------|-------------|------------|
| **A** | Frontend web + Backend REST + LLM por API + BD |Prototipos rapidos, similar a iADAN/TripSense |
| **B** | Igual que A + TensorFlow.js en cliente | Una tarea puntual con modelo en browser |

### Plantilla de prompts estructurados

Basada en TripSense:

```
1. Rol del asistente + limites
2. Input del usuario
3. Reglas: no inventar datos, citar fuentes
4. Formato de salida esperado
```

### Pantallas minimas del prototipo

| Pantalla | Funcion |
|----------|---------|
| **Inicio/onboarding** | Bienvenida y configuracion inicial |
| **Formulario de preferencias** | Que quiere el usuario |
| **Vista mapa** | Geolocalizacion y rutas |
| **Resultado generado** | Itinerario o plan output |
| **Panel Evaluacion UI** | Score y nivel de confianza (referencia Polidata) |

---

## 7. Pruebas y Metricas

### UX / UI

| Metrica | Que mide |
|---------|----------|
| Eficiencia | Rapidez para completar tareas |
| Learnability | Facilidad de aprendizaje inicial |
| Efectividad | Logro de objetivos sin errores |
| Satisfaccion | Percepcion del usuario |
| Memorabilidad | Retomar uso sin reaprendizaje |

### Tecnica

| Metrica | Que mide |
|---------|----------|
| Latencia | Tiempo de respuesta en ms |
| Tasa de error | Fallos por cada 100 operaciones |
| Tiempo de tarea | Cuanto tarda el usuario en lograr su objetivo |
| Tasa de completitud | Porcentaje de acciones terminadas |
| Calidad del output | Coherencia, cobertura, personalizacion |

### Seguridad y control

| Metrica | Que mide |
|---------|----------|
| Trazabilidad | Registro de acciones y decisiones |
| Retencion | Cumplimiento de politicas de datos |
| Auditoria | Controles de acceso y repositorios seguros |

---

## 8. Errores Comunes a Evitar

| Error | Ejemplo real | Consecuencia |
|-------|--------------|--------------|
| Disenar solo estetica, sin usabilidad | Apps que se ven bonitas pero confunden | Usuarios abandonan la app en el primer uso |
| No definir limites del bot | Chatbot que responde temas fuera de su alcance | Informacion incorrecta, loss of trust |
| Ignorar privacidad | App que envia datos sensibles al servidor sin encriptar | Multas por incumplimiento GDPR/LOPD |
| No prototipar antes de implementar | Desarrollar 3 meses sin validar con usuarios | Producto final que nadie quiere usar |
| Usar modelo sin evaluar rendimiento | Modelo que tarda 5 segundos en responder | Experiencia de usuario degradada |

---

## 9. Tecnicas de Machine Learning: Cual se Usa y Por Que

**Gancho humano:** Netflix te recomienda una serie que nunca buscaste pero que te encanta. Detras de esa recomendacion hay una tecnica de ML especifica elegida por una razon concreta. No es magia: es seleccion de modelo.

### 9.1 ML Supervisado

El modelo aprende de datos etiquetados: cada ejemplo tiene una entrada y una salida conocida.

#### Regresion Lineal

**Que es:** Predice un numero continuo trazando una linea que mejor se ajuste a los datos.

**Analogia:** Como predecir el precio de una casa segun sus metros cuadrados: mas metros, mayor precio.

| Aspecto | Detalle |
|---------|---------|
| **Salida** | Numero continuo (precio, temperatura, ventas) |
| **Cuando usarla** | Relacion lineal entre variables, necesidad de interpretabilidad |
| **Ejemplo real** | Uber predice tarifas segun distancia, tiempo y demanda |

```
y = mx + b

y = prediccion
x = variable de entrada
m = pendiente (cuanto cambia y por cada cambio en x)
b = interseccion (valor base cuando x = 0)
```

#### Regresion Logistica

**Que es:** Clasifica: predice si algo pertenece a una categoria si o no.

**Analogia:** Como un examen medico con resultado positivo o negativo, no hay punto medio.

| Aspecto | Detalle |
|---------|---------|
| **Salida** | Probabilidad entre 0 y 1 (clasificacion binaria) |
| **Cuando usarla** | Resultados si/no, fraude/no fraude, spam/no spam |
| **Ejemplo real** | Bancos aprueban o rechazan creditos segun perfil |

```
Entrada (edad, ingreso, deuda)
  ↓
Calcula probabilidad (0 a 1)
  ↓
Umbral (tipicamente 0.5)
  ↓
Salida: SI (>0.5) o NO (<0.5)
```

#### Arboles de Decision

**Que es:** Toma decisiones como un flujo de preguntas si/no, dividiendo los datos en ramas.

**Analogia:** Como un juego de "20 preguntas": cada pregunta divide las opciones hasta llegar a la respuesta.

| Aspecto | Detalle |
|---------|---------|
| **Salida** | Clasificacion o regresion |
| **Cuando usarla** | Necesitas explicar POR QUE el modelo decidio asi |
| **Ventaja** | Caja blanca: completamente interpretable |

```
                    ¿Tiene fiebre?
                    /            \
                  SI              NO
                  /                \
        ¿Tiene tos?          ¿Tiene dolor muscular?
        /       \             /            \
      SI        NO          SI             NO
      /          \          /               \
  COVID      Gripe     Dengue          Resfriado
```

#### Random Forest (Bosque Aleatorio)

**Que es:** Combina muchos arboles de decision, cada uno entrenado con datos diferentes. La prediccion final es el voto de la mayoria.

**Analogia:** Como pedir opinion a 100 doctores en lugar de uno: el consensus suele ser mas confiable.

| Aspecto | Detalle |
|---------|---------|
| **Salida** | Clasificacion o regresion |
| **Cuando usarla** | Mas precision que un solo arbol sin perder interpretabilidad |
| **Ejemplo real** | Netflix clasifica generos de contenido |

#### Support Vector Machines (SVM)

**Que es:** Encuentra la linea que mejor separa las clases, maximizando la distancia entre ellas.

**Analogia:** Como poner la barrera mas ancha posible entre dos equipos: cuanto mas lejos este la barrera, menos confusion.

| Aspecto | Detalle |
|---------|---------|
| **Salida** | Clasificacion |
| **Cuando usarla** | Dimensiones altas, pocos datos de entrenamiento |
| **Limitacion** | Lento con muitos datos, dificil de interpretar |

#### K-Nearest Neighbors (KNN)

**Que es:** Para predecir, busca los K ejemplos mas parecidos y usa su valor promedio o mayoria.

**Analogia:** Como preguntarle a tus 3 amigos mas cercanos que harian en tu situacion.

| Aspecto | Detalle |
|---------|---------|
| **Salida** | Clasificacion o regresion |
| **Cuando usarla** | Datos simples, pocos features |
| **Limitacion** | Lento con muitos datos |

#### Naive Bayes

**Que es:** Usa el teorema de Bayes para calcular probabilidades, asumiendo que todas las variables son independientes.

**Analogia:** Como un detective que calcula culpabilidad basandose en cada pista por separado.

| Aspecto | Detalle |
|---------|---------|
| **Salida** | Probabilidad de pertenecer a cada clase |
| **Cuando usarla** | Clasificacion de texto, spam, sentiment analysis |
| **Ejemplo real** | Filtros de spam de Gmail |

#### Redes Neuronales Artificiales (ANN)

**Que es:** Inspiradas en el cerebro: capas de "neuronas" que procesan informacion y aprenden patrones complejos.

**Analogia:** Como una fabrica con multiples estaciones de trabajo: cada estacion procesa un poco y la cadena completa produce algo complejo.

| Aspecto | Detalle |
|---------|---------|
| **Salida** | Cualquier tipo (clasificacion, regresion) |
| **Cuando usarla** | Patrones complejos, imagenes/texto/voz |
| **Limitacion** | Requiere muchos datos, caja negra |

---

### 9.2 ML No Supervisado

El modelo busca patrones en datos SIN etiquetas. No hay respuesta correcta conocida.

#### K-Means Clustering

**Que es:** Agrupa datos en K grupos donde los elementos de cada grupo son mas parecidos entre si que con los de otros grupos.

**Analogia:** Como separar una caja de legos por colores sin que nadie te diga cuales son: simplemente juntas los que se parecen.

| Aspecto | Detalle |
|---------|---------|
| **Salida** | K grupos (clusters) |
| **Cuando usarla** | Segmentacion de clientes, agrupacion de productos |
| **Ejemplo real** | Spotify agrupa usuarios por patrones de escucha |

```
1. Elige K centroides aleatorios
   ↓
2. Asigna cada punto al centroide mas cercano
   ↓
3. Recalcula centroides como promedio de su grupo
   ↓
4. Repite hasta que no cambien las asignaciones
```

#### DBSCAN

**Que es:** Agrupa datos por densidad: encuentra zonas con muitos puntos juntos.

**Analogia:** Como encontrar manchas de pintura en un lienzo: donde hay mucho color junto, es un grupo.

| Aspecto | Detalle |
|---------|---------|
| **Salida** | Grupos de densidad + outliers |
| **Cuando usarla** | Grupos de forma irregular, datos con ruido |
| **Ventaja** | No necesitas definir K, detecta outliers automaticamente |

#### PCA (Analisis de Componentes Principales)

**Que es:** Reduce la cantidad de variables manteniendo la mayor informacion posible.

**Analogia:** Como resumir un libro de 500 paginas en 5 ideas clave: pierdes detalle pero conservas la esencia.

| Aspecto | Detalle |
|---------|---------|
| **Salida** | Variables reducidas (componentes) |
| **Cuando usarla** | Muchas variables correlacionadas, visualizacion |
| **Limitacion** | Las componentes son abstractas |

---

### 9.3 Aprendizaje por Refuerzo

El modelo aprende por prueba y error: recibe recompensas por buenas acciones y castigos por las malas.

#### Q-Learning

**Que es:** Un agente aprende una "tabla Q" que le dice que accion tomar en cada estado para maximizar la recompensa total.

**Analogia:** Como aprender a jugar un videojuego: al principio fallas mucho, pero despues de miles de intentos, aprendes que movimientos te dan mas puntos.

| Aspecto | Detalle |
|---------|---------|
| **Salida** | Politica de accion (que hacer en cada estado) |
| **Cuando usarla** | Decisiones secuenciales, entornos dinamicos |
| **Ejemplo real** | DeepMind AlphaGo, robots que aprenden a caminar |

---

### 9.4 Deep Learning: Redes Neuronales Profundas

#### CNN (Redes Convolucionales)

**Que es:** Especializadas en procesar imagenes: detectan bordes, patrones y objetos en capas.

**Analogia:** Como un artista que primero ve lineas, luego formas, luego caras.

| Aspecto | Detalle |
|---------|---------|
| **Salida** | Clasificacion de imagen, deteccion de objetos |
| **Cuando usarla** | Vision por computadora, filtros, autos autonomos |
| **Ejemplo real** | Filtros de Instagram, diagnostico medico por imagen |

```
Imagen de entrada (224x224x3)
  ↓
Capa Convolucional 1: Detecta bordes simples
  ↓
Capa Convolucional 2: Detecta patrones (ojos, nariz)
  ↓
Capa Convolucional 3: Detecta objetos (cara, edificio)
  ↓
Capa Fully Connected: Clasifica el objeto
  ↓
Salida: "Gato" (98%)
```

#### RNN / LSTM (Redes Recurrentes)

**Que es:** Procesan secuencias: texto, audio, series de tiempo. Tienen "memoria" de lo que paso antes.

**Analogia:** Como leer una novela: para entender el capitulo 10, necesitas recordar lo que paso en los capitulos anteriores.

| Aspecto | Detalle |
|---------|---------|
| **Salida** | Secuencia (texto, audio, prediccion temporal) |
| **Cuando usarla** | Lenguaje natural, series de tiempo, traduccion |
| **Ejemplo real** | ChatGPT (versiones anteriores), Google Translate |

#### Transformers

**Que es:** La arquitectura detras de GPT, BERT y los modelos modernos. Procesan toda la secuencia a la vez, no uno por uno.

**Analogia:** Como leer todo un libro de golpe en lugar de pagina por pagina: puedes ver relaciones entre el principio y el final instantaneamente.

| Aspecto | Detalle |
|---------|---------|
| **Salida** | Texto, clasificacion, generacion |
| **Cuando usarla** | Lenguaje natural, generacion de texto, QA |
| **Ejemplo real** | ChatGPT, Claude, Gemini, BERT |

```
Frase: "El gato se sento en la alfombra porque estaba cansado"

Transformer calcula: ¿A que se refiere "estaba"?
  → "estaba" esta mucho mas conectado con "gato" que con "alfombra"
  → La atencion identifica esta relacion automaticamente
```

---

### 9.5 Cuales Son las Diferencias Clave

#### Tecnicas supervisadas

| Tecnica | Salida | Interpretable | Datos necesarios | Cuando usarla |
|---------|--------|---------------|------------------|---------------|
| Regresion Lineal | Numero continuo | Si | Pocos | Relaciones lineales simples |
| Regresion Logistica | Si/No | Si | Pocos | Clasificacion binaria |
| Arbol de Decision | Clasificacion/Regresion | Si | Pocos | Necesitas explicar el por que |
| Random Forest | Clasificacion/Regresion | Parcial | Medios | Mejor precision |
| SVM | Clasificacion | No | Pocos | Dimensiones altas |
| KNN | Clasificacion/Regresion | Si | Todos | Datos simples |
| Naive Bayes | Probabilidad | Si | Pocos | Texto, spam |
| Redes Neuronales | Cualquier cosa | No | Muchos | Patrones complejos |

#### Tecnicas no supervisadas

| Tecnica | Salida | Cuando usarla |
|---------|--------|---------------|
| K-Means | K grupos esfericos | Segmentacion simple |
| DBSCAN | Grupos por densidad | Grupos irregulares, outliers |
| PCA | Variables reducidas | Reducir dimensionalidad |

#### Deep Learning

| Arquitectura | Tipo de dato | Ejemplo real |
|--------------|--------------|--------------|
| CNN | Imagenes | Filtros, autos autonomos |
| RNN/LSTM | Secuencias | Series de tiempo, textos cortos |
| Transformers | Secuencias largas | ChatGPT, traduccion |

---

### 9.6 Arbol de Decision: Como Elegir la Tecnica

```
¿Que tipo de problema tienes?
│
├── Prediccion de numero continuo
│   ├── Relacion lineal → Regresion Lineal
│   ├── Relacion compleja → Random Forest / Redes Neuronales
│   └── Serie temporal → LSTM / Transformers
│
├── Clasificacion (si/no o categorias)
│   ├── Necesitas explicar por que → Arbol de Decision
│   ├── Datos simples, pocos → Naive Bayes / KNN
│   ├── Dimensiones altas → SVM
│   └── Precision maxima → Random Forest / Redes Neuronales
│
├── Agrupacion (descubrir grupos)
│   ├── Grupos esfericos → K-Means
│   ├── Grupos irregulares → DBSCAN
│   └── Reducir variables → PCA
│
└── Decisiones secuenciales
    ├── Entorno simple → Q-Learning
    └── Entorno complejo → Deep Reinforcement Learning
```

---

### 9.7 Ejemplos Reales por Industria

| Industria | Problema | Tecnica usada | Por que esa tecnica |
|-----------|----------|---------------|---------------------|
| Banca | Aprobar creditos | Regresion Logistica | Necesitan explicar decisiones |
| Retail | Recomendar productos | K-Means + Apriori | Segmentar clientes y asociaciones |
| Salud | Diagnosticar por imagen | CNN | Detectar patrones en radiografias |
| E-commerce | Predecir demanda | Random Forest | Maneja multiples variables |
| Marketing | Clasificar sentimiento | Naive Bayes | Rapido, funciona con poco texto |
| Fintech | Detectar fraude | XGBoost (ensamble) | Alto rendimiento con datos tabulares |
| Tech | Asistentes virtuales | Transformers | Contexto largo en conversaciones |
| Logistica | Optimizar rutas | Q-Learning | Decisiones secuenciales |
| Manufactura | Mantener maquinaria | Redes Neuronales | Predecir fallos antes de que ocurran |

---

### 9.8 Errores Comunes al Elegir Tecnicas

| Error | Ejemplo real | Consecuencia |
|-------|--------------|--------------|
| Usar accuracy en datos desbalanceados | Banco con 99% creditos buenos | Modelo no detecta fraude |
| Usar regresion lineal en relacion no lineal | Predecir ventas con relacion exponencial | Predicciones muy alejadas |
| No escalar datos en SVM/KNN | Variables en diferentes rangos | Variables con mayor rango dominan |
| Elegir K-Means sin saber K | K=2 cuando hay 5 segmentos | Grupos artificiales sin sentido |
| Usar red neuronal con pocos datos | Clasificacion con 50 ejemplos | Sobreajuste extremo |

---

## 10. Conclusiones

1. **La integracion convierte un modelo tecnico en una solucion de valor.** Un modelo sin interfaz util es solo un experimento.

2. **El disenar interfaz es clave para la adopcion.** La IA debe priorizar usabilidad sobre estetica. Una interfaz bonita pero confuse fracasa.

3. **El prototipado permite validar antes de una implementacion final.** Siempre construye un MVP minimo antes de escalar.

4. **No existe la tecnica perfecta.** Cada una tiene fortalezas y debilidades. La clave es entender el problema antes de elegir la herramienta.

5. **Empieza simple.** Regresion lineal o arbol de decision suelen ser suficientes para muchos problemas. No uses redes neuronales si un modelo mas simple resuelve.

6. **La interpretabilidad importa.** En banca, salud y legal, necesitas explicar POR QUE el modelo decidio asi.

**Frase clave:**
> "El mejor modelo no es el mas complejo, es el que resuelve tu problema con los datos que tienes."

---

## 11. Glossario

| Termino | Definicion | Ejemplo |
|---------|------------|---------|
| **API** | Interfaz de programacion para conectar sistemas | ChatGPT API para generar respuestas |
| **Endpoint** | Punto de acceso a un servicio web | /api/chat, /api/voice |
| **NLP** | Procesamiento de lenguaje natural | Chatbot que entiende texto |
| **LUIM** | Large UI Models — modelos grandes para interfaces | IA que evalua diseno de pantallas |
| **MVP** | Producto minimo viable — version basica funcional | App con chatbot + 3 pantallas |
| **Supervisado** | Aprende de datos con respuesta conocida | Predecir precios con historial de ventas |
| **No supervisado** | Busca patrones sin respuesta conocida | Segmentar clientes por comportamiento |
| **Refuerzo** | Aprende por recompensas y castigos | Robot que aprende a caminar |
| **Caja blanca** | Modelo interpretable | Arbol de decision |
| **Caja negra** | Modelo dificil de explicar | Red neuronal profunda |
| **Overfitting** | Modelo memoriza datos en vez de aprender | 99% entrenamiento, 60% prueba |
| **Cluster** | Grupo de datos similares | Clientes premium vs ocasionales |
| **Feature** | Variable de entrada del modelo | Edad, ingresos, frecuencia de compra |
| **Label** | Variable objetivo (respuesta) | Spam/no spam, precio de venta |
| **TensorFlow.js** | Libreria para ejecutar ML en el navegador | Modelo que corre en Chrome sin servidor |

---

## 12. Preguntas de Reflexion

1. **Pregunta aplicada:** Si tuvieras que crear una app movil con un chatbot para tu universidad, que stack tecnologico elegirias y por que?

2. **Pregunta comparativa:** Cual crees que es mas importante: que la interfaz se vea bonita o que sea facil de usar? Que pasa cuando una IA genera interfaces solo pensando en estetica?

3. **Pregunta critica:** Si un chatbot de atencion al cliente responde algo incorrecto porque no tenia limites definidos, quien es responsable: el que diseno el bot, el que entreno el modelo, o la empresa que lo desplego?

4. **Pregunta sobre tecnicas:** Si tuvieras que predecir si un cliente va a comprar o no en tu tienda online, que tecnica de ML usarias y por que?

---

## Bibliografia

| # | Fuente | Tipo |
|---|--------|------|
| 1 | Costa, A., Silva, F., & Moreira, J. J. (2024). *Towards an AI-driven user interface design for web applications*. Procedia Computer Science, 237 | Academica |
| 2 | Goh, H. A., Ho, C. K., & Abas, F. S. (2023). *Front-end deep learning web apps development and deployment: a review*. Applied Intelligence, 53(12) | Academica |
| 3 | Morán Vivanco, B. (2025). *TripSense: Aplicacion Web de Recomendaciones Geolocalizadas con Inteligencia Artificial* | Tesis |
| 4 | Namoun, A. et al. (2024). *Predicting the usability of mobile applications using AI tools*. Procedia Computer Science, 238 | Academica |
| 5 | Tapia, J. L. S., & Mauri, J. L. (2023). *Polidata: Modelo de IA para evaluacion de diseno de interfaz movil*. I+ Diseño, 18(18) | Academica |
| 6 | Vargas, J. C. G. et al. (2025). *Implementacion de bots de IA en el sistema web iADAN*. Revista Multidisciplinaria | Academica |

---

## Recursos

- PDF de clase: `40098-S12-PRESENTACION.pdf`
- Clase anterior: [Metricas de Evaluacion de Modelos (Clase 11)](../clase-11/diseno-soluciones-ia-metricas-evaluacion-modelos-clase-11.md)
- Tema relacionado: [Eleccion del Modelo Correcto (Clase 10)](../clase-10/eleccion-modelo-correcto-clase-10.md)

---

*Ultima actualizacion: 24/06/2026*
