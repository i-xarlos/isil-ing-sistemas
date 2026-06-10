---
name: writing-standards
description: Write clear, scannable Markdown documentation with practical examples and accessible language. Use when creating educational content for students or professionals.
applyTo: "**/*.md"
---

# Escritura — Estándares de Documentación Humana

Cuando crees o edites documentos Markdown en este repositorio, escribe para personas que quieren entender rápido, no para impresionar con jerga.

---

## 🎯 Objetivo

- Prioriza claridad, legibilidad y utilidad práctica
- Haz que el contenido se pueda escanear en pocos segundos
- Explica conceptos complejos con lenguaje simple, sin perder precisión
- Conecta la teoría con ejemplos reales y cercanos

---

## Reglas de Escritura

- Escribe en español claro y natural
- Usa frases cortas y directas
- Introduce primero la idea principal y luego los detalles
- Evita párrafos largos de más de 5 líneas si puedes dividirlos
- Evita jerga innecesaria; si un término es importante, defínelo en una línea
- Evita repetir la misma idea con palabras distintas
- No rellenes con texto genérico

---

## Estructura Recomendada

Usa esta secuencia siempre que aplique:

1. **Qué es** — definición clara en 1-2 líneas
2. **Para qué sirve** — uso o propósito inmediato
3. **Cómo funciona** — proceso o mecanismo
4. **Ejemplo práctico** — caso real o demostración
5. **Idea clave o conclusión** — resumen de lo importante

---

## Formato Visual — Maximizar Escaneo

**Objetivo: Personas ocupadas captan la idea en segundos.**

### Encabezados
- Usa `##` y `###` para dividir temas
- Cada encabezado debe ser una frase clara que resume la sección

### Listas
- **Viñetas:** conceptos sin orden, características, ejemplos variados
- **Numeradas:** pasos, fases, procesos secuenciales

### Herramientas Obligatorias

#### 1. Tablas
Úsalas cuando compares 3+ opciones, tipos, o características:
- Comparar Narrow AI vs Generativa vs ML vs Deep Learning
- Listar sectores + aplicaciones + ROI
- Métricas de evaluación con cuándo usarlas

#### 2. Cuadros Destacados
Para ideas críticas:
- Definiciones clave
- Reglas de oro o lecciones aprendidas
- Advertencias o puntos no negociables

Usa `> **Texto en negrita:** Explicación` para efectos visuales

#### 3. Diagramas
Para procesos complejos:

- **ASCII:** Diagramas rápidos y simples en texto puro
- **Mermaid:** Diagramas interactivos profesionales
  - Flujos de decisión (flowchart)
  - Diagramas de secuencia
  - Gráficos de relaciones
  - Cronogramas (gantt)
  - Grafos y dependencias

Usa bloques: ` ```mermaid ... ``` `

#### 4. Bloques Resumen
Para información densa:
- Tabla resumen con 8-10 filas máximo
- Glosarios visuales para términos técnicos
- Checklist con casillas `[ ]` para verificación

#### 5. Ejemplos Enriquecidos
- Lado a lado: concepto abstracto | ejemplo concreto
- Scenario: "En banca, si X entonces Y porque Z"

---

## Regla Clave de Legibilidad

Todo documento debe responder rápidamente estas preguntas:

- ¿Qué es?
- ¿Para qué sirve?
- ¿Cómo funciona?
- ¿Por qué importa?
- ¿En qué caso real se aplica?

Si el texto no responde estas preguntas con facilidad, simplifica.

---

## Idioma y Tono

- **Español** en todo el contenido
- **Claro y escaneable:** frases cortas, listas, sin jerga innecesaria
- **Conectado con la práctica:** cada concepto abstracto necesita un ejemplo real
- **Profesional pero accesible:** técnico pero no académico

---

## Ejemplos de Transformación

### ❌ Denso (evita)
> La arquitectura empresarial constituye un conjunto sistemático de metodologías y prácticas que permiten la optimización integral de los procesos organizacionales mediante la alineación estratégica de componentes tecnológicos, de negocio y humanos en consonancia con los objetivos corporativos.

### ✅ Claro (aplica)
> La arquitectura empresarial alinea la tecnología, los procesos y las personas con los objetivos de negocio. Se usa para evitar silos, reducir costos y escalar rápido.
>
> **Ejemplo:** En banca, la arquitectura empresarial conecta sistemas de crédito, compliance y experiencia del cliente en un solo flujo.

---

## Checklist de Calidad

Antes de terminar un documento, verifica que:

- [ ] Se entiende en lectura rápida (escaneo visual)
- [ ] Estructura visual ayuda a estudiar
- [ ] Hay al menos un ejemplo cuando el concepto lo necesita
- [ ] El contenido respeta el contexto del curso
- [ ] Hay conexión entre teoría, datos, aplicaciones y tecnología
- [ ] Parece escrito para personas, no para una máquina
- [ ] Frases son cortas (máx. 15 palabras en promedio)
- [ ] No hay párrafos de más de 5 líneas
