---
applyTo: "**/*.md"
---

# Skill: documentación humana

Cuando crees o edites documentos Markdown en este repositorio, escribe para personas que quieren entender rápido, no para impresionar con jerga.

## Objetivo

- Prioriza claridad, legibilidad y utilidad práctica.
- Haz que el contenido se pueda escanear en pocos segundos.
- Explica conceptos complejos con lenguaje simple, sin perder precisión.
- Conecta la teoría con ejemplos reales y cercanos.

## Reglas de escritura

- Escribe en español claro y natural.
- Usa frases cortas y directas.
- Introduce primero la idea principal y luego los detalles.
- Evita párrafos largos de más de 5 líneas si puedes dividirlos.
- Evita jerga innecesaria; si un término técnico es importante, defínelo en una línea.
- Evita repetir la misma idea con palabras distintas.
- No rellenes con texto genérico.

## Estructura recomendada

Usa esta secuencia siempre que aplique:

1. Qué es
2. Para qué sirve
3. Cómo funciona
4. Ejemplo práctico
5. Idea clave o conclusión

## Formato visual

**Objetivo: Maximizar escaneo visual. Personas ocupadas necesitan captar la idea en segundos.**

- Usa títulos `##` y `###` para dividir temas.
- Usa listas con viñetas para conceptos y listas numeradas para pasos.
- Resalta términos clave con negrita solo cuando aporte escaneo visual.
- Mantén una idea principal por sección.
- Si una sección mezcla varias ideas, divídela.

### Herramientas visuales obligatorias:

1. **Tablas:** Úsalas cuando compares 3+ opciones, tipos, o características. Ejemplo:
   - Comparar Narrow AI vs Generativa vs ML vs Deep Learning
   - Listar sectores + aplicaciones + ROI
   - Métricas de evaluación con cuándo usarlas
   
2. **Cuadros destacados (bloques de código/cita):** Para ideas críticas:
   - Definiciones clave
   - Reglas de oro o lecciones aprendidas
   - Advertencias o puntos no negociables
   - Usa `> **Texto en negrita:** Explicación` para efectos visuales

3. **Listas viñetadas vs numeradas:**
   - Viñetas: conceptos sin orden, características, ejemplos variados
   - Numeradas: pasos, fases, procesos secuenciales (ej. 8 fases de IA)

4. **Diagramas de flujo o ASCII:** Para procesos complejos:
   - Ciclos de desarrollo (ej. fase 1 → fase 2 → ... → fase 8)
   - Arquitecturas o relaciones entre componentes
   - Flujos de datos

5. **Bloques resumen:** Para información densa:
   - Tabla resumen con 8-10 filas máximo
   - Glosarios visuales para términos técnicos
   - Checklist con casillas ([ ]) para verificación

6. **Ejemplos prácticos enriquecidos:**
   - Lado a lado: concepto abstracto | ejemplo concreto
   - Scenario: "En banca, si X entonces Y porque Z"
   - Números: % de mejora, duración, impacto cuantificado

## Ejemplos y comprensión

- Incluye al menos un ejemplo concreto cuando expliques un concepto abstracto.
- Prefiere ejemplos del mundo real: banca, gobierno, retail, salud, educación, Smart Cities.
- Si comparas dos conceptos, muestra primero la diferencia en una tabla o lista simple.
- Si nombras un framework, explica su valor práctico antes de entrar en detalle.

## Estilo para agentes

- No escribas como manual burocrático.
- No escribas como paper académico.
- No asumas conocimiento previo si puedes aclararlo en una línea.
- Si hay ambigüedad, elige la versión más fácil de entender.
- Si un texto suena correcto pero difícil de leer, simplifícalo.

## Patrón de Índices en READMEs

**Regla obligatoria:** Cada carpeta de CURSO debe tener un `README.md` que actúe como índice centralizado.

### Estructura requerida en cada README de curso:

1. **Encabezado:** Nombre del curso, programa, período
2. **Propósito:** 1-2 líneas explicando la esencia del curso
3. **Tabla "Contenido por Clase"** con:
   - Número de clase/actividad
   - Tema
   - Descripción breve (1 línea)
   - Enlace directo 📄 al archivo `.md` correspondiente
   
4. **Sección "Índice Completo de Recursos"** que agrupa por clase/actividad:
   - Subsección para cada clase/actividad
   - Lista de archivos `.md` con enlace
   - Mención de gráficos asociados (si los hay)

5. **Enlaces finales** a recursos transversales (INDICE-CONCEPTOS, README principal)

### Ejemplo de tabla:
```markdown
| # | Tema | Descripción | Recurso |
|---|------|-------------|---------|
| 1 | **Tema 1** | Breve descripción | 📄 [archivo-clase-1.md](./clase-1/archivo-clase-1.md) |
| 2 | **Tema 2** | Breve descripción | 📄 [archivo-clase-2.md](./clase-2/archivo-clase-2.md) |
```

### Validación automática:
- Siempre verifica que los archivos `.md` existan antes de agregar enlaces
- Si se agrega una nueva clase, actualiza inmediatamente el README del curso
- Mantén sincronizados: estructura de carpetas ↔ índices en README

## Checklist antes de terminar

Verifica que el documento:

- se entiende en una lectura rápida;
- tiene títulos descriptivos;
- usa listas donde ayudan a leer mejor;
- incluye al menos un ejemplo si el tema es abstracto;
- evita bloques densos de texto;
- deja clara la idea principal de cada sección;
- **si es README de curso:** incluye tabla de contenidos con enlaces directos a `.md`;
- **si es README de curso:** tiene sección "Índice Completo de Recursos" agrupada por clase.

## Preferencias para este repositorio

- Mantén el enfoque en aprendizaje y estudio.
- Relaciona conceptos de arquitectura empresarial con casos reales.
- Destaca la conexión entre negocio, datos, aplicaciones y tecnología.
- Si el contenido menciona **TOGAF**, **Zachman** o **ADM**, explica su propósito en términos simples antes de profundizar.
- Prioriza la navegación fácil: índices, enlaces internos, estructura clara.
