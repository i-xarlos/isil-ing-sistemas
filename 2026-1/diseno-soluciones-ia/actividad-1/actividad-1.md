# Actividad 1 — Modelos Frontera en Desarrollo de Software: Benchmark SWE-bench Verified

**Curso:** Diseño de Soluciones con IA - 6508.202610 (ISIL, 2026-1)  
**Docente:** Omar David Visitación Romero  
**Fecha:** 16/04/2026

---

## 1. ¿Qué es SWE-bench Verified?

**SWE-bench Verified** es un benchmark de referencia para medir la capacidad de un modelo de IA para resolver problemas reales de ingeniería de software.

- Toma **issues reales** de repositorios públicos en GitHub (Python).
- El modelo debe leer el issue, localizar el código relevante y proponer un parche que pase los tests automáticos del repositorio.
- "Verified" significa que cada problema fue revisado manualmente para asegurarse de que es solucionable y que el test de validación es correcto.
- La puntuación es el **porcentaje de issues resueltos** de forma autónoma por el modelo.

> **¿Por qué importa?** A diferencia de HumanEval (que evalúa funciones aisladas), SWE-bench Verified refleja el trabajo real de un equipo de software: entender contexto, leer código existente y producir un fix funcional.

---

## 2. Modelos comparados

Se seleccionaron **2 modelos frontera por compañía**, priorizando los más recientes y con cifras públicas disponibles en el momento de redacción:

| Proveedor | Modelo | Tipo |
|---|---|---|
| Anthropic | Claude 3.5 Sonnet (upgraded) | Balanceado (velocidad + capacidad) |
| Anthropic | Claude Opus 4.5 | Flagship / máxima capacidad |
| OpenAI | o3 | Razonamiento extendido |
| OpenAI | GPT-4.1 | Optimizado para coding |

---

## 3. Tabla comparativa — SWE-bench Verified

| Proveedor | Modelo | SWE-bench Verified | Fuente | Notas para desarrollo de software |
|---|---|---|---|---|
| Anthropic | Claude 3.5 Sonnet (upgraded) | **49,0 %** | [Anthropic Research (oficial)](https://www.anthropic.com/research/swe-bench-sonnet) | Buen equilibrio entre velocidad y calidad; sólido para tareas de coding agentic cotidianas. |
| Anthropic | Claude Opus 4.5 | **80,9 %** *(tercero)* | Anuncio oficial: [anthropic.com/news/claude-opus-4-5](https://www.anthropic.com/news/claude-opus-4-5) · Cifra reportada por: [itpro.com](https://www.itpro.com/technology/artificial-intelligence/anthropic-announces-claude-opus-4-5-the-new-ai-coding-frontrunner) | Máxima capacidad de Anthropic; ideal para agentes autónomos de largo recorrido. La cifra 80,9 % proviene de medios especializados, no de la publicación oficial de benchmarks. |
| OpenAI | o3 | **71,7 %** | [OpenAI — o3 System Card (oficial)](https://openai.com/index/openai-o3-system-card/) | Modelo de razonamiento extendido; fuerte en debugging complejo y refactorizaciones que requieren planificación. Mayor latencia que modelos estándar. |
| OpenAI | GPT-4.1 | **54,6 %** | [OpenAI — GPT-4.1 (oficial)](https://openai.com/index/gpt-4-1/) | Diseñado específicamente para coding; mejor relación velocidad/costo entre los cuatro. Contexto de 1 M tokens útil para repositorios grandes. |

> **Nota sobre cifras marcadas como *(tercero)*:** cuando la puntuación exacta en SWE-bench Verified no aparece en el anuncio oficial del modelo, se indica la fuente secundaria utilizada. Siempre verifica el anuncio oficial para información actualizada sobre precios y disponibilidad.

---

## 4. Interpretación rápida

### ¿Qué dicen los números?

- **Opus 4.5** lidera ampliamente (80,9 %), pero su cifra viene de terceros. Es el más capaz para trabajo agentic complejo.
- **o3** (71,7 %) destaca en razonamiento: ideal para problemas que requieren varios pasos de análisis antes de escribir código.
- **GPT-4.1** (54,6 %) es la opción más práctica de OpenAI: rápido, barato y diseñado para flujos de coding.
- **Claude 3.5 Sonnet** (49,0 %) tiene la cifra oficial más respaldada del grupo y sigue siendo un modelo competitivo para uso diario.

### Factores adicionales a considerar

- **Latencia**: o3 tarda más por su razonamiento extendido. Para code review en tiempo real, GPT-4.1 o Claude Sonnet son más ágiles.
- **Contexto**: GPT-4.1 ofrece 1 M tokens de contexto; útil para analizar repositorios completos.
- **Agentic workflows**: Opus 4.5 y o3 están optimizados para ejecutar múltiples pasos de forma autónoma.
- **Costo**: GPT-4.1 es el más económico del grupo; Opus 4.5 es el más costoso.

---

## 5. Entregable del estudiante

### Consigna

Completa las siguientes tareas y documenta tus respuestas en un archivo `entregable-actividad-1.md` dentro de esta misma carpeta.

#### Tarea 1 — Verifica y amplía la tabla

1. Revisa las fuentes oficiales listadas en la tabla.
2. Busca si existen cifras actualizadas para alguno de los cuatro modelos.
3. Añade una columna **"Contexto máximo (tokens)"** con el valor de cada modelo.

#### Tarea 2 — Interpreta los resultados

Responde brevemente (2–3 oraciones por pregunta):

1. ¿Qué diferencia práctica existe entre un modelo con 49 % y uno con 80 % en SWE-bench? ¿Cuándo importa esa diferencia?
2. ¿Por qué un modelo puede tener alta puntuación en HumanEval pero baja en SWE-bench Verified?
3. ¿Qué limitaciones tiene SWE-bench como indicador único de calidad para un equipo de desarrollo?

#### Tarea 3 — Recomendación por escenario

Para cada uno de los tres escenarios de desarrollo de software, elige **uno** de los cuatro modelos y justifica tu elección en 3–5 líneas:

| Escenario | Modelo elegido | Justificación |
|---|---|---|
| **A. Corrección de bugs** (bugfixing): el modelo debe leer un traceback, localizar el error y proponer un parche. | | |
| **B. Revisión de código** (code review): el modelo revisa un pull request y sugiere mejoras de legibilidad, seguridad y rendimiento. | | |
| **C. Generación de tests**: dado un módulo sin cobertura, el modelo genera tests unitarios que aumenten la cobertura al menos al 80 %. | | |

> **Criterio de evaluación:** no hay una respuesta única correcta. Se evalúa la coherencia entre el escenario, las cifras del benchmark y la justificación.

---

## 6. Recursos adicionales

- [SWE-bench — Sitio oficial](https://www.swebench.com/)
- [Anthropic — Blog de investigación](https://www.anthropic.com/research)
- [OpenAI — Modelos y capacidades](https://platform.openai.com/docs/models)
- [Leaderboard SWE-bench (Papers with Code)](https://paperswithcode.com/sota/software-engineering-on-swe-bench-verified)
