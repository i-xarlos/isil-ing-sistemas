---
name: presentation-prep-skill
description: "Use when: structuring complete presentations with narrative, key points per slide, visual suggestions, and speaker notes. Converts topics, briefings, or documents into slide-by-slide decks."
---

# Preparador de Presentaciones

Convierte un tema, briefing o documento en una presentación estructurada slide por slide. Incluye qué decir, qué mostrar y cómo mantener la atención de la audiencia.

---

## Flujo de Trabajo

### Paso 1: Diagnosticar la Presentación

Preguntar o detectar:

| Pregunta | Propósito |
|----------|-----------|
| ¿Cuál es el tema central? | Definir el contenido |
| ¿Quién es la audiencia? | Adaptar tono y complejidad |
| ¿Cuánto dura la presentación? | Definir número de slides |
| ¿Cuál es el objetivo? (informar, convencer, enseñar) | Enfocar la narrativa |
| ¿Hay material base? (documento, PDF, notas) | Partir de contenido existente |

### Paso 2: Diseñar la Narrativa

Crear la estructura de 3 actos:

```
Apertura (Hook) → Desarrollo (3-5 secciones) → Cierre (CTA o mensaje memorable)
```

### Paso 3: Generar Slides

Crear cada slide con: título → puntos → visual → notas → timing

### Paso 4: Validar Ritmo

Verificar que el timing total sea coherente con la duración indicada.

---

## Formato de Salida

### Encabezado de la Presentación

```md
# {Título de la Presentación}

**Audiencia:** {descripción de quiénes son}
**Duración:** {N} minutos
**Objetivo:** {informar / convencer / enseñar / inspirar}
**Número de slides:** {N}
**Tono:** {formal / casual / técnico / persuasivo}
```

### Estructura Narrativa

```md
## Arco Narrativo

1. **Hook de apertura** — {cómo se capta la atención}
2. **Problema / Contexto** — {por qué importa esto}
3. **Desarrollo** — {3-5 secciones con argumentos}
4. **Solución / Propuesta** — {respuesta al problema}
5. **Cierre** — {CTA o mensaje memorable}
```

### Estructura por Slide

Para cada slide:

```md
### Slide {N}: {Título del slide}

**Puntos clave:**
- {punto 1}
- {punto 2}
- {punto 3}

**Visual sugerido:** {descripción concreta del elemento visual}
- Tipo: {gráfico de barras / imagen / diagrama / cita / captura}
- Contenido: {qué muestra exactamente}

**Notas del ponente:**
{Qué decir en este slide. No es un guion literal, sino puntos clave para guiar la explicación.}

**Tiempo estimado:** {X} segundos
```

---

## Reglas de Diseño

### Regla 1 Slide = 1 Idea

Cada slide debe comunicar **una sola idea principal**. Si necesitas decir algo más, crea otro slide.

### Máximo 3-4 Puntos por Slide

El slide **apoya** al ponente, no lo sustituye. Si el slide tiene mucho texto, la audiencia lee en vez de escuchar.

### Visuales Concretos

No sugerir "algún gráfico" sino específicamente:

- ❌ "Gráfico de ventas"
- ✅ "Gráfico de barras comparando ventas Q1 vs Q2, con 3 barras por categoría ( Producto A, B, C), tendencia al alza"
- ❌ "Imagen de equipo"
- ✅ "Foto de equipo trabajando en oficina moderna, estilo candid, 3 personas en pizarra"
- ❌ "Diagrama de proceso"
- ✅ "Diagrama de flujo horizontal con 4 pasos: Ingreso → Validación → Proceso → Entrega, con ícono en cada paso"

### Notas del Ponente

Las notas deben ser **puntos clave**, no guion literal:

- ❌ "Hoy vamos a hablar sobre la transformación digital que ha sido un factor clave en el desarrollo empresarial de las últimas décadas..."
- ✅ "Contexto: 70% de PYMEs no han iniciado transformación digital. Dato: IDC 2024."

### Hook de Apertura

Empezar con algo que capte atención inmediata:

| Tipo | Ejemplo |
|------|---------|
| **Dato sorprendente** | "El 90% de los datos del mundo se generaron en los últimos 2 años" |
| **Pregunta retórica** | "¿Cuántas apps usas al día? La mayoría no puede responder" |
| **Historia** | "El año pasado, un cliente nos dijo algo que cambió nuestra estrategia..." |
| **Frase impactante** | "No es la especie más fuerte la que sobrevive, sino la que mejor se adapta" |

### Cierre Memorable

Terminar con algo que perdure:

