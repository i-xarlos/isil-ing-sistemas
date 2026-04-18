# Plantilla para nuevas clases

Esta plantilla asegura que todas las nuevas clases sigan la estructura, formato y criterios de calidad del repositorio.

---

## Cómo usar esta plantilla

1. **Copia este contenido** a un nuevo archivo Markdown en la carpeta `clase-X/`
2. **Reemplaza los placeholders** (entre corchetes) con tu contenido
3. **Mantén la estructura:** encabezados `##` para secciones, `###` para subsecciones
4. **Sigue las reglas:** frases cortas, ejemplos prácticos, sin jerga innecesaria
5. **Verifica antes de guardar:** ¿se entiende en lectura rápida? ¿hay un ejemplo? ¿conecta con otros conceptos?

---

## Plantilla de Clase

```markdown
# [Nombre del Tema] (Clase X)

**Curso:** [Nombre del Curso] (ISIL, 2026-1)  
**Docente:** [Nombre del Docente]  
**Fecha:** [DD/MM/AAAA]

---

## Resumen de la sesión

[2-3 frases que capten la idea central de la clase. Responde: qué se aprendió y por qué importa.]

---

## [Sección 1: Idea Principal]

[Explica QUÉ es el concepto principal. Define claramente.]

Sirve para:

- [Beneficio 1]
- [Beneficio 2]
- [Beneficio 3]

### Idea clave

[Una frase memorable que capture el concepto más importante.]

---

## [Sección 2: Detalles Clave]

[Desarrolla un aspecto específico del tema. Usa listas o tablas si ayudan a entender.]

### [Subsección si aplica]

- Punto 1
- Punto 2
- Punto 3

### Conexión práctica

[Explica CÓMO se aplica esto en la realidad. Vincula teoría con práctica.]

---

## [Sección 3: Casos Prácticos Vistos en Clase]

### Caso 1: [Nombre descriptivo]

- [Qué pasó o cuál es el contexto]
- [Por qué es relevante para el tema]
- Lección: [Qué aprendemos de esto]

### Caso 2: [Nombre descriptivo]

- [Qué pasó o cuál es el contexto]
- [Por qué es relevante para el tema]
- Lección: [Qué aprendemos de esto]

---

## Comparación Rápida

| Aspecto | Opción A | Opción B |
|---|---|---|
| **Característica 1** | [Descripción] | [Descripción] |
| **Característica 2** | [Descripción] | [Descripción] |
| **Mejor para** | [Contexto] | [Contexto] |

---

## Glosario breve

- **Término 1:** [Definición clara y completa. Responde QUÉ es y POR QUÉ importa.]
- **Término 2:** [Definición clara y completa.]
- **Término 3:** [Definición clara y completa.]

---

## Conceptos relacionados en otros cursos

- **[Otro Curso] — Clase X:** [Conexión con el tema actual.] [Ver notas]([enlace-relativo])

---

## Diagrama Visual (si aplica)

\`\`\`mermaid
flowchart LR
    A["Concepto A"] --> B["Concepto B"]
    B --> C["Resultado"]
    
    style A fill:#e3f2fd
    style C fill:#c8e6c9
\`\`\`

### Explicación del diagrama

[Describe brevemente qué muestra el diagrama y por qué es útil para entender el tema.]

---

## Preguntas de Repaso

1. **[Pregunta 1]** — [Nivel: básico/intermedio/avanzado]
2. **[Pregunta 2]** — [Nivel: básico/intermedio/avanzado]
3. **[Pregunta 3]** — [Nivel: básico/intermedio/avanzado]

> **Regla práctica:** Si no puedes responder estas preguntas después de leer la clase, vuelve a revisar los puntos clave.

---

## Próximos pasos

- [Tema de la próxima clase]
- [Concepto que se profundizará]
- [Aplicación práctica esperada]
```

---

## Checklist de Calidad

Antes de finalizar una clase nueva, verifica:

- [ ] **Claridad:** ¿se entiende en lectura rápida (máximo 15 minutos)?
- [ ] **Estructura:** ¿tiene encabezados claros (`##` y `###`)?
- [ ] **Ejemplos:** ¿cada concepto abstracto tiene un ejemplo o caso práctico?
- [ ] **Conexiones:** ¿hay cross-references a otros conceptos del curso o de otros cursos?
- [ ] **Glosario:** ¿los términos nuevos están definidos completamente?
- [ ] **Visuales:** ¿hay tablas, listas o diagramas donde ayuden a escanear?
- [ ] **Jerga:** ¿evita tecnicismos innecesarios?
- [ ] **Ortografía:** ¿está libre de errores de tipeo y redacción?

---

## Convenciones del Repositorio

### Nombres de archivos

- **Clase n:** `{curso}-{tema-principal}-clase-n.md`
- **Ejemplo:** `arquitectura-empresarial-fundamentos-clase-1.md`

### Encabezados

```markdown
## Sección Principal (##)
### Subsección (###)
#### Detalle si es necesario (####)
```

**NO uses numeración manual (1., 2.1).** Markdown lo maneja automáticamente.

### Énfasis

