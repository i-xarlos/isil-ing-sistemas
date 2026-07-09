# Tecnologías Emergentes (Clase 14)

**Curso:** Arquitectura Empresarial (ISIL, 2026-1)  
**Docente:** [pendiente]  
**Fecha:** [pendiente]

---

## Introducción

**Gancho humano:** Cuando pides un producto por internet y te llega en 24 horas, detrás hay una cadena completa de tecnología trabajando en silencio: servidores en la nube, sensores IoT, algoritmos de IA y registros inmutables en blockchain. ¿Alguna vez te has detenido a pensar cómo todo eso se conecta?

**Pregunta guía:** ¿Cómo impactan las tecnologías emergentes en el diseño de la arquitectura empresarial de una organización?

**Objetivos de aprendizaje:**
- Comprender las principales tecnologías emergentes y su clasificación
- Analizar cómo cada tecnología transforma capas de la arquitectura empresarial
- Identificar errores comunes al adoptar tecnología sin alineamiento estratégico

---

## 1. Cloud Computing

### ¿Qué es?

**Analogía simple:** Antes, si querías vender cosas online, necesitabas comprar servidores, instalar software, mantener todo funcionando. Es como construir tu propia fábrica de pan: compras el terreno, el horno, la harina y contratas al panadero. Cloud computing es como alquilar una cocina compartida: usas lo que necesitas, pagas por lo que consumes, y alguien más se encarga del mantenimiento.

### Modelos de Servicio Cloud

| Modelo | Qué proporciona | Analogía | Ejemplo Real |
|--------|----------------|----------|--------------|
| **IaaS** | Servidores virtuales, almacenamiento, red | Alquilar un local vacío y amueblarlo a tu gusto | AWS EC2, Azure VMs, Google Compute Engine |
| **PaaS** | Plataforma para desarrollar sin gestionar infraestructura | Cocinar en una cocina equipada: solo traes los ingredientes | Heroku, Google App Engine, Azure App Service |
| **SaaS** | Software listo para usar | Pedir comida a domicilio: solo comes | Google Workspace, Salesforce, Zoom |

### Ejemplo detallado: Netflix en la Nube

```
┌─────────────────────────────────────────────────┐
│   FLUJO: Netflix y AWS (Cloud Computing)        │
├─────────────────────────────────────────────────┤
│  1. Usuario abre la app                          │
│     ↓                                           │
│  2. AWS EC2 procesa millones de solicitudes      │
│     simultáneas en servidores distribuidos       │
│     ↓                                           │
│  3. S3 almacena millones de horas de video       │
│     ↓                                           │
│  4. Algoritmos de IA recomiendan contenido       │
│     ↓                                           │
│  5. El usuario recibe su catálogo personalizado  │
└─────────────────────────────────────────────────┘
```

### Ventajas para la Arquitectura Empresarial

- **Elasticidad:** Crece o reduce capacidad según demanda (Black Friday, Navidad)
- **Escalabilidad horizontal:** Agregar más máquinas en lugar de una más grande
- **Resiliencia:** Si falla un data center, otro toma el control
- **Costo operativo:** De CAPEX (inversión fija) a OPEX (pago por uso)

---

## 2. Inteligencia Artificial y Machine Learning

### ¿Qué es?

**Analogía simple:** Un empleado junior que nunca se cansa, aprende de cada interacción y puede procesar miles de documentos en minutos. No reemplaza al experto humano, pero amplifica su capacidad enormemente.

### Clasificación de IA según Gartner y Klaus Schwab

| Nivel | Qué hace | Ejemplo Real |
|-------|----------|--------------|
| **IA Estrecha (Narrow AI)** | Realiza una tarea específica mejor que un humano | Asistentes de voz (Alexa), reconocimiento facial |
| **IA General (AGI)** | Razona como un humano en múltiples dominios | Aún no existe |
| **Machine Learning** | Aprende de datos sin programación explícita | Filtros de spam que mejoran con el tiempo |
| **Deep Learning** | Redes neuronales profundas para patrones complejos | Diagnóstico médico por imágenes |

### Casos por Industria

