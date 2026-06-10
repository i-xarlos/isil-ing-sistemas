---
name: mermaid-analysis-documentation
description: Document Mermaid opportunities analysis with structured format, priority matrix, and cross-course reusability mapping. Use when creating comprehensive documentation of where diagrams would improve clarity.
applyTo: "**/ANALISIS-OPORTUNIDADES-*-MERMAID.md"
---

# Mermaid — Documentación de Análisis de Oportunidades

Estándares y estructura obligatoria para documentar análisis de dónde agregar diagramas Mermaid en la documentación de cursos.

---

## 📋 Encabezado Obligatorio

Todo análisis de oportunidades Mermaid debe comenzar con:

```md
# Análisis de Oportunidades de Mermaid — {Tema o Curso}

**Fecha:** DD/MM/AAAA  
**Alcance:** {Descripción breve del alcance, p.ej. "Archivos .md en carpetas 2026-1/*/clase-*/"}  
**Objetivo:** {Qué se busca lograr con los diagramas}
```

### Reglas del Encabezado

- Título claro indicando qué se analizó
- Fecha en formato `DD/MM/AAAA`
- Alcance: especificar carpetas, archivos o criterios de selección
- Objetivo: alineado con la estrategia de documentación

---

## 1. Resumen Ejecutivo

Sección obligatoria que aparece INMEDIATAMENTE después del encabezado.

### Estructura

```md
## 📊 Resumen Ejecutivo

Se analizaron **{N}** archivos en **{N}** {cursos/secciones}. 
Identificadas **{N}** oportunidades de {nivel} valor para visualización con Mermaid. 

Priorizadas por:
1. Impacto visual (cuánto mejora la comprensión)
2. Complejidad de relaciones (difícil de entender en texto)
3. Oportunidad de reutilización entre cursos

---

### Resumen por Prioridad
- ⭐⭐⭐ Máxima: {N} oportunidades
- ⭐⭐ Alta: {N} oportunidades  
- ⭐ Media: {N} oportunidades
- Total: {N} oportunidades identificadas
```

### Reglas

