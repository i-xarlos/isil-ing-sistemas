# Introducción al Diseño de Sistemas (Clase 1)

**Curso:** Análisis y Diseño de Sistemas Avanzado (ISIL, 2026-2)  
**Docente:** [pendiente]  
**Fecha:** 01/09/2026

---

## Introducción

**Gancho humano:** ¿Alguna vez te has preguntado por qué algunos sistemas de información son fáciles de usar y otros son un laberinto imposible? La diferencia no está en la suerte, sino en el **diseño**.

**Pregunta guía:** ¿Cómo convertimos los requisitos de un sistema en una especificación detallada que los desarrolladores puedan implementar?

**Objetivos de aprendizaje:**
- Conocer los principales conceptos de diseño de sistemas
- Aprender a usar buenas prácticas de diseño en un proyecto de desarrollo
- Comprender el alcance del diseño de la arquitectura del sistema

---

## 1. Conceptos de Diseño de Sistemas

### ¿Qué es el Diseño de Sistemas?

**Analogía simple:** El diseño de sistemas es como el "plano" en la construcción de un edificio. Si tienes un diseño sólido desde el principio, te ahorrarás muchos problemas más adelante.

En esta fase, se toman las especificaciones y requisitos identificados y se traducen en una "arquitectura" que los desarrolladores pueden implementar. Aquí se toman decisiones sobre cómo se organizarán los datos, cómo se procesarán y cómo interactúan los diferentes componentes del sistema.

### Arquitectura del Sistema

Es el esquema de alto nivel que muestra cómo se organizan los diferentes componentes del software y cómo interactúan entre sí. Incluye la organización de módulos, la asignación de responsabilidades y la definición de interfaces y comunicaciones entre componentes.

**Ejemplo:** En un sistema de comercio electrónico, la arquitectura podría incluir:
- Frontend para la interacción del usuario
- Backend para el procesamiento de la lógica empresarial
- Base de datos para almacenar información del producto y del usuario
- API para manejar pagos

### Descomposición Modular

Implica dividir un sistema complejo en partes más pequeñas y manejables, llamadas módulos. Cada módulo se encarga de una funcionalidad específica y opera de manera independiente tanto como sea posible.

**Ejemplo:** En un sistema de comercio electrónico, podrías tener módulos separados para:
- Autenticación de usuarios
- Carrito de compras
- Gestión de productos
- Procesamiento de pagos

### Principios Clave de Diseño

| Principio | Descripción | Ejemplo |
|-----------|-------------|---------|
| **Abstracción** | Ignorar detalles menos importantes para centrarse en lo esencial | Cuando usas un auto, no necesitas saber cómo funciona el motor |
| **Encapsulamiento** | Ocultar detalles internos y exponer solo operaciones relevantes | En una app bancaria, el módulo de transacciones oculta cómo se realizan las transferencias |
| **Separación de Concerns** | Dividir un programa en secciones que aborden aspectos específicos | En una app web: capa de presentación, lógica de negocio y capa de datos |
| **Patrones de Diseño** | Soluciones probadas a problemas comunes | El patrón Singleton asegura que una clase tenga solo una instancia |

### UI/UX y Seguridad

- **UI (Interfaz de Usuario):** Diseño de las interfaces a través de las cuales los usuarios interactúan con la aplicación
- **UX (Experiencia de Usuario):** Experiencia general que un usuario tiene al interactuar con un sistema
- **Seguridad:** Medidas para proteger la integridad, disponibilidad y confidencialidad de los datos y servicios

---

## 2. Buenas Prácticas de Diseño de Sistemas

### ¿En qué consisten?

Son un conjunto de métodos y técnicas que se han demostrado eficaces para crear sistemas de alta calidad. Estas prácticas se basan en la experiencia de los profesionales del diseño de sistemas y en la investigación académica.

### Principales Buenas Prácticas

| Práctica | Descripción | Beneficio |
|----------|-------------|-----------|
| **Diseño Modular** | Dividir el sistema en módulos más pequeños y manejables | Facilita mantenibilidad y reutilización |
| **Responsabilidad Única** | Cada módulo debe tener una única responsabilidad | Reduce complejidad y mejora legibilidad |
| **Abstracción y Encapsulamiento** | Ocultar detalles de implementación | Mejora seguridad y permite cambios sin afectar otros componentes |
| **Uso de Patrones de Diseño** | Aplicar soluciones probadas | Aumenta eficiencia del desarrollo |
| **Diseño Orientado a Escalabilidad** | Diseñar para manejar aumento de carga | Prepara para crecimiento futuro |
| **Seguridad desde el Diseño** | Incorporar seguridad desde etapas tempranas | Reduce vulnerabilidad a ataques |
| **Documentación Exhaustiva** | Crear documentación detallada del diseño | Facilita mantenimiento y extensión futura |
| **Diseño Centrado en el Usuario** | Involucrar a usuarios en el proceso | Mejora adopción y satisfacción |