| Industria | Aplicación IA | Beneficio | Empresa |
|-----------|---------------|-----------|---------|
| **Salud** | Diagnóstico asistido por imágenes | Precisión médica +30% | IBM Watson Health |
| **Retail** | Recomendaciones personalizadas | Aumento ventas +35% | Amazon, Netflix |
| **Banca** | Detección de fraude en tiempo real | Reducción pérdidas | PayPal, Mastercard |
| **Manufactura** | Mantenimiento predictivo | Reducción paradas -25% | Siemens, GE |
| **Logística** | Optimización de rutas | Ahorro combustible -15% | FedEx, DHL |

### Impacto en Arquitectura Empresarial

La IA no es solo una herramienta; transforma la capa de datos, aplicaciones y procesos:

```
┌─────────────────────────────────────────────────┐
│   CAPAS AFECTADAS POR IA                        │
├─────────────────────────────────────────────────┤
│  Datos     → Calidad, volumen, governanza       │
│  Procesos  → Automatización, decisiones auto.   │
│  Aplicaciones → Bots, asistentes, analytics     │
│  Tecnología  → GPUs, frameworks, modelos        │
└─────────────────────────────────────────────────┘
```

---

## 3. Blockchain y Registros Distribuidos

### ¿Qué es?

**Analogía simple:** Imagina un cuaderno de contabilidad que todos pueden leer pero nad puede borrar ni modificar. Cada vez que alguien escribe una transacción, todos los demás reciben una copia. Si alguien intenta alterar una línea, el resto detecta la inconsistencia.

### ¿Cómo funciona?

| Concepto | Descripción | Ejemplo |
|----------|-------------|---------|
| **Bloque** | Grupo de transacciones validadas | Un bloque con 500 transacciones de Bitcoin |
| **Cadena** | Bloques enlazados criptográficamente | Cada bloque referencia al anterior |
| **Distribuido** | Copia en todos los nodos de la red | Miles de computadoras tienen el mismo registro |
| **Inmutable** | No se puede alterar sin consenso | Modificar un bloque requeriría cambiar toda la cadena |

### Aplicaciones Reales por Sector

| Sector | Uso de Blockchain | Empresa/Organización |
|--------|-------------------|---------------------|
| **Finanzas** | Transferencias internacionales | Ripple, Stellar |
| **Supply Chain** | Trazabilidad de productos | Walmart, Maersk |
| **Salud** | Registros médicos inmutables | MediLedger |
| **Legal** | Contratos inteligentes | Ethereum, Hyperledger |
| **Gobierno** | Votación electrónica | Voatz (pilotos) |

### Relevancia para Arquitectura Empresarial

- Elimina intermediarios en procesos de confianza
- Reduce tiempos de conciliación de datos
- Aporta trazabilidad completa de transacciones
- Requiere repensar la integración entre sistemas

---

## 4. IoT y Digital Twins

### Internet de las Cosas (IoT)

**Analogía simple:** IoT es como poner sensores en todas las cosas del mundo real para que "hablen" con sistemas informáticos. Un refrigerador que avisa cuando falta leche, una fábrica que detecta cuándo una máquina va a fallar antes de que falle.

### Componentes del Ecosistema IoT

```
┌─────────────────────────────────────────────────┐
│   ECOSISTEMA IoT                                │
├─────────────────────────────────────────────────┤
│  1. Sensores      → Recolectan datos del mundo  │
│       ↓                                         │
│  2. Conectividad  → Red transmite los datos     │
│       ↓                                         │
│  3. Plataforma    → Almacena y procesa           │
│       ↓                                         │
│  4. Aplicación    → Presenta insights al usuario │
│       ↓                                         │
│  5. Acción        → Se toma una decisión auto.   │
└─────────────────────────────────────────────────┘
```

### Digital Twins (Gemelos Digitales)

**Analogía simple:** Un gemelo digital es como un modelo de avión en un simulador de vuelo. El simulador no es el avión real, pero puede predecir qué pasará en el mundo real bajo diferentes condiciones. Un gemelo digital hace lo mismo con una fábrica, un edificio o una ciudad completa.

