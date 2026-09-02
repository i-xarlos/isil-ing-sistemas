---
name: learning-roadmap-generator
description: "Use when: creating structured learning plans week by week with objectives, recommended resources, practical exercises, and progress checkpoints. Adapts to any topic and available time."
---

# Generador de Roadmaps de Aprendizaje

Diseña rutas de aprendizaje personalizadas para cualquier tema. Desde "quiero aprender Python" hasta "necesito entender finanzas básicas". Genera un plan realista con hitos medibles.

---

## Flujo de Trabajo

### Paso 1: Diagnóstico Inicial

Preguntar o detectar:

| Pregunta | Propósito |
|----------|-----------|
| ¿Qué tema quieres aprender? | Definir el alcance |
| ¿Cuál es tu nivel actual? | Evitar saltos grandes |
| ¿Cuántas horas por semana puedes dedicar? | Ajustar la carga |
| ¿Cuál es tu objetivo final? | Enfocar el roadmap |
| ¿Tienes fecha límite? | Definir plazos realistas |

### Paso 2: Definir Objetivo Final

El objetivo debe ser **concreto y medible**:

- ❌ "Entender JavaScript"
- ✅ "Crear una aplicación web funcional con HTML, CSS y JavaScript que consuma una API externa"

### Paso 3: Estructurar el Plan

Dividir en semanas progresivas:

```
Semana 1: Fundamentos → Semana 2: Conceptos intermedios → Semana 3: Aplicación práctica → ...
```

Cada semana debe:
- Construir sobre la anterior
- Incluir un recurso gratuito
- Tener un ejercicio práctico
- Cerrar con un checkpoint verificable

### Paso 4: Validar Realismo

Verificar que el plan cumpla las restricciones de tiempo y carga.

---

## Formato de Salida

### Encabezado del Roadmap

```md
# Roadmap de Aprendizaje: {Tema}

**Nivel inicial:** {Principiante / Intermedio / Avanzado}
**Objetivo final:** {Objetivo concreto y medible}
**Duración:** {N} semanas
**Carga semanal:** {X} horas/semana
**Fecha de inicio:** DD/MM/AAAA
```

### Estructura Semanal

Para cada semana:

```md
## Semana {N}: {Tema de la semana}

**Objetivo específico:** {Qué podrás hacer al final de esta semana}

### Conceptos clave
- Concepto 1: definición breve
- Concepto 2: definición breve
- Concepto 3: definición breve

### Recursos
| Tipo | Recurso | Duración | Costo |
|------|---------|----------|-------|
| Video | {título} | {min} | Gratuito |
| Artículo | {título} | {min} | Gratuito |
| Curso | {título} | {horas} | {costo} |

### Ejercicio práctico
{Descripción del ejercicio con pasos claros}

### Checkpoint
**Sabrás que lo dominas cuando puedas...**
- [ ] Criterio 1 verificable
- [ ] Criterio 2 verificable
- [ ] Criterio 3 verificable
```

### Resumen del Roadmap

Al final, incluir tabla resumen:

```md
## Resumen del Roadmap

| Semana | Tema | Checkpoint Principal |
|--------|------|---------------------|
| 1 | {tema} | {criterio verificable} |
| 2 | {tema} | {criterio verificable} |
| ... | ... | ... |
```

---

## Reglas de Diseño

### Progresión

- **De simple a complejo:** empezar con lo básico y avanzar gradualmente
- **De teoría a práctica:** cada concepto teórico tiene un ejercicio asociado
- **De aislado a integrado:** las últimas semanas combinan todo lo aprendido

### Recursos

- **Mínimo 1 gratuito por semana** (obligatorio)
- **Mezclar tipos:** videos, artículos, documentación oficial, ejercicios
- **Priorizar calidad:** documentación oficial > cursos gratuitos > contenido de la comunidad
- **Incluir alternativas:** si se recomienda algo de pago, siempre ofrecer opción gratuita

### Checkpoints

Los checkpoints deben ser **verificables**, no abstractos:

- ❌ "Entenderás los bucles"
- ✅ "Podrás escribir un programa que use un bucle for para procesar una lista de 10 elementos"
- ❌ "Conocerás bases de datos"
- ✅ "Podrás crear una tabla en SQLite, insertar datos y hacer 3 consultas diferentes"

### Tiempo

- **Máximo 5-7 horas semanales** salvo que el usuario pida más
- **Máximo 12 semanas** por roadmap (si requiere más, dividir en fases)
- **Incluir tiempo de descanso** entre semanas密集as

---

## Adaptación por Nivel

| Nivel | Enfoque | Ejemplos |
|-------|---------|----------|
| **Principiante** | Conceptos fundamentales, ejercicios guiados, recursos introductorios | "Crear tu primera función en Python" |
| **Intermedio** | Patrones, mejores prácticas, proyectos pequeños | "Construir una API REST con autenticación" |
| **Avanzado** | Arquitectura, optimización, proyectos complejos | "Diseñar un sistema distribuido con microservicios" |

---

## Ejemplo de Uso

**Entrada:**
> "Quiero aprender React en 6 semanas, tengo 4 horas por semana"

**Salida parcial:**
```md
# Roadmap de Aprendizaje: React

**Nivel inicial:** Principiante con conocimientos de HTML/CSS/JavaScript
**Objetivo final:** Crear una aplicación web interactiva con React que consuma una API
**Duración:** 6 semanas
**Carga semanal:** 4 horas/semana

---

## Semana 1: Fundamentos de React

**Objetivo específico:** Crear tu primer componente React y renderizarlo en el navegador

### Conceptos clave
- **JSX:** Sintaxis que permite escribir HTML dentro de JavaScript
- **Componentes:** Piezas reutilizables de interfaz
- **Props:** Forma de pasar datos de padre a hijo

### Recursos
| Tipo | Recurso | Duración | Costo |
|------|---------|----------|-------|
| Video | React Tutorial for Beginners (YouTube) | 2h | Gratuito |
| Doc oficial | React Docs - Hello World | 30min | Gratuito |
| Práctica | Codecademy: Learn React | 1h | Gratuito |

### Ejercicio práctico
1. Crear un proyecto con `npx create-react-app mi-primera-app`
2. Crear un componente `Saludo` que reciba un nombre por props
3. Renderizar el componente en `App.js`

### Checkpoint
**Sabrás que lo dominas cuando puedas...**
- [ ] Crear un proyecto React desde cero
- [ ] Crear un componente funcional
- [ ] Pasar datos mediante props
- [ ] Renderizar el componente en el navegador
```

---

## Restricciones

- **No proponer más de 5-7 horas semanales** salvo que el usuario pida más
- **No recomendar recursos de pago sin alternativa gratuita**
- **Ser realista con los plazos** — mejor un roadmap conservador que uno imposible
- **Máximo 12 semanas** por roadmap (si el tema requiere más, dividir en fases)
- **Incluir al menos un ejercicio práctico** por semana
- **Los checkpoints deben ser verificables** — "podrás hacer Y", no "entenderás X"

---

## Checklist de Calidad

Antes de entregar el roadmap, verificar:

- [ ] Objetivo final es concreto y medible
- [ ] Nivel inicial está claro (asumido o preguntado)
- [ ] Cada semana tiene: objetivo → conceptos → recursos → ejercicio → checkpoint
- [ ] Cada semana construye sobre la anterior
- [ ] Hay al menos 1 recurso gratuito por semana
- [ ] Los checkpoints son verificables (no abstractos)
- [ ] La carga semanal no excede el tiempo disponible
- [ ] El roadmap no tiene más de 12 semanas
- [ ] Hay una tabla resumen al final
