---
name: mermaid-analysis
description: Analyze documentation and identify opportunities to enhance clarity with Mermaid diagrams. Use when mapping complex processes, relationships, or workflows that benefit from visual representation.
---

# Mermaid — Análisis de Oportunidades de Diagrama

Metodología sistemática para identificar y priorizar dónde agregar diagramas Mermaid en documentación de cursos, mejorando comprensión sin sobrecargar de texto.

---

## 🎯 Objetivo

- Encontrar **procesos complejos, ciclos o relaciones** que se entienden mejor visualmente
- **Priorizar por impacto**: máximo valor educativo con mínimo esfuerzo
- **Reutilizar patrones** entre cursos (ciclos, matrices, flujos de decisión)
- **Documentar oportunidades** con ubicación exacta, tipo de diagrama y justificación

---

## 📊 Metodología: 3 Pasos

### Paso 1: Escanear el Contenido

Identificar secciones que cumplen CUALQUIERA de estos criterios:

| Criterio | Ejemplo | Tipo de Diagrama |
|----------|---------|------------------|
| **Proceso secuencial** | 6 fases de KDD, 5 pasos de desarrollo | Flowchart lineal |
| **Ciclo iterativo** | Retroalimentación, sprint, mejora continua | Flowchart circular |
| **Árbol de decisión** | Si X entonces Y, si no entonces Z | Flowchart condicional |
| **Matriz/Comparación** | Impacto vs Esfuerzo, Tipo I vs Tipo II | Tabla visual / Scatterplot |
| **Relaciones/Capas** | Cuadrantes, dominios, perspectivas | Venn / Nested boxes |
| **Timeline/Cronograma** | Duración de fases, hitos temporales | Gantt chart |
| **Roles/Interacciones** | Quién hace qué, dependencias entre roles | Diagram de nodos |
| **Evolución/Transformación** | Estado inicial → intermedio → final | Timeline / Sequence |

### Paso 2: Evaluar Impacto

Para cada oportunidad identificada, responde:

1. **¿Cuál es la dificultad del concepto en texto?**
   - 🔴 Muy difícil (muchas líneas, confuso)
   - 🟡 Moderado (claro pero denso)
   - 🟢 Fácil (ya se entiende)

2. **¿Cuántas relaciones o elementos tiene?**
   - 🔴 3+ elementos complejos → Mermaid **AGREGA VALOR**
   - 🟡 2-3 elementos → Mermaid **AYUDA**
   - 🟢 1-2 elementos → No es necesario

3. **¿Es reutilizable en otros cursos?**
   - Sí → Prioridad más alta
   - Posiblemente → Prioridad media
   - No → Prioridad baja

### Paso 3: Priorizar

Usar una matriz 3×3:

| Dificultad | Complejidad | Reutilizable | Prioridad |
|-----------|-------------|--------------|-----------|
| 🔴 Muy difícil | 🔴 3+ elementos | Sí | ⭐⭐⭐ MÁXIMA |
| 🔴 Muy difícil | 🔴 3+ elementos | No | ⭐⭐ ALTA |
| 🔴 Muy difícil | 🟡 2-3 elementos | Sí | ⭐⭐ ALTA |
| 🟡 Moderado | 🔴 3+ elementos | Sí | ⭐⭐ ALTA |
| 🟡 Moderado | 🔴 3+ elementos | No | ⭐ MEDIA |
| 🟡 Moderado | 🟡 2-3 elementos | Sí | ⭐ MEDIA |
| 🟢 Fácil | 🟢 1-2 elementos | No | - NO |

---

## 📋 Plantilla de Análisis

Para documentar cada oportunidad identificada:

```
### {N}. {Síntesis clara del concepto}

**Archivo:** [ruta](link)  
**Línea aproximada:** 123-140  
**Tipo de diagrama:** **{Flowchart/Gantt/Scatterplot/etc.}**  
**Dificultad sin diagrama:** 🔴 Muy difícil  
**Complejidad:** 5+ elementos

**Descripción breve:**
Explica el concepto/proceso en 2-3 líneas. Incluye "por qué" importa.

**Ejemplo visual (borrador ASCII):**
```
Paso 1
  ↓
Paso 2
  ↓
