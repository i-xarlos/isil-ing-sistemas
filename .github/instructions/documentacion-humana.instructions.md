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

---

## Patrón de trabajo con presentaciones (PPT y PDF)

**Cuándo aplicar:** Cuando tienes presentaciones (PowerPoint, PDF) que necesitas convertir en documentación.

### Flujo obligatorio:

1. **Verifica si existe un PDF**
   ```markdown
   ✓ Si existe PDF → úsalo como base
   ✗ Si no existe PDF → convierte el PPT a PDF
   ```

2. **Convierte PPT a PDF (si es necesario)**
   ```bash
   # Usa el script disponible en la carpeta scripts/
   swift scripts/convert_ppt_to_pdf.swift archivo.pptx
   
   # Resultado: archivo.pdf se crea en la misma carpeta
   ```

3. **Extrae contenido del PDF como base para el resumen**
   ```bash
   # Usa el script OCR para documentar imágenes/contenido
   swift scripts/ocr_images.swift
   
   # Esto extrae texto y diagramas del PDF
   ```

4. **Crea el documento Markdown basado en el PDF**
   - Estructura: Diapositiva 1 → Sección 1
   - Copia títulos, conceptos clave
   - Enriquece con explicaciones simples
   - Agrega ejemplos si faltan

5. **Guarda ambos en la carpeta de clase**
   ```
   clase-X/
   ├── tema-descriptor-clase-X.md          (documento nuevo)
   ├── 40097-S0X-PRESENTACION.pdf          (PDF base)
   └── concepto-descriptor-clase-X.png     (imágenes extraídas si aplica)
   ```

**Nota:** El PDF siempre es la "fuente de verdad". El `.md` es la versión estudiable/accesible.

---

## Patrón especial para conceptos complejos (fórmulas, métodos, procesos)

**Cuándo aplicar:** Cuando introduces fórmulas matemáticas, algoritmos, métodos de análisis o procesos con múltiples pasos.

### Estructura paso a paso:

1. **Introduce el concepto en lenguaje simple (1-2 líneas)**
   ```markdown
   **Qué es:** Mide cuántas desviaciones estándar se aleja un punto de la media.
   ```

2. **Muestra la fórmula/ecuación**
   ```markdown
   $$Z = \frac{x - \mu}{\sigma}$$
   ```

3. **Agrega un cuadro de símbolos (OBLIGATORIO si hay fórmula)**
   ```markdown
   | Símbolo | Nombre | Significado |
   |---------|--------|-------------|
   | **Z** | Puntuación Z | Resultado final |
   | **x** | Valor observado | El dato a evaluar |
   | **μ** | Media | Promedio de todos |
   | **σ** | Sigma | Dispersión (desv. est.) |
   ```

4. **Explica visualmente (escala, rango, o diagrama)**
   ```markdown
   ← Muy bajo      Normal      Muy alto →
       |___________|___________|
      Z=-3         Z=0        Z=+3
   ```

5. **Proporciona ejemplo paso a paso (OBLIGATORIO)**
   ```markdown
   Paso 1: [Acción 1]
   Paso 2: [Acción 2]
   ...
   Resultado: [Conclusión]
   ```

6. **Resumo: Cuándo usar y para qué**
   ```markdown
   **Uso:** Detectar anomalías, identificar valores imposibles
   ```

---

## Patrón de Cheat Sheet (Hoja de trucos rápida)

**Para secciones con múltiples métodos, fórmulas o opciones**, agrega un resumen rápido:

1. **Tabla comparativa: Cuál usar cuándo**
   ```markdown
   | Problema | Fórmula/Método | Por qué |
   |----------|---|---|
   | ¿Predecir futuro? | Regresión Lineal | Identifica tendencias |
   | ¿Es esto fraude? | IQR o Z-Score | Detecta anomalías |
   ```

2. **Glosario visual de términos técnicos**
   - Tabla centralizada
   - 1 símbolo/término por fila
   - Qué significa + dónde lo ves

3. **"Regla de Oro" o consejo práctico**
   ```markdown
   > **Regla de Oro:** Cuando veas una fórmula complicada:
   > 1. Identifica cada símbolo
   > 2. Lee qué significa
   > 3. Observa un ejemplo paso a paso
   > 4. ¡La fórmula es solo código, no magia!
   ```

---

## Patrón de Índice de Conceptos Clave

Cuando termines un documento/sección compleja, agrega un mini-índice:

```markdown
### 📌 Lo esencial de esta sección

| Concepto | Para qué | Cuándo |
|----------|----------|--------|
| Regresión Lineal | Predecir valores futuros | Datos con tendencia clara |
| IQR | Detectar anomalías | Fraude, datos extremos |
| Z-Score | Comparar en diferentes escalas | Normalización de datos |
```

---

## Checklist antes de terminar

Verifica que el documento:

- se entiende en una lectura rápida;
- tiene títulos descriptivos;
- usa listas donde ayudan a leer mejor;
- incluye al menos un ejemplo si el tema es abstracto;
- **SI HAY FÓRMULA:** incluye cuadro de símbolos;
- **SI HAY FÓRMULA:** proporciona ejemplo paso a paso;
- **SI HAY MÚLTIPLES OPCIONES:** incluye tabla comparativa "Cuándo usar";
- **SI VIENE DE PPT:** verificaste que existe PDF (o convertiste PPT → PDF);
- **SI VIENE DE PPT:** extrajiste contenido del PDF como base;
- **SI VIENE DE PPT:** guardaste tanto el `.md` como el `.pdf` en la carpeta de clase;
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