| Gemelo Digital | Qué replica | Caso Real |
|----------------|-------------|-----------|
| **Industrial** | Máquinas y procesos de fabricación | Siemens: simula líneas de producción |
| **Urbano** | Ciudades completas | Singapura: modelo digital de toda la ciudad |
| **Sanitario** | Cuerpo humano para planificar cirugías | GE Healthcare: modelos de órganos |
| **Infraestructura** | Puentes, carreteras, edificios | Autodesk: edificios inteligentes |

### Conexión entre IoT y Digital Twins

```
Mundo Físico → Sensores IoT → Datos en tiempo real → Gemelo Digital
     ↑                                                      ↓
     ←──── Simulación / Predicción / Optimización ←─────────┘
```

---

## 5. Tecnologías Ágiles y Escalables

### Principios Clave

| Concepto | Qué significa | Beneficio |
|----------|---------------|-----------|
| **Desacoplamiento** | Componentes independientes entre sí | Cambiar uno sin romper otros |
| **Microservicios** | Aplicación dividida en servicios pequeños | Desplegar solo lo que cambió |
| **Automatización** | Procesos ejecutados por máquinas | Reducir errores humanos |
| **Escalabilidad** | Crecer bajo demanda | Soportar picos de tráfico |

### Ejemplo: Arquitectura de Microservicios

```
┌─────────────────────────────────────────────────┐
│   MONOLITO vs MICROSERVICIOS                    │
├─────────────────────────────────────────────────┤
│                                                 │
│  MONOLITO:                                      │
│  ┌─────────────────────────┐                    │
│  │  Todo en un solo bloque │  → Si falla algo,  │
│  │  (usuarios + pedidos +  │    todo cae         │
│  │   pagos + envíos)       │                    │
│  └─────────────────────────┘                    │
│                                                 │
│  MICROSERVICIOS:                                │
│  ┌──────┐ ┌──────┐ ┌──────┐ ┌──────┐          │
│  │Users │ │Orders│ │Payments│ │Ship │            │
│  └──────┘ └──────┘ └──────┘ └──────┘          │
│  → Si falla pagos, usuarios sigue activo        │
└─────────────────────────────────────────────────┘
```

---

## 6. Impacto en Arquitectura Empresarial

### Mapa de Impacto por Tecnología

| Tecnología | Capa AE Afectada | Impacto Arquitectónico | Ejemplo |
|------------|-------------------|----------------------|---------|
| **Cloud** | Tecnología, Aplicaciones | Elasticidad y escalabilidad | Escalar infraestructura en Black Friday |
| **IA/ML** | Datos, Procesos, Aplicaciones | Automatización y decisiones | Chatbots 24/7, recomendaciones |
| **Blockchain** | Datos, Procesos | Confianza y trazabilidad | Contratos inteligentes sin intermediarios |
| **IoT** | Datos, Tecnología | Captura en tiempo real | Sensores en cadena de frío |
| **Digital Twins** | Datos, Aplicaciones | Simulación y predicción | Gemelos de fábricas industriales |
| **Microservicios** | Aplicaciones | Desacoplamiento | Actualizar módulo sin downtime |

### Marco de Referencia: Gartner Hype Cycle

Gartner clasifica tecnologías en una curva de expectativas:

```
Expectativa
    │        ╱╲
    │       ╱  ╲          ╱───── Escalera de Productividad
    │      ╱    ╲        ╱
    │     ╱      ╲      ╱
    │    ╱        ╲    ╱
    │   ╱          ╲──╱
    │  ╱   
    │ ╱ Pico de      Valle de        Meseta de
    │╱  expectativas  desilusión     productividad
    └──────────────────────────────────→ Tiempo
```

| Fase | Qué significa | Ejemplo 2026 |
|------|---------------|--------------|
| **Pico de expectativas** | Hype máximo, expectativas irreales | Algunas IA generativas |
| **Valle de desilusión** | Interés baja, problemas reales aparecen | Blockchain enterprise |
| **Escalera de productividad** | Adopción madura y útil | Cloud computing |

---

## 7. Errores Comunes a Evitar