- **Términos clave:** `**término**` (negrita)
- Notas importantes: `> Nota o regla práctica`
- Conceptos técnicos: \`código\` (monoespaciado)

### Tablas

Usa tablas para comparar opciones o listar características. Facilita escaneo rápido.

### Enlaces internos

```markdown
[Texto del enlace](../../arq-empresarial/clase-1/archivo.md)
```

Usa rutas relativas para que funcionen en cualquier lugar del repositorio.

### Imágenes (si aplica)

- Guardar en la carpeta `clase-X/`
- Nombrar: `{concepto}-{descriptor}-clase-n.png`
- Ejemplo: `arquitectura-dominios-clase-1.png`
- Referencia: `![Descripción](archivo.png)`

---

## Estructura de carpetas para nueva clase

```
2026-1/
└── {curso-name}/
    └── clase-X/
        ├── {curso}-{tema}-clase-X.md      (archivo principal)
        ├── {concepto}-imagen-clase-X.png  (si aplica)
        └── {otro-concepto}-clase-X.png    (si aplica)
```

---

## Ejemplo de contenido bien estructurado

Puedes revisar estas clases como referencia:

- [Arquitectura Empresarial — Clase 1](../2026-1/arq-empresarial/clase-1/arquitectura-empresarial-fundamentos-clase-1.md)
- [Customer Centricity TI — Clase 1](../2026-1/customer-centricity-ti/clase-1/customer-centricity-agilidad-ti-clase-1.md)
- [Diseño de Soluciones con IA — Clase 1](../2026-1/diseno-soluciones-ia/clase-1/diseno-soluciones-ia-introduccion-clase-1.md)

Imita su estructura, tono y nivel de detalle.

---

**Último recordatorio:** El criterio de éxito es que un estudiante entienda **qué es**, **para qué sirve**, **cómo funciona**, **por qué importa** y vea un **caso real de aplicación**. Si tu clase responde estas 5 preguntas, está lista.
```

---

## Cómo agregar un nuevo curso

Si el tema no encaja en ningún curso existente y merece su propia carpeta, sigue estos pasos.

### Paso 1 — Crear la estructura de carpetas

```bash
mkdir -p 2026-1/{nombre-del-curso}/clase-1
```

Convención del nombre de la carpeta del curso:
- Solo minúsculas y guiones (`-`), sin espacios ni caracteres especiales.
- Ejemplos: `customer-centricity-ti`, `diseno-soluciones-ia`, `analisis-estadistico-data-mining`.

### Paso 2 — Crear el archivo Markdown de la primera clase

Ruta obligatoria:

```
2026-1/{nombre-del-curso}/clase-1/{nombre-del-curso}-{tema-principal}-clase-1.md
```

Ejemplo real:

```
2026-1/customer-centricity-ti/clase-1/customer-centricity-agilidad-ti-clase-1.md
```

Usa la plantilla de clase que aparece más arriba como base del contenido.

### Paso 3 — Agregar el bloque del curso en README.md

En el `README.md` de la raíz, añade una nueva sección bajo `## Cursos` con este formato:

```markdown
### {Nombre del Curso} (`{nombre-del-curso}`)

**Docente:** {Nombre completo del docente}

| Semana | Tema | Notas |
|---|---|---|
| 1 | {Tema de la clase 1} | [Ver](2026-1/{nombre-del-curso}/clase-1/{archivo}-clase-1.md) |

---
```

Ejemplo real (curso Customer Centricity TI):

```markdown
### Customer Centricity TI (`customer-centricity-ti`)

**Docente:** Henry Joseph Paredes del Alamo

| Semana | Tema | Notas |
|---|---|---|
| 1 | Customer Centricity y Agilidad en TI | [Ver](2026-1/customer-centricity-ti/clase-1/customer-centricity-agilidad-ti-clase-1.md) |

---
```

### Paso 4 — Actualizar la sección `## Estructura` en README.md

Agrega la carpeta del nuevo curso al árbol de estructura que aparece al final del `README.md`:

```
├── {nombre-del-curso}/
│   ├── clase-1/
│   │   └── {archivo}-clase-1.md
│   └── ...
```

### Paso 5 — Agregar los conceptos clave al índice

Abre `_meta/INDICE-CONCEPTOS.md` y agrega una nueva sección con los términos clave del curso:

```markdown
## Conceptos de {Nombre del Curso}

| Concepto | Definición breve | Dónde aparece |
|---|---|---|
| **{Término}** | {Definición en una línea} | [{Curso} — Clase 1](../2026-1/{nombre-del-curso}/clase-1/{archivo}-clase-1.md) |
```

### Checklist para nuevo curso

- [ ] Carpeta creada en `2026-1/{nombre-del-curso}/clase-1/`
- [ ] Archivo Markdown creado con nombre semántico
- [ ] Encabezado del Markdown cumple el formato estándar (título, curso, docente, fecha)
- [ ] Bloque del curso agregado en `README.md` bajo `## Cursos`
- [ ] Árbol `## Estructura` actualizado en `README.md`
- [ ] Conceptos clave registrados en `_meta/INDICE-CONCEPTOS.md`