Paso 3
```

**Valor agregado:** Qué aprenderá el estudiante con el diagrama

**Reutilizable:** Sí/No; si sí, dónde más aplica

**Prioridad:** ⭐⭐⭐ / ⭐⭐ / ⭐
```

---

## 🎓 Patrones Comunes Reutilizables

### 1️⃣ Ciclos Estrategia → Ejecución
**Ocurrencias:**
- Arquitectura Empresa: Estrategia → Principios → Políticas → Estándares → Ceremonias
- Gobierno Datos: Estrategia → Lineamientos → Políticas → Gobernanza
**Tipo:** Flowchart circular
**Reutilización:** Base + 2-3 personalizaciones

### 2️⃣ Fases Secuenciales con Duración
**Ocurrencias:**
- 3 Olas de Transformación (6-12m, 12-18m, 18+m)
- 6 Fases KDD
- 5 Fases Desarrollo de Producto
**Tipo:** Flowchart lineal + Gantt superpuesto
**Reutilización:** Patrón base paramétrico

### 3️⃣ Matriz de Priorización (4 Cuadrantes)
**Ocurrencias:**
- Impacto vs Esfuerzo (Arquitectura)
- Impacto vs Cobertura (Datos, JTBD)
- Urgencia vs Importancia (Eisenhower)
**Tipo:** Scatterplot con cuadrantes etiquetados
**Reutilización:** Template + cambiar ejes y datos

### 4️⃣ Ciclos Iterativos (Retroalimentación)
**Ocurrencias:**
- Desarrollo de Producto (feedback → mejora)
- Sprint Ágil (retrospectiva → siguiente sprint)
- EDA (exploración → hipótesis → prueba)
**Tipo:** Flowchart circular con feedback loop
**Reutilización:** Estructura base, variar etapas

### 5️⃣ Árboles de Decisión
**Ocurrencias:**
- Selección de prueba estadística (parametrizada vs no, 2 vs 3+ grupos)
- Selección de técnica de mining (clasificación vs clustering vs regresión)
- Matriz errores Tipo I/II (H₀ verdadera vs falsa)
**Tipo:** Flowchart condicional o Tabla 2×2
**Reutilización:** Estructura lógica base, cambiar condiciones

---

## 🔄 Proceso de Documentación

1. **Crear archivo de análisis:** `ANALISIS-OPORTUNIDADES-{tema}-MERMAID.md`
2. **Estructurar por secciones:**
   - Resumen ejecutivo (# oportunidades, total impacto)
   - TOP PRIORIDADES (⭐⭐⭐): Máximo 5
   - PRIORIDAD ALTA (⭐⭐): Siguientes 10
   - PRIORIDAD MEDIA (⭐): 10-15 más
   - Tabla resumen consolidada
3. **Incluir análisis transversal:** Qué patrones se reutilizan entre cursos
4. **Recomendaciones de fases:** Fase 1, 2, 3 de implementación

---

## 📚 Checklist para el Análisis

- [ ] Todos los archivos `.md` en `2026-1/*/clase-*/` fueron escaneados
- [ ] Cada oportunidad tiene: archivo, línea, tipo, descripción, justificación
- [ ] Priorización usa matriz 3×3 consistently
- [ ] Patrones reutilizables identificados y documentados
- [ ] Tabla resumen incluida con ALL oportunidades
- [ ] Recomendación de fases (1, 2, 3) realista
- [ ] Archivo es navegable: índice, enlaces internos, visualización clara

---

## 💡 Tips

1. **No analizar en vacío:** Leer el contexto de la sección
2. **Usar ejemplos ASCII:** Ayuda al lector a visualizar sin Mermaid aún
3. **Documentar el "por qué":** No solo "qué", sino por qué ese diagrama mejora
4. **Recopilar feedback:** Profesores pueden sugerir más oportunidades
5. **Iterar:** Este análisis NO es final; ajustar prioridades conforme se implementa

---

## 🎯 Activación Automática

Aplica este skill cuando:
- ✅ Se solicita "analiza dónde agregar Mermaid"
- ✅ Se pide "identifica procesos complejos para diagramar"
- ✅ Se requiere "priorizar oportunidades visuales"
- ✅ Se busca "documentar flujogramas o ciclos"

---

**Versión:** 1.0  
**Última actualización:** 10/06/2026  
**Mantenedor:** Equipo de Documentación ISIL 2026-1