| Error | Ejemplo Real | Consecuencia | Solución |
|-------|--------------|--------------|----------|
| **Adoptar tecnología por tendencia** | Empresa implementa blockchain para gestionar inventario simple | Costos innecesarios, complejidad sin valor | Evaluar si el problema lo resuelve |
| **No tener estrategia cloud** | Migrar todo a la nube sin planificación | Costos inesperados, datos inseguros | Crear roadmap de adopción |
| **Ignorar la gobernanza de datos** | Usar IA con datos sucios o incompletos | Modelos sesgados, decisiones erróneas | Implementar calidad de datos primero |
| **Microservicios innecesarios** | Dividir una app pequeña en 20 microservicios | Complejidad operativa excesiva | Empezar monolito y escalar cuando sea necesario |
| **Digital twin sin sensores** | Querer simular una fábrica sin datos reales | Modelo inútil, pérdida de inversión | Primero IoT, luego gemelo digital |

---

## Conclusiones

1. Las tecnologías emergentes son **herramientas, no objetivos**: su valor está en resolver problemas de negocio, no en usarlas por usarlas.
2. La arquitectura empresarial debe **anteceder a la adopción tecnológica**: primero definir qué se necesita, luego elegir la tecnología.
3. Cloud, IA, blockchain, IoT y gemelos digitales se **complementan entre sí**: rara vez una sola tecnología resuelve todo.

**Frase clave:**
> "La tecnología sin estrategia es ruido. La estrategia sin tecnología es imposible."

---

## Glosario

| Término | Definición | Ejemplo |
|---------|------------|---------|
| **Cloud Computing** | Provisión de servicios de computación por internet | Netflix usa AWS para streaming |
| **IaaS** | Infraestructura como servicio (servidores virtuales) | Alquilar una VM en AWS EC2 |
| **PaaS** | Plataforma como servicio (para desarrollar) | Heroku para desplegar apps |
| **SaaS** | Software como servicio (listo para usar) | Google Workspace, Zoom |
| **IA Estrecha (Narrow AI)** | IA especializada en una tarea | Asistente de voz, recomendaciones |
| **Machine Learning** | Aprendizaje automático a partir de datos | Filtros de spam que mejoran |
| **Blockchain** | Registro distribuido e inmutable | Bitcoin, Ethereum |
| **Contratos Inteligentes** | Contratos autoejecutables en blockchain | Ethereum: pago automático al cumplir condiciones |
| **IoT** | Red de dispositivos con sensores conectados | Smart home, sensores industriales |
| **Digital Twin** | Réplica virtual de un objeto físico | Simulador de fábrica en tiempo real |
| **Microservicios** | Arquitectura de servicios pequeños y desacoplados | Netflix: usuarios, pagos, recom. separados |
| **Hype Cycle** | Curva de Gartner sobre madurez tecnológica | Cloud ya está en fase productiva |

---

## Preguntas de Reflexión

1. **Pregunta aplicada** — "¿Qué tecnologías emergentes ves en tu trabajo diario y cuáles crees que llegarán en los próximos 3 años?"

2. **Pregunta comparativa** — "Si tuvieras que elegir entre migrar a cloud o implementar IA para tu empresa, ¿cuál elegirías primero y por qué?"

3. **Pregunta crítica** — "¿Estamos adoptando tecnologías emergentes demasiado rápido sin entender su impacto real en la arquitectura?"

---

## Fuentes

| # | Fuente | Tipo | URL |
|---|--------|------|-----|
| 1 | Gartner. *Hype Cycle for Emerging Technologies* (2025) | Oficial | https://www.gartner.com/en/articles/hype-cycle |
| 2 | Schwab, K. *The Fourth Industrial Revolution* (2016) | Académica | https://www.weforum.org/fourth-industrial-revolution |
| 3 | AWS. *What is Cloud Computing?* | Oficial | https://aws.amazon.com/what-is-cloud-computing/ |
| 4 | McKinsey. *The Future of IoT* (2024) | Tercero | https://www.mckinsey.com/industries/technology-media-and-telecommunications |
| 5 | Deloitte. *Blockchain in Enterprise* (2025) | Tercero | https://www2.deloitte.com/us/en/insights |

---

*Última verificación: 07/07/2026.*
