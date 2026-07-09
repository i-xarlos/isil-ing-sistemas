# Priorización de Iniciativas Digitales (Clase 13)

**Curso:** Customer Centricity en Tecnologías de Información (ISIL, 2026-1)  
**Docente:** [pendiente]  
**Fecha:** DD/MM/AAAA

---

## Introducción

**Gancho humano:** Tenemos muchísimas cosas que ejecutar para solucionar los problemas de nuestros clientes. ¿Cuál elegimos? ¿Por dónde empezamos?

**Pregunta guía:** ¿Cómo priorizar iniciativas cuando hay tiempo limitado, recursos escasos y múltiples variables en juego?

**Objetivos de aprendizaje:**
- Comprender frameworks de priorización con enfoque customer-centric
- Evaluar el rol de tecnología en cada decisión del roadmap
- Analizar mitos y prácticas reales de priorización

---

## 1. Frameworks de Priorización

### ¿Qué es un framework?

**Analogía simple:** Un framework es como una brújula: te ayuda a orientar tus decisiones cuando hay demasiadas opciones y poco tiempo.

### Variables a considerar

| Variable | Impacto |
|----------|---------|
| **Tiempo limitado** | No se puede hacer todo a la vez |
| **Recursos limitados** | Equipo y presupuesto acotados |
| **Entrega de valor** | Priorizar lo que genera impacto |
| **Competencia** | El mercado se mueve rápido |
| **Dependencias** | Algunas iniciativas habilitan otras |

### RICE Framework

Uno de los métodos más utilizados por equipos de producto:

| Criterio | Definición | Ejemplo |
|----------|------------|---------|
| **Reach** | Alcance de la solución | ¿Para cuántos usuarios? |
| **Impact** | Relación con el negocio | ¿Qué valor genera? |
| **Confidence** | Certeza de los datos | ¿Qué tan seguro estamos? |
| **Effort** | Esfuerzo requerido | ¿Cuánto tiempo toma? |

**Fórmula:** `RICE Score = R × I × C / E`

| Iniciativa | Reach | Impact | Confidence | Effort | Score |
|------------|-------|--------|------------|--------|-------|
| Iniciativa X | 14.5M | 22K USD | 75% | 1.5 meses | 159.5 |
| Iniciativa Y | 1.5M | 18K USD | 90% | 2 meses | 12.15 |

---

## 2. Weighted Shortest Job First (WSJF)

### Framework de SAFe (Scaled Agile Framework)

Incorpora factores de dependencias para grandes corporaciones:

| Criterio | Definición |
|----------|------------|
| **User Business Value (UBV)** | Impacto en ingresos |
| **Time Criticality (TC)** | ¿Hay deadline urgente? |
| **Risk Reduction & Opportunity Enablement (RR&OE)** | ¿Qué habilita para el negocio? |
| **Job Duration (JD)** | Duración total estimada |

**Fórmula:** `WSJF = (UBV + TC + RR&OE) / JD`

Los criterios se estandarizan con Series de Fibonacci: 1, 2, 3, 5, 8, 13, 21

---

## 3. MoSCoW Framework

### Priorización por categorías

| Categoría | Definición | Ejemplo |
|-----------|------------|---------|
| **Must Have** | No negociable | Cumplimiento legal |
| **Should Have** | Importante pero no crítico | Mejora de experiencia |
| **Could Have** | Deseable pero prescindible | Funcionalidad extra |
| **Won't Have** | No prioridad este periodo | Futura versión |

**Uso típico:** Priorización de capacidades dentro de una épica, no entre iniciativas.

---

## 4. Rol de Tecnología en la Priorización

### Tecnología debe tener voz y voto

> "Si tecnología no participa en la priorización, estaremos operando basados en supuestos."

### ¿Cómo apoya tecnología en cada decisión?

| Criterio | Perspectiva de tecnología |
|----------|---------------------------|
| **Confidence** | ¿Qué tan confiado está el equipo en ejecutar? |
| **Effort** | Estimación técnica realista |
| **RR&OE** | ¿Qué componentes se pueden reutilizar? |

### Ejemplo de dependencias

```
┌─────────────────────────────────────┐
│   INICIATIVAS Y DEPENDENCIAS        │
├─────────────────────────────────────┤
│  Iniciativa 1                       │
│     ↓ desbloquea                    │
│  Iniciativa 2                       │
│     ↓ facilita                      │
│  Iniciativa 3                       │
└─────────────────────────────────────┘
```

---

## 5. Mitos y Prácticas Reales

### Mitos comunes

| Mito | Realidad |
|------|----------|
| "El roadmap es fijo en el tiempo" | El mercado cambia, el roadmap debe adaptarse |
| "Involucrar a tecnología toma tiempo" | Es inversión, no pérdida de tiempo |
| "Hacer roadmap sin espacio para lo técnico" | Lleva a malos funcionamientos |

### ¿Copiar a la competencia?

> "Tú no eres ni debes ser igual a tu competencia. Busca diferenciarte y crecer en ese diferencial."

No copiar features ciegamente, sino aprender de buenas prácticas.

---

## 6. Deuda Técnica en Priorizaciones

### ¿Qué es la deuda técnica?

**Analogía simple:** Es como construir pisos sobre cimientos débiles: funciona por ahora, pero eventualmente colapsa.

### ¿Cómo tratarla?

- Clasificar su criticidad
- Evaluarla bajo los mismos criterios que otras iniciativas
- Responder preguntas que hagan entender lo crítico y habilitador

### Cuando NO priorizar deuda técnica

- Cuando el negocio no entiende su impacto
- Cuando no hay argumentos claros de beneficio
- Cuando se prioriza solo por "lo bonito" del feature

---

## Conclusiones

1. Los frameworks son puntos de partida, no recetas fijas
2. Incluir a tecnología en la priorización es fundamental
3. El objetivo siempre es: entregar más valor en el menor tiempo posible
4. La deuda técnica debe tratarse como cualquier otra iniciativa
5. Ninguna priorización debe alejarse del valor para el cliente

**Frase clave:**
> "Priorizar no es elegir entre opciones, es tomar en cuenta la mayor cantidad de variables con sentido común."

---

## Glosario

| Término | Definición | Ejemplo |
|---------|------------|---------|
| **RICE** | Framework de priorización: Reach, Impact, Confidence, Effort | Score de 159.5 vs 12.15 |
| **WSJF** | Weighted Shortest Job First (SAFe) | Priorizar por costo de demora |
| **MoSCoW** | Must, Should, Could, Won't Have | Funcionalidades por prioridad |
| **Deuda técnica** | Consecuencia de tomar el camino fácil | Código que funciona pero no es óptimo |
| **Roadmap** | Plan de iniciativas en el tiempo | Trimestral o semestral |

---

## Preguntas de Reflexión

1. **Pregunta aplicada:** Si tuvieras 3 iniciativas y solo tiempo para 1, ¿qué framework usarías y por qué?

2. **Pregunta comparativa:** ¿Cuándo usarías RICE vs WSJF para priorizar?

3. **Pregunta crítica:** ¿Qué pasaría si tu equipo de tecnología nunca participa en la priorización?

---

## Fuentes

| # | Fuente | Tipo | URL |
|---|--------|------|-----|
| 1 | Intercom. *RICE: Simple Prioritization for Product Managers* | Oficial | intercom.com/blog |
| 2 | Scaled Agile Framework. *WSJF* | Oficial | scaledagileframework.com |
| 3 | ProductPlan. *MoSCoW Prioritization* | Oficial | productplan.com/glossary |