| Tipo | Ejemplo |
|------|---------|
| **Call to Action** | "La próxima semana, implementen UN cambio. Solo uno." |
| **Frase de cierre** | "La tecnología no transforma empresas. La gente que la usa, sí." |
| **Pregunta final** | "¿Qué van a hacer diferente mañana?" |
| **Dato de cierre** | "Si solo el 1% mejora su proceso, esto es lo que pasaría..." |

### Slides de Transición

Incluir un slide de transición entre secciones grandes:

```md
### Slide {N}: Transición

**Título:** {resumen de lo que viene}

**Visual:** {imagen abstracta o fondo con color de sección}

**Notas:** "Ahora pasamos de entender el problema a ver cómo lo resolvemos"

**Tiempo:** 5 segundos
```

---

## Timing por Tipo de Slide

| Tipo de slide | Tiempo sugerido |
|---------------|-----------------|
| Título / portada | 10-15 seg |
| Hook de apertura | 30-45 seg |
| Concepto / idea | 45-60 seg |
| Dato / estadística | 20-30 seg |
| Imagen / historia | 30-45 seg |
| Transición | 5-10 seg |
| Cierre / CTA | 30-45 seg |

**Fórmula rápida:**
- Presentación de 15 min → ~10-12 slides
- Presentación de 20 min → ~12-15 slides
- Presentación de 30 min → ~15-20 slides

---

## Ejemplo de Uso

**Entrada:**
> "Necesito una presentación de 15 minutos sobre IA para directivos de banca"

**Salida parcial:**
```md
# Inteligencia Artificial en Banca: Oportunidades y Estrategia

**Audiencia:** Directivos de banca (C-suite, gerentes de innovación)
**Duración:** 15 minutos
**Objetivo:** Convencer de invertir en IA
**Número de slides:** 12
**Tono:** Ejecutivo, estratégico, sin jerga técnica

---

## Arco Narrativo

1. **Hook** — Dato de mercado que genera urgencia
2. **Problema** — La banca tradicional está perdiendo terreno
3. **Oportunidad** — Casos de éxito en banca con IA
4. **Estrategia** — Cómo empezar sin riesgo
5. **Cierre** — Call to action concreto

---

### Slide 1: Portada

**Título:** Inteligencia Artificial en Banca
**Subtítulo:** Oportunidades, casos de éxito y estrategia de implementación

**Visual sugerido:**
- Tipo: Fondo con imagen de ciudad nocturna + logo de la empresa
- Estilo: Minimalista, colores corporativos

**Notas del ponente:**
{No hablar. Esperar 3 segundos antes de comenzar.}

**Tiempo estimado:** 10 segundos

---

### Slide 2: Hook — El dato que cambia todo

**Puntos clave:**
- El 47% de los bancos que no invirtieron en IA entre 2020-2024 perdieron cuota de mercado (McKinsey 2024)
- Los bancos con IA redujeron costos operativos en 22%

**Visual sugerido:**
- Tipo: Gráfico de barras comparativo
- Contenido: 2 barras horizontales — "Con IA: -22% costos" vs "Sin IA: +8% costos", colores verde vs rojo

**Notas del ponente:**
"Les voy a mostrar un dato que debería preocuparnos. McKinsey publicó que casi la mitad de los bancos que no invirtieron en IA perdieron terreno. Pero hay otro lado: quienes sí lo hicieron, redujeron costos un 22%."

**Tiempo estimado:** 30 segundos
```

---

## Restricciones

- **No más de 20 slides** para presentaciones de 15-20 minutos
- **No slides de solo texto** — cada slide debe tener componente visual
- **Las notas no deben ser guion literal** — puntos clave para guiar
- **Evitar slides con más de 30 palabras** — el slide apoya, no sustituye
- **Incluir al menos 1 slide de transición** entre secciones grandes
- **Sugerir visuales concretos** — tipo, contenido, estilo

---

## Checklist de Calidad

Antes de entregar la presentación, verificar:

- [ ] Hook de apertura que capte atención (no empezar con "Hoy voy a hablar de...")
- [ ] 1 idea por slide
- [ ] Máximo 3-4 puntos por slide
- [ ] Cada slide tiene componente visual sugerido concreto
- [ ] Notas del ponente son puntos clave, no guion
- [ ] Timing total coincide con duración indicada
- [ ] Slide de transición entre secciones grandes
- [ ] Cierre con CTA o mensaje memorable
- [ ] No hay slides con más de 30 palabras
- [ ] Narrativa tiene arco claro (apertura → desarrollo → cierre)
