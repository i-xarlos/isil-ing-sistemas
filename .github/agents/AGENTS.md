# AGENTS.md

## Propósito

Este repositorio contiene apuntes y materiales de estudio de distintos cursos de ISIL.

El objetivo de cualquier agente en este workspace es ayudar a crear, mejorar y organizar documentación que sea fácil de entender para humanos, especialmente para estudiantes o profesionales que necesitan revisar conceptos con rapidez.

## Prioridades del agente

1. Prioriza claridad antes que sofisticación.
2. Escribe en español claro, técnico pero fácil de leer.
3. Explica primero la idea principal y luego los detalles.
4. Conecta teoría con aplicación práctica.
5. Mantén consistencia con la estructura del repositorio.

## Cómo debe escribir un agente

- Usa frases cortas y directas.
- Evita jerga innecesaria.
- Si aparece un término técnico importante, defínelo en una línea simple.
- Evita párrafos densos.
- Usa listas cuando mejoren el escaneo visual.
- Resume sin perder precisión.
- Si un concepto es abstracto, acompáñalo con un ejemplo real.

## Regla clave de legibilidad

Todo documento debe poder responder rápidamente estas preguntas:

- qué es;
- para qué sirve;
- cómo funciona;
- por qué importa;
- en qué caso real se aplica.

Si el texto no responde estas preguntas con facilidad, simplifícalo.

## Contexto del contenido

El repositorio puede contener varios cursos. Cuando trabajes dentro de una carpeta de curso:

- identifica primero el curso correcto;
- adapta el vocabulario al tema real de esa carpeta;
- usa ejemplos del dominio correspondiente;
- no mezcles conceptos de otro curso si no aportan valor.

Si el contenido es de arquitectura empresarial, puedes apoyarte en temas como:

- **TOGAF**
- **Zachman**
- **ADM**
- arquitectura de negocio
- arquitectura de datos
- arquitectura de aplicaciones
- arquitectura de tecnología

## Estructura esperada del repositorio

- Cada curso vive en su propia carpeta, por ejemplo: `{year-semestre}/{curso}/`.
- Cada clase vive en su propia carpeta dentro del curso: `{year-semestre}/{curso}/clase-X/`.
- **OBLIGATORIO:** Cada carpeta de curso debe tener un `README.md` que actúe como **índice centralizado**.
- El README de curso debe incluir:
  - Tabla de contenidos con enlaces directos a cada archivo `.md`
  - Sección "Índice Completo de Recursos" agrupada por clase/actividad
  - Menciones de gráficos asociados
  - Enlaces a recursos transversales
- No crees subcarpetas dentro de `clase-X/`.
- Usa nombres semánticos para archivos Markdown e imágenes.
- Si agregas una nueva clase, actualiza también el `README.md` del curso con el nuevo índice.

## Reglas al crear documentación

- Usa `##` para secciones principales y `###` para subsecciones.
- Mantén una idea principal por sección.
- Usa listas con viñetas para conceptos y listas numeradas para pasos.
- Usa negrita solo para ayudar a escanear términos clave.
- No escribas como documento burocrático ni como paper académico.

## Regla especial para Markdown

Cuando trabajes sobre archivos `.md`, sigue también las **instrucciones de escritura**: `.github/instructions/writing.instructions.md`.

Ese archivo contiene estándares específicos de documentación humana y tiene prioridad práctica para mantener la redacción clara, escaneable y útil.

Si el archivo está dentro de una carpeta `clase-X/`, sigue también las **instrucciones de clase**: `.github/instructions/clase.instructions.md`.

Si el archivo está dentro de una carpeta `actividad-X/`, sigue también las **instrucciones de actividad**: `.github/instructions/actividad.instructions.md`.

## Regla especial para imágenes

Cuando una carpeta de clase o actividad tenga imágenes `.png`, `.jpg`, `.jpeg` o `.gif` cuyo contenido no esté documentado en el Markdown correspondiente, usa el script OCR para extraer el texto y enriquecer el documento.

Sigue las **instrucciones de imágenes**: `.github/instructions/images.instructions.md`.

Ese archivo describe:
- cómo ejecutar el script `scripts/ocr_images.swift` desde la raíz del repositorio;
- el patrón de renombrado semántico obligatorio;
- el patrón de enriquecimiento paso a paso;
- cómo integrar el texto extraído en el Markdown sin pegar texto crudo;
- el checklist de calidad para imágenes documentadas.

## Qué evitar

- Texto inflado o redundante.
- Definiciones circulares.
- Explicaciones demasiado abstractas sin ejemplo.
- Nombres genéricos de archivo.
- Contenido fuera de la carpeta correcta de clase.
- Encabezados con curso, docente o fecha copiados de otra carpeta.

## Criterio de calidad

Antes de dar por terminado un cambio, verifica que:

- el documento se entiende en lectura rápida;
- la estructura visual ayuda a estudiar;
- hay al menos un ejemplo cuando el concepto lo necesita;
- el contenido respeta el curso real de la carpeta y no arrastra datos de otra clase;
- el contenido conecta negocio, datos, aplicaciones y tecnología cuando aplique;
- el resultado parece escrito para personas, no para una máquina.

## Workflow Git: Branches y Pull Requests

**REGLA OBLIGATORIA:** SIEMPRE crear un PR para cualquier cambio en el repositorio. NUNCA commitear directamente a `main`.

Cuando hajas realizado cambios importantes de documentación, **DEBES usar GitHub CLI (`gh`)** para crear PRs.

### Requisito Previo
Instala GitHub CLI si no lo tienes: https://cli.github.com/

Verifica que está instalado:
```bash
gh --version
```

### 1. Crear un Branch

```bash
# Crea un nuevo branch con nombre descriptivo
git checkout -b feat/descripcion-cambios
```

### 2. Hacer Commit

```bash
git add .
git commit -m "feat: descripcion clara del cambio

- Detalle 1 del cambio
- Detalle 2 del cambio"
```

### 3. Crear Pull Request con `gh` (OBLIGATORIO)

**DEBES usar GitHub CLI (`gh`) para crear PRs.** No hagas commits directos a `main`.

```bash
# Crea el PR directamente con gh
gh pr create \
  --title "Tipo: Descripción breve del cambio" \
  --body "Descripción detallada del cambio, cambios principales, archivos modificados, etc."

# O especificando rama target:
gh pr create \
  --base main \
  --title "feat: Tu descripción aquí" \
  --body "Descripción del PR"
```

**Ejemplo real:**
```bash
gh pr create \
  --title "feat: Agregar Clase Processor skill para automatizar procesamiento de clases" \
  --body "## Descripción
Implementa automation para convertir PPTX → PDF con renombrado semántico.

## Cambios Principales
- Creado Agent 'Clase Processor'
- Creado Skill '/clase-processor'
- Documentado en AGENTS.md
- Procesada Clase 10 con PDF + Markdown

## Archivos Modificados
- .github/agents/clase-processor.agent.md (NUEVO)
- .github/skills/clase-processor/SKILL.md (NUEVO)
- .github/agents/AGENTS.md (actualizado)
- {year-semestre}/direccion-estrategica-de-datos/clase-10/ (2 nuevos)

## Verificación
- [x] Skill aparece en chat con /clase-processor
- [x] Convenciones respetadas
- [x] Clase 10 procesada exitosamente"
```

**Ver estado del PR:**
```bash
gh pr status
```

**Mergear PR (cuando esté aprobado):**
```bash
gh pr merge <number> --squash
```

### Convenciones de Nombres (Branch y Commits)

- **feat/**: Para nuevas clases o contenido → `feat/clase-6-insights`
- **docs/**: Para mejoras de documentación → `docs/actualizar-readme`
- **fix/**: Para correcciones → `fix/corregir-enlaces-rotos`

**Commit messages:**
```
feat: descripción clara del cambio

- Detalle 1
- Detalle 2
- Detalle 3
```

### Template de PR

Cuando crees un PR, **usa `gh pr create` con esta estructura:**

```bash
gh pr create \
  --title "type: Descripción breve (máx 50 caracteres)" \
  --body "## Descripción
Una línea clara de qué cambio haces.

## Tipo de Cambio
- [x] Nueva clase/contenido
- [ ] Actualización de documentación
- [ ] Corrección de errores

## Cambios Principales
- Agregada clase X con tema Y
- Actualizado README del curso Z
- Incluidos N ejemplos prácticos

## Archivos Modificados
- {year-semestre}/{curso}/clase-X/...
- {year-semestre}/{curso}/README.md

## Verificación
- [x] Contenido sigue la guía de AGENTS.md
- [x] Nombres de archivo son semánticos
- [x] README actualizado con nuevos enlaces
- [x] Ejemplo práctico incluido cuando aplica"
```

**No uses plataforma web de GitHub** para crear PRs manualmente. **Usa siempre `gh`.**

### Importante

- **DEBES usar `gh`** para crear PRs. No es opcional.
- **NO commits directos a `main`**: Siempre crea un branch primero
- **PR antes de merge**: Los cambios deben revisarse antes de fusionarse
- **Un tema por PR**: Agrupa cambios relacionados, no mezcles temas
- **Mensajes claros**: Usa la estructura `type: descripcion` en commits
- **Verificar instalación**: `gh --version` antes de crear PR

---

## Agentes Especializados Disponibles

### 1. **Skill Orchestrator** — `/skill-orchestrator` Agent

**Descripción:** Orquesta múltiples skills para tareas complejas que requieren más de una herramienta. Coordina ejecución, pasa outputs entre skills y valida resultados.

**Ubicación del agent:** `.github/agents/skill-orchestrator.agent.md`

**Cuándo usarlo:**
- Cuando una tarea requiere 2+ skills
- Cuando hay dependencias entre skills
- Cuando se necesita una cadena de procesamiento completa

**Cadenas predefinidas:**

| Cadena | Skills | Para qué |
|--------|--------|----------|
| **Documentación de Clase** | clase-processor → structured-notes → flowchart → mermaid-analysis | Clase completa con todo |
| **Concepto Complejo** | complex-concept → structured-notes → flowchart | Explicación + apuntes + diagrama |
| **Presentación** | structured-notes → complex-concept → presentation-prep | Preparar presentación |
| **Trabajo Académico** | structured-notes → academic-paper → conventional-commit | Research + documento + commit |
| **Plan de Aprendizaje** | learning-roadmap → workflow → conventional-commit | Plan + tareas + commit |

**Cómo invocarlo:**
1. En el chat, escribe `/skill-orchestrator`
2. Describe la tarea compleja a orquestar
3. El agente identificará y ejecutará los skills necesarios

**Ejemplos:**
- "Documenta la clase 5 de Arquitectura Empresarial con todo"
- "Prepara una presentación sobre los conceptos vistos en la clase 3"
- "Crea un plan de aprendizaje completo sobre IoT con commits"

**Resultado esperado:**
```
🔄 Orquestando: {tarea}
Paso 1/N: Ejecutando {skill}...
   ✅ Output generado
Paso 2/N: Ejecutando {skill}...
   ✅ Output generado
...
✅ Tarea completada: {resumen de outputs}
```

---

### 2. **Clase Processor** — `/clase-processor` Skill

**Descripción:** Automatiza conversión de archivos de clase (PPTX → PDF), generación de resúmenes estructurados, y validación de convenciones.

**Ubicación del skill:** `.github/skills/clase-processor/SKILL.md`

**Acciones disponibles:**

| Acción | Descripción | Input | Output |
|--------|------------|-------|--------|
| 🎬 **Convertir PPTX a PDF** | Convierte presentación a PDF renombrado semánticamente | Ruta a `archivo.pptx` | `tema-descriptor-clase-N.pdf` |
| 📝 **Generar Resumen** | Crea Markdown con conceptos, Mermaid, ejemplos y glosario | "con resumen" | `tema-descriptor-clase-N.md` |
| 🔗 **Validar Estructura** | Verifica convenciones, nombres y ubicaciones | Archivos generados | Reporte de validación |
| 📄 **Eliminar PPTX** | Borra archivo original tras conversión exitosa | Confirmación | ✅ Archivo eliminado |

**Cómo invocarlo:**
1. En el chat, escribe `/clase-processor`
2. Proporciona la ruta al PPTX o una descripción clara
3. Especifica si quieres solo PDF o PDF + Markdown con resumen

**Ejemplos:**
- "Procesa clase 10 de Dirección Estratégica de Datos"
- "Convierte el PPTX con resumen completo y diagramas"
- "Ruta: /Users/carlosgil/isil/{year-semestre}/diseno-soluciones-ia/clase-9/archivo.pptx"

**Resultado esperado:**
```
✅ Archivos generados en: {year-semestre}/{curso}/clase-N/
   - tema-descriptor-clase-N.pdf (siempre)
   - tema-descriptor-clase-N.md (opcional, si pidió resumen)
   - PPTX original eliminado automáticamente
```

---

**Última actualización**: 11 de junio de 2026 | **Alcance**: ISIL {year-semestre} Multi-Curso