- Incluir estadísticas principales (# de archivos, # de oportunidades)
- Mencionar los criterios de priorización utilizados
- Desglose por nivel de prioridad obligatorio

---

## 2. Secciones de Prioridad

Organizar todas las oportunidades por nivel: Máxima, Alta, Media, Baja.

### Encabezado de Sección

```md
## 🎯 TOP PRIORIDADES (Máximo impacto)
### 1. ⭐⭐⭐ {Nombre claro del concepto/proceso}
```

### Estructura de Cada Oportunidad

```md
### {N}. ⭐⭐⭐ {Síntesis clara del concepto}

**Archivo:** [`ruta/archivo.md`](link#L123-L140)  
**Línea aproximada:** 123-140  
**Tipo de diagrama:** **{Flowchart/Gantt/Scatterplot/Venn/etc.}**  
**Dificultad sin diagrama:** 🔴 Muy difícil

**Descripción:** {Explicación en 2-3 líneas del qué, para qué y por qué mejora con diagrama}

**Ejemplo visual (borrador ASCII):**
```
Elemento A
  ├─ Subelemento A1
  └─ Subelemento A2
      ↓
Elemento B
```

**Valor agregado:** {Concretamente qué aprenderá el estudiante o evitará confundir}

**Reutilizable:** Sí/No; si sí, indicar dónde más aplica este patrón

**Prioridad:** ⭐⭐⭐
```

### Reglas para Oportunidades

- **Archivo:** Link clickeable a la carpeta exacta + rango de líneas
- **Tipo de diagrama:** SIEMPRE especificar (ver tabla de tipos abajo)
- **Dificultad:** Indicar con emoji: 🔴 (muy difícil) / 🟡 (moderado) / 🟢 (fácil)
- **Descripción:** Breve pero completa — quién lee debe entender inmediatamente
- **Ejemplo ASCII:** Bosquejo visual que ilustre la estructura
- **Valor agregado:** No es evidente; explicar qué evita el diagrama (confusión, densidad, mal entendimiento)
- **Reutilizable:** Identificar si el patrón aplica en otros archivos/cursos
- **Prioridad:** Consistente con matriz 3×3 (Dificultad × Complejidad × Reutilización)

### Tipos de Diagrama Permitidos

| Tipo | Cuándo Usar | Ejemplo |
|------|-------------|---------|
| **Flowchart lineal** | Procesos secuenciales | 6 fases KDD |
| **Flowchart circular** | Ciclos iterativos | Sprint, retroalimentación |
| **Flowchart condicional** | Árboles de decisión | Si-entonces-sino |
| **Gantt chart** | Cronogramas, duraciones | Fase 1 (6-12m), Fase 2 (12-18m) |
| **Scatterplot/XY** | Matrices 2×2 de priorización | Impacto vs Esfuerzo |
| **Venn diagram** | Relaciones/intersecciones | CX ⊃ UX ⊃ UI |
| **Table/Heatmap** | Matriz comparativa | Errores Tipo I vs II |
| **Timeline** | Evolución temporal | Rol TI: 1990s → 2010s → 2020s |
| **Sequence diagram** | Interacciones entre roles | Scrum Master ↔ Team Dev ↔ PO |
| **Class/Entity diagram** | Relaciones de datos | Capas de arquitectura |

---

## 3. Tabla Resumen Consolidada

Sección **obligatoria** que lista TODAS las oportunidades identificadas.

### Estructura

```md
## 📋 LISTA COMPLETA ({N} Oportunidades Identificadas)

### Por Archivo

| # | Archivo | Clase | Línea | Tipo | Descripción | Prioridad |
|---|---------|-------|-------|------|-------------|-----------|
| 1 | arq-clase-5 | 5 | 171-220 | Flowchart | 3 Olas de Transformación | ⭐⭐⭐ |
| 2 | arq-clase-4 | 4 | 175-195 | Flowchart circular | Ciclo Virtuoso Gobernanza | ⭐⭐⭐ |
| 3 | stat-clase-3 | 3 | 80-120 | Flowchart | Flujo Pruebas Hipótesis | ⭐⭐⭐ |
```

### Reglas

- Columnas mínimas: #, Archivo, Clase, Línea, Tipo, Descripción, Prioridad
- Ordenar por prioridad (⭐⭐⭐ primero)
- Mantener consistencia de nombres entre secciones de detalle y tabla
- Usar emoji de estrella para prioridad (copiar exactamente)

---

## 4. Análisis Transversal

Sección **obligatoria** que identifica patrones reutilizables entre cursos.

### Estructura

```md
## 🔄 OPORTUNIDADES DE REUTILIZACIÓN ENTRE CURSOS

### Ciclos que se Repiten

1. **{Nombre del Patrón}**
   - Curso A (Clase X): {descripción breve}
   - Curso B (Clase Y): {descripción breve}
   - **Reutilización:** {Cómo reutilizar; base + personalizaciones}

2. **{Otro Patrón}**
   - ...
```

### Reglas

- Identificar al menos 3-5 patrones reutilizables
- Para cada patrón: listar dónde aparece, cómo reutilizar
- Indicar si es "Template exacto", "Base + personalizaciones" o "Estructura lógica similar"
- Esto es clave para eficiencia: reduce trabajo de diseño de diagramas

---

## 5. Análisis Detallado por Curso (Opcional)

Si el alcance abarca múltiples cursos, incluir sección:

```md
## 🎓 ANÁLISIS DETALLADO POR CURSO

### CURSO 1 ({N} oportunidades)
1. **Clase X:** {Tema} - {descripción}
2. **Clase Y:** {Tema} - {descripción}

### CURSO 2 ({N} oportunidades)
...
```

---

## 6. Recomendaciones de Implementación

Sección **obligatoria** que propone fases de ejecución.

### Estructura

```md
## 🎯 RECOMENDACIONES DE IMPLEMENTACIÓN

### Fase 1: TOP 5 (Impacto máximo, esfuerzo mínimo)
1. {Oportunidad 1}
2. {Oportunidad 2}
...

### Fase 2: Siguientes 5 (Valor moderado)
6. {Oportunidad 6}
...

### Fase 3: Completar (Valor complementario)
Resto de {N} oportunidades identificadas
```

### Reglas

- Mínimo 3 fases: TOP/Media/Baja
- Cada fase debe ser realista en tiempo/esfuerzo
- Fase 1 debería enfocarse en máximo impacto con mínimo esfuerzo
- Justificar por qué cada oportunidad está en su fase

---

## 7. Notas Finales (Opcional)

Sección de comentarios, lecciones aprendidas, o recomendaciones globales.

```md
## 📝 Notas Finales

- {Observación clave}
- {Oportunidad de standarización}
- {Conexión con otros proyectos}

---

*Analizado por:* {Nombre o Copilot Agent}  
*Total Archivos:* {N}  
*Oportunidades Identificadas:* {N}  
*Priorizadas (⭐⭐⭐):* {N}  
*Reutilizable entre cursos:* {N}
```

---

## 📝 Checklist de Calidad

Antes de dar por completado el análisis:

- [ ] Encabezado sigue formato exactamente
- [ ] Resumen ejecutivo incluye estadísticas principales
- [ ] TOP PRIORIDADES (máximo 5 oportunidades)
- [ ] PRIORIDAD ALTA, MEDIA y BAJA bien diferenciadas
- [ ] Cada oportunidad tiene: archivo (link), línea, tipo, descripción, ASCII, valor, reutilización, prioridad
- [ ] Tabla resumen consolidada con todas las oportunidades
- [ ] Análisis transversal identifica patrones reutilizables (mín. 3)
- [ ] Recomendaciones de fases (1, 2, 3) son realistas
- [ ] Nombres de archivos/cursos son consistentes
- [ ] Links clickeables funcionan
- [ ] Tipos de diagrama son válidos (ver tabla permitida)
- [ ] Prioridades usan matriz 3×3 consistently
- [ ] Sin errores de formato, ortografía, o enlaces rotos

---

## 🔄 Activación Automática

Aplica estas instrucciones cuando:
- ✅ Se crea archivo `ANALISIS-OPORTUNIDADES-*-MERMAID.md`
- ✅ Se solicita "documentar análisis de Mermaid"
- ✅ Se pide "identificar procesos para diagramar"
- ✅ Cualquier variación que implique crear análisis de oportunidades visuales

---

**Versión:** 1.0  
**Última actualización:** 10/06/2026