---

## 3. Diseño de la Arquitectura del Sistema

### ¿En qué consiste?

Es una de las etapas más críticas en el desarrollo de software. En esta fase se define la estructura general del sistema, incluyendo cómo se organizan y se interconectan sus diferentes componentes.

### Componentes Clave

1. **Componentes y Módulos:** Identificación de las principales piezas funcionales del sistema
2. **Interconexión:** Definición de cómo estos componentes se comunicarán entre sí
3. **Flujo de Datos:** Descripción de cómo los datos se moverán a través del sistema
4. **Capas de Software:** Organización en capas que abordan diferentes "concerns"
5. **Escalabilidad y Rendimiento:** Diseño de mecanismos para manejar aumento de carga
6. **Seguridad:** Incorporación de características de seguridad
7. **Resiliencia y Recuperación:** Planificación de cómo el sistema se recuperará de fallos
8. **Interoperabilidad:** Capacidad de interactuar con otros sistemas externos

### Metodologías y Herramientas

**Metodologías:**
- Arquitectura Dirigida por Modelos (MDA)
- Arquitectura Orientada a Servicios (SOA)
- Microservicios
- Arquitectura en Capas

**Herramientas:**
- Enterprise Architect
- Microsoft Visio
- Archimate
- Docker y Kubernetes
- Git

---

## Conclusiones

1. Tomar decisiones acertadas en el Diseño de la Arquitectura establece la base para la eficiencia, escalabilidad y seguridad del sistema completo.
2. Ignorar principios de diseño sólidos puede llevar a problemas graves a largo plazo.
3. No hay una "talla única" en cuanto a metodologías y herramientas; la elección debe basarse en los requisitos específicos del proyecto.
4. Mantener documentación detallada y facilitar la comunicación entre stakeholders mejora el proceso de desarrollo.

**Frase clave:**
> "Un buen diseño es el que resuelve problemas sin crear nuevos."

---

## Glosario

| Término | Definición | Ejemplo |
|---------|------------|---------|
| **Diseño de Sistemas** | Proceso de convertir requisitos en especificación detallada de cómo se construirá el sistema | Crear planos antes de construir un edificio |
| **Arquitectura del Sistema** | Esquema de alto nivel que muestra organización de componentes | Estructura de un sistema de comercio electrónico |
| **Modularidad** | Dividir sistema en partes más pequeñas y manejables | Módulos de autenticación, carrito, pagos |
| **Abstracción** | Ignorar detalles menos importantes | Conducir un auto sin saber cómo funciona el motor |
| **Patrones de Diseño** | Soluciones probadas a problemas comunes | Patrón Singleton para configuración |

---

## Preguntas de Reflexión

1. **Pregunta aplicada:** Si tuvieras que diseñar un sistema de gestión de inventario para una tienda en línea, ¿cómo dividirías el sistema en módulos?

2. **Pregunta comparativa:** ¿Cuál de las buenas prácticas de diseño crees que es más importante para un proyecto universitario? ¿Por qué?

3. **Pregunta crítica:** ¿Alguna vez has usado un sistema que te pareció difícil de usar? ¿Podrías identificar qué principio de diseño faltaba?

---

## Fuentes

| # | Fuente | Tipo | URL |
|---|--------|------|-----|
| 1 | Bass, L., Clements, P., & Kazman, R. (2012). *Software Architecture in Practice* | Libro | https://www.informit.com/store/software-architecture-in-practice-9780321815736 |
| 2 | Martin, R. C. (2002). *Agile Software Development, Principles, Patterns, and Practices* | Libro | https://www.amazon.com/Agile-Software-Development-Principles-Patterns/dp/0135974445 |
| 3 | Fowler, M. (2002). *Patterns of Enterprise Application Architecture* | Libro | https://martinfowler.com/books/eaa.html |
| 4 | InfoWorld - Software Architecture | Artículos | https://www.infoworld.com/category/software-architecture/ |
| 5 | Martin Fowler | Blog | https://martinfowler.com/ |

---

*Última verificación: 01/09/2026.*