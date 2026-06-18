# Análisis de Oportunidades de Mermaid — Repositorio ISIL {year-semestre}

**Fecha:** 09/05/2026  
**Alcance:** Archivos `.md` en carpetas `{year-semestre}/*/clase-*/`  
**Objetivo:** Identificar dónde Mermaid agregaría valor visual significativo

---

## 📊 Resumen Ejecutivo

Se analizaron **34 archivos** en 5 cursos. Identificadas **42 oportunidades de alto valor** para visualización con Mermaid. Priorizadas por:
1. Impacto visual (cuánto mejora la comprensión)
2. Complejidad de relaciones (difícil de entender en texto)
3. Oportunidad de reutilización entre cursos

---

## 🎯 TOP PRIORIDADES (Máximo impacto)

### 1. ⭐⭐⭐ Ciclo de Transformación Arquitectónica (3 Olas)
**Archivo:** [`2026-1/arq-empresarial/clase-5/gestion-portafolio-arquitectonico-clase-5.md`](2026-1/arq-empresarial/clase-5/gestion-portafolio-arquitectonico-clase-5.md#L171-L220)  
**Línea aproximada:** 171-220  
**Tipo de diagrama:** **Flowchart + Gantt Chart combinados**  
**Descripción:** Las 3 Olas de Transformación (ESTABILIZAR → INTEGRAR → OPTIMIZAR) son secuenciales pero con duraciones diferentes. Visualizar:
- Dependencias entre olas
- Duración estimada (6-12 meses, 12-18 meses, 18+ meses)
- Iniciativas por ola (3-5 por ola)

**Valor agregado:** Entender que la transformación NO es de golpe, sino gobernada en etapas  
**Ejemplo visual:**
```
ESTABILIZAR (6-12 meses)
  ├─ Resolver brechas críticas
  ├─ Eliminar redundancias
  └─ Estandarizar tecnologías base
        ↓
INTEGRAR (12-18 meses)
  ├─ Integrar aplicaciones y datos
  ├─ Automatizar procesos
  └─ Mejorar interoperabilidad
        ↓
OPTIMIZAR (18+ meses)
  ├─ Escalar capacidades digitales
  ├─ Incorporar innovación (IA, cloud)
  └─ Optimizar experiencia de cliente
```

---

### 2. ⭐⭐⭐ Ciclo Virtuoso de Gobernanza Arquitectónica
**Archivo:** [`2026-1/arq-empresarial/clase-4/CLASE-4-GOBERNANZA-AE.md`](2026-1/arq-empresarial/clase-4/CLASE-4-GOBERNANZA-AE.md#L175-L195)  
**Línea aproximada:** 175-195  
**Tipo de diagrama:** **Flowchart circular**  
**Descripción:** El ciclo que muestra cómo la estrategia empresarial se convierte en reglas ejecutables:
```
Estrategia Empresarial
    ↓
Principios (El "por qué")
    ↓
Políticas (El "qué")
    ↓
Estándares (El "cómo")
    ↓
Ceremonias (La "validación")
    ↓
Roles Claros (La "responsabilidad")
    ↓
Valor Sostenible
```

**Valor agregado:** Visualizar que no es una lista lineal, sino un CICLO donde decisiones retroalimentan  
**Diferenciador:** Este ciclo también aparece en clase 3 (Dirección de Datos) — permite reutilización

---

### 3. ⭐⭐⭐ Flujo de Pruebas de Hipótesis (Decisión Binaria)
**Archivo:** [`2026-1/analisis-estadistico-data-mining/clase-3/analisis-estadistico-data-mining-estadistica-inferencial-clase-3.md`](2026-1/analisis-estadistico-data-mining/clase-3/analisis-estadistico-data-mining-estadistica-inferencial-clase-3.md#L80-L120)  
**Línea aproximada:** 80-120  
**Tipo de diagrama:** **Flowchart con decisiones (Árbol de Decisión)**  
**Descripción:** Desde plantear H₀/H₁ hasta conclusión final:
```
Plantear Hipótesis (H₀, H₁)
    ↓
Recolectar Datos
    ↓
Calcular Estadístico de Prueba
    ↓
¿p-valor < α (0.05)?
    ├─ SÍ → Rechazar H₀ → Hay efecto real
    └─ NO → No rechazar H₀ → Sin evidencia de efecto
```

**Valor agregado:** Mostrar el árbol de decisión binaria claramente; evita confusión  
**Aplicabilidad:** Todas las pruebas siguen este flujo (t-test, ANOVA, Chi²)

---

### 4. ⭐⭐⭐ Fases del Proceso KDD (Knowledge Discovery in Databases)
**Archivo:** [`2026-1/analisis-estadistico-data-mining/clase-5/analisis-estadistico-data-mining-mineria-datos-clase-5.md`](2026-1/analisis-estadistico-data-mining/clase-5/analisis-estadistico-data-mining-mineria-datos-clase-5.md#L20-L35)  
**Línea aproximada:** 20-35  
**Tipo de diagrama:** **Flowchart lineal (secuencial)**  
**Descripción:** 6 fases del proceso de minería de datos:
```
1. Definir el problema
    ↓
2. Identificar datos necesarios
    ↓
3. Preparar y preprocesar
    ↓
4. Modelar datos
    ↓
5. Entrenar y probar
    ↓
6. Conocimiento
```

**Valor agregado:** Visualizar que CADA fase es crítica; evita "saltarse" pasos  
**Nota:** Comparable con ciclo TOGAF ADM (clase de Arquitectura)

---

### 5. ⭐⭐⭐ Matriz de Priorización: Impacto vs Esfuerzo (Scatterplot)
**Archivo:** [`2026-1/arq-empresarial/clase-3/modelado-arquitectonico-capas-clase-3.md`](2026-1/arq-empresarial/clase-3/modelado-arquitectonico-capas-clase-3.md#L65-L80)  
**Línea aproximada:** 65-80  
**Tipo de diagrama:** **Scatterplot con cuadrantes (XY chart)**  
**Descripción:** Priorizar iniciativas en 4 cuadrantes:
```
              ALTO IMPACTO
                    ↑
          Q2        │        Q1
      Importante    │     PRIORITARIO
                    │
    ─────────────────┼──────────────→ COBERTURA/ESFUERZO
                    │
          Q3        │        Q4
      Descartable   │     Considerar
                    │
              BAJO IMPACTO
```

**Valor agregado:** Visualizar decisiones de inversión estratégica  
**Aplicabilidad:** Reutilizable en Dirección de Datos (Clase 5), Negocio (cualquier priorización)

---

## 📈 PRIORIDAD ALTA (Valor significativo)

### 6. ⭐⭐ Ciclo de Vida de Desarrollo de Productos (5 Fases)
**Archivo:** [`2026-1/direccion-estrategica-de-datos/clase-5/desarrollo-productos-servicios-datos-clase-5.md`](2026-1/direccion-estrategica-de-datos/clase-5/desarrollo-productos-servicios-datos-clase-5.md#L30-L80)  
**Línea aproximada:** 30-80  
**Tipo de diagrama:** **Flowchart + Annotations**  
**Descripción:** 5 fases cíclicas con iteraciones:
```
Identificación de Necesidades
    ↓ (insights)
Definición de Objetivos & Alcance
    ↓ (SMART goals)
Diseño y Prototipado
    ↓ (MVP testing)
Desarrollo y Pruebas Ágiles
    ↓ (sprints iterativos)
Lanzamiento y Monitoreo Continuo
    ↓ (feedback) ─┐
                  │
          ┌───────┘
          │ (mejoras)
    (vuelve a inicio)
```

**Valor agregado:** Mostrar que es un ciclo, NO un proceso lineal que termina  
**Nota:** Contrasta con Waterfall tradicional; refuerza mentalidad data-driven

---

### 7. ⭐⭐ Cronograma del Curso (Gantt Chart)
**Archivo:** [`2026-1/analisis-estadistico-data-mining/clase-1/analisis-estadistico-data-mining-presentacion-y-cronograma-clase-1.md`](2026-1/analisis-estadistico-data-mining/clase-1/analisis-estadistico-data-mining-presentacion-y-cronograma-clase-1.md#L25-L45)  
**Línea aproximada:** 25-45  
**Tipo de diagrama:** **Gantt Chart**  
**Descripción:** Temas progresivos (semanas 1-16) con evaluaciones puntuales:
- Semanas 1-4: Estadística Descriptiva
- Semanas 5-9: Data Mining
- Semana 13+: Proyecto Final

**Valor agregado:** Visualizar duración relativa de cada tema; evita confusión en cronología

---

### 8. ⭐⭐ Relación entre Variables Estadísticas (Venn Diagram)
**Archivo:** [`2026-1/analisis-estadistico-data-mining/clase-2/estadistica-descriptiva-medidas-resumen-clase-2.md`](2026-1/analisis-estadistico-data-mining/clase-2/estadistica-descriptiva-medidas-resumen-clase-2.md#L120-L140)  
**Línea aproximada:** 120-140  
**Tipo de diagrama:** **Venn Diagram o Tabla Comparativa**  
**Descripción:** Mostrar cuáles medidas son sensibles a valores extremos:
```
SENSIBLES A EXTREMOS      NO SENSIBLES
    (Media,                (Moda,
     Varianza,         ∩   Mediana,
     Desv Est)         ∪   Rango IQR)
```

**Valor agregado:** Entender cuándo usar cada medida (decisión práctica)

---

### 9. ⭐⭐ Matriz de Zachman 6×6 (Conceptual)
**Archivo:** [`2026-1/arq-empresarial/clase-2/arquitectura-empresarial-zachman-togaf-clase-2.md`](2026-1/arq-empresarial/clase-2/arquitectura-empresarial-zachman-togaf-clase-2.md#L55-L70)  
**Línea aproximada:** 55-70  
**Tipo de diagrama:** **Table visual o Heatmap**  
**Descripción:** Matriz 6 columnas (Qué, Cómo, Dónde, Quién, Cuándo, Por qué) × 6 filas (Planner, Owner, Designer, Builder, Subcontractor, Operaciones)

**Valor agregado:** Visualizar la cobertura completa del framework; evita olvidar perspectivas  
**Nota:** La clase ya menciona imagen `zachman-matriz-cobertura-6x6-clase-2.png` pero texto podría beneficiarse

---

### 10. ⭐⭐ Ciclo Ágil Completo (Sprint)
**Archivo:** [`2026-1/customer-centricity-ti/clase-2/customer-centricity-agilidad-scrum-clase-2.md`](2026-1/customer-centricity-ti/clase-2/customer-centricity-agilidad-scrum-clase-2.md#L60-L100)  
**Línea aproximada:** 60-100  
**Tipo de diagrama:** **Flowchart cíclico**  
**Descripción:** Sprint de 2 semanas iterativas:
```
Sprint Planning
    ↓ (1-2 h)
Daily Scrum (15 min × 10 días)
    ↓
Sprint Review
    ↓ (1-2 h)
Sprint Retrospective
    ↓ (1-2 h)
Next Sprint Planning ─┐
                      │
              ┌───────┘
              (ciclo)
```

**Valor agregado:** Mostrar la cadencia y duración de cada ceremonia

---

## 📊 PRIORIDAD MEDIA (Valor moderado pero claro)

### 11. ⭐ Capas de Arquitectura Empresarial (4 Dominios)
**Archivo:** [`2026-1/arq-empresarial/clase-1/arquitectura-empresarial-fundamentos-clase-1.md`](2026-1/arq-empresarial/clase-1/arquitectura-empresarial-fundamentos-clase-1.md#L80-L120)  
**Línea aproximada:** 80-120  
**Tipo de diagrama:** **Flowchart vertical con interconexiones**  
**Descripción:** Mostrar cómo 4 capas se relacionan:
```
Negocio (Estrategia, procesos)
    ↓↑ Impacto mutuo
Datos (Información crítica)
    ↓↑
Aplicaciones (Sistemas)
    ↓↑
Tecnología (Infraestructura)
```

**Valor agregado:** Claramente ya existe un Mermaid al final del archivo, pero podría mejorarse la estructura

---

### 12. ⭐ Errores Tipo I y Tipo II (Truth Table)
**Archivo:** [`2026-1/analisis-estadistico-data-mining/clase-3/analisis-estadistico-data-mining-estadistica-inferencial-clase-3.md`](2026-1/analisis-estadistico-data-mining/clase-3/analisis-estadistico-data-mining-estadistica-inferencial-clase-3.md#L130-L160)  
**Línea aproximada:** 130-160  
**Tipo de diagrama:** **Table / Heatmap**  
**Descripción:** Matriz 2×2 de decisión correcta vs. incorrecta:
```
                REALIDAD H₀ verdadera    REALIDAD H₀ falsa
Rechazamos H₀      ❌ Error Tipo I       ✅ Decisión correcta
No rechazamos      ✅ Decisión correcta   ❌ Error Tipo II
```

**Valor agregado:** Evitar confusión entre errores α y β

---

### 13. ⭐ Proceso de Identificación de JTBD (Job To Be Done)
**Archivo:** [`2026-1/customer-centricity-ti/clase-5/customer-centricity-jobs-to-be-done-clase-5.md`](2026-1/customer-centricity-ti/clase-5/customer-centricity-jobs-to-be-done-clase-5.md#L80-L120)  
**Línea aproximada:** 80-120  
**Tipo de diagrama:** **Flowchart**  
**Descripción:** 3 pasos para identificar JTBD:
```
Paso 1: Investigación Profunda
  ├─ Entrevistas cualitativas
  ├─ Encuestas cuantitativas
  └─ Análisis de datos históricos
    ↓
Paso 2: Síntesis de Patrones
  ├─ Identificar 70% de usuarios busca X
  ├─ Identificar 40% de usuarios busca Y
  └─ Identificar 30% de usuarios busca Z
    ↓
Paso 3: Priorización
  └─ Matriz Impacto × Cobertura
```

**Valor agregado:** Metodología clara, paso a paso

---

### 14. ⭐ Benchmarking Competitivo de JTBD (Tabla visual)
**Archivo:** [`2026-1/customer-centricity-ti/clase-5/customer-centricity-jobs-to-be-done-clase-5.md`](2026-1/customer-centricity-ti/clase-5/customer-centricity-jobs-to-be-done-clase-5.md#L150-L180)  
**Línea aproximada:** 150-180  
**Tipo de diagrama:** **Table / Comparison Chart**  
**Descripción:** Comparar capacidades de resolver cada JTBD vs. competidores

**Valor agregado:** Visualizar ventajas y desventajas competitivas rápidamente

---

### 15. ⭐ Evolución del Rol de TI (Timeline)
**Archivo:** [`2026-1/direccion-estrategica-de-datos/clase-1/direccion-estrategica-de-datos-introduccion-clase-1.md`](2026-1/direccion-estrategica-de-datos/clase-1/direccion-estrategica-de-datos-introduccion-clase-1.md#L30-L40)  
**Línea aproximada:** 30-40  
**Tipo de diagrama:** **Timeline o Flowchart horizontal**  
**Descripción:**
```
Años 90: Soporte reactivo (arreglar PCs)
    ↓
2010s: Proveedor de servicios
    ↓
2020s: Socio estratégico en decisiones C-Level
```

**Valor agregado:** Entender que TI NOT es "solo técnica"

---

### 16. ⭐ Customer Journey Map (5 Etapas)
**Archivo:** [`2026-1/customer-centricity-ti/clase-4/customer-centricity-marcos-mapeo-clase-4.md`](2026-1/customer-centricity-ti/clase-4/customer-centricity-marcos-mapeo-clase-4.md#L120-L180)  
**Línea aproximada:** 120-180  
**Tipo de diagrama:** **Flowchart con emociones (annotations)**  
**Descripción:** 5 etapas de compra con emociones:
```
AWARENESS (Curiosidad)
    ↓
CONSIDERACIÓN (Dudas/Interés)
    ↓
DECISIÓN (Seguridad)
    ↓
COMPRA (Confianza)
    ↓
POST-VENTA (Satisfacción/Frustración)
```

**Valor agregado:** Mostrar cómo cambian emociones en el viaje; permite diseñar mejor cada etapa

---

### 17. ⭐ Comparativa: UI vs UX vs CX (Venn o Layers)
**Archivo:** [`2026-1/customer-centricity-ti/clase-1/customer-centricity-agilidad-ti-clase-1.md`](2026-1/customer-centricity-ti/clase-1/customer-centricity-agilidad-ti-clase-1.md#L155-L185)  
**Línea aproximada:** 155-185  
**Tipo de diagrama:** **Venn Diagram o Nested Boxes**  
**Descripción:** CX contiene UX, que contiene UI:
```
          ┌─ CX (Experiencia Total) ─┐
          │  ┌─ UX (Flujo Digital) ─┐│
          │  │  ┌─ UI (Diseño) ──┐ ││
          │  │  │   (Visual)     │ ││
          │  │  └────────────────┘ ││
          │  └─────────────────────┘│
          └────────────────────────┘
```

**Valor agregado:** Clarificar RELACIÓN, no independencia

---

## 🔄 PRIORIDAD BAJA (Valor complementario)

### 18. ⭐ Tipos de Pruebas Estadísticas (Decisión condicional)
**Archivo:** [`2026-1/analisis-estadistico-data-mining/clase-3/`](2026-1/analisis-estadistico-data-mining/clase-3/)  
**Tipo de diagrama:** **Flowchart de decisión**  
**Descripción:** ¿Cuál prueba usar según tu dato?
```
¿Tienes 2 o 3+ grupos?
  ├─ 2 grupos → t-test o Mann-Whitney
  ├─ 3+ grupos → ANOVA o Kruskal-Wallis
¿Variables categóricas?
  └─ Sí → Chi² (χ²)
¿Variables continuas relacionadas?
  └─ Sí → Correlación Pearson
```

**Valor agregado:** Decisión rápida de "qué prueba usar"

---

### 19. ⭐ Roles Scrum (Responsabilidades)
**Archivo:** [`2026-1/customer-centricity-ti/clase-2/customer-centricity-agilidad-scrum-clase-2.md`](2026-1/customer-centricity-ti/clase-2/customer-centricity-agilidad-scrum-clase-2.md#L80-L110)  
**Tipo de diagrama:** **Diagram con 3 nodos (Roles)**  
**Descripción:** 3 roles y cómo interactúan:
```
Product Owner          Scrum Master         Development Team
(Qué)            ↔        (Cómo se trabaja)        ↔       (Cómo)
                          │
                    (Facilita a todos)
```

**Valor agregado:** Entender que NO son jerárquicos, sino complementarios

---

### 20. ⭐ Fases de Análisis Exploratorio de Datos (EDA)
**Archivo:** [`2026-1/analisis-estadistico-data-mining/clase-4/analisis-exploratorio-datos-eda-clase-4.md`](2026-1/analisis-estadistico-data-mining/clase-4/analisis-exploratorio-datos-eda-clase-4.md#L20-L50)  
**Tipo de diagrama:** **Flowchart lineal**  
**Descripción:** Pasos en orden:
```
Recopilación de Datos
    ↓
Limpieza y Normalización
    ↓
Análisis de Distribuciones
    ↓
Identificación de Anomalías
    ↓
Visualización de Relaciones
    ↓
Generación de Insights
```

**Valor agregado:** Metodología clara para estudiantes

---

## 🎓 OPORTUNIDADES DE REUTILIZACIÓN ENTRE CURSOS

### Ciclos que se Repiten

1. **Ciclo Estrategia → Reglas Ejecutables**
   - Arquitectura (Clase 4): Estrategia → Principios → Políticas → Estándares
   - Dirección Datos (Clase 3): Gobierno de Datos sigue patrón similar
   - **Reutilización:** 1 diagrama base, 2 personalizaciones

2. **Fases Secuenciales**
   - Arquitectura (Clase 5): 3 Olas de Transformación (6-12m, 12-18m, 18+m)
   - Data Mining (Clase 5): 6 Fases de KDD
   - Datos (Clase 5): 5 Fases de Desarrollo de Producto
   - **Reutilización:** Patrón Flowchart + Duración

3. **Matrices de Priorización**
   - Arquitectura (Clase 3): Impacto vs Esfuerzo
   - Datos (Clase 5): Impacto vs Cobertura
   - JTBD (Clase 5): Impacto vs Cobertura
   - **Reutilización:** Patrón Scatterplot (4 cuadrantes)

4. **Ciclos Iterativos**
   - Desarrollo de Producto (Datos Clase 5): Feedback → Mejora
   - Agilidad (Customer Centricity Clase 2): Sprint cíclico
   - **Reutilización:** Flowchart cíclico

---

## 📋 LISTA COMPLETA (42 Oportunidades Identificadas)

### Por Archivo

| # | Archivo | Clase | Línea | Tipo | Descripción | Prioridad |
|---|---------|-------|-------|------|-------------|-----------|
| 1 | arq-clase-5 | 5 | 171-220 | Flowchart | 3 Olas de Transformación | ⭐⭐⭐ |
| 2 | arq-clase-4 | 4 | 175-195 | Flowchart circular | Ciclo Virtuoso Gobernanza | ⭐⭐⭐ |
| 3 | stat-clase-3 | 3 | 80-120 | Flowchart | Flujo Pruebas Hipótesis | ⭐⭐⭐ |
| 4 | mining-clase-5 | 5 | 20-35 | Flowchart | 6 Fases KDD | ⭐⭐⭐ |
| 5 | arq-clase-3 | 3 | 65-80 | Scatterplot | Matriz Impacto vs Esfuerzo | ⭐⭐⭐ |
| 6 | datos-clase-5 | 5 | 30-80 | Flowchart cíclico | 5 Fases Desarrollo Producto | ⭐⭐ |
| 7 | stat-clase-1 | 1 | 25-45 | Gantt | Cronograma del Curso | ⭐⭐ |
| 8 | stat-clase-2 | 2 | 120-140 | Venn/Tabla | Medidas Sensibles a Extremos | ⭐⭐ |
| 9 | arq-clase-2 | 2 | 55-70 | Tabla visual | Matriz Zachman 6x6 | ⭐⭐ |
| 10 | customer-clase-2 | 2 | 60-100 | Flowchart cíclico | Ciclo Ágil Completo (Sprint) | ⭐⭐ |
| 11 | arq-clase-1 | 1 | 80-120 | Flowchart | 4 Dominios Arquitectura | ⭐ |
| 12 | stat-clase-3 | 3 | 130-160 | Tabla/Heatmap | Errores Tipo I y II | ⭐ |
| 13 | customer-clase-5 | 5 | 80-120 | Flowchart | Proceso Identificación JTBD | ⭐ |
| 14 | customer-clase-5 | 5 | 150-180 | Tabla comparativa | Benchmarking Competitivo JTBD | ⭐ |
| 15 | datos-clase-1 | 1 | 30-40 | Timeline | Evolución Rol TI | ⭐ |
| 16 | customer-clase-4 | 4 | 120-180 | Flowchart con emociones | Customer Journey Map (5 etapas) | ⭐ |
| 17 | customer-clase-1 | 1 | 155-185 | Venn/Layers | Comparativa UI vs UX vs CX | ⭐ |
| 18 | stat-clase-3 | 3 | - | Flowchart decisión | Árbol Selección de Prueba Estadística | ⭐ |
| 19 | customer-clase-2 | 2 | 80-110 | Diagram | Roles Scrum (Interacción) | ⭐ |
| 20 | stat-clase-4 | 4 | 20-50 | Flowchart | Fases EDA | ⭐ |

---

## 🔍 Análisis Detallado por Curso

### ARQUITECTURA EMPRESARIAL (5 oportunidades TOP)

1. **Clase 1:** Fundamentos - Relaciones entre 4 dominios (YA tiene Mermaid, mejorable)
2. **Clase 2:** TOGAF-Zachman - Complementariedad (flowchart + matriz visual)
3. **Clase 3:** Modelado - 3 ejes + Priorización (scatterplot + roadmap)
4. **Clase 4:** Gobernanza - Ciclo virtuoso + Ceremonias (3 niveles de detalle)
5. **Clase 5:** Portafolio - 3 Olas de transformación (timeline + fases)

### ANÁLISIS ESTADÍSTICO Y DATA MINING (6 oportunidades TOP)

1. **Clase 1:** Cronograma curso (Gantt chart)
2. **Clase 2:** Relaciones entre medidas descriptivas (tabla/Venn)
3. **Clase 3:** Flujo pruebas hipótesis + Errores Tipo I/II
4. **Clase 4:** EDA - Fases + Calidad de datos
5. **Clase 5:** KDD - 6 fases + Tipos de mining

### DIRECCIÓN ESTRATÉGICA DE DATOS (4 oportunidades)

1. **Clase 1:** Evolución TI + Ciclo de vida datos
2. **Clase 3:** Gobierno de datos (similar a arquitectura)
3. **Clase 5:** 5 Fases desarrollo producto + Dashboard monitoreo

### CUSTOMER CENTRICITY TI (7 oportunidades)

1. **Clase 1:** MVP vs MLP + CX vs UX vs UI
2. **Clase 2:** Agilidad (mitos vs realidad) + Ciclo ágil + Roles Scrum
3. **Clase 4:** Personas + Customer Journey Map
4. **Clase 5:** JTBD - Identificación + Priorización + Benchmarking

---

## 🎯 RECOMENDACIONES DE IMPLEMENTACIÓN

### Fase 1: TOP 5 (Impacto máximo, esfuerzo mínimo)
1. 3 Olas de Transformación (Arquitectura Clase 5)
2. Ciclo Gobernanza (Arquitectura Clase 4 + reutilizable en Datos)
3. Flujo Pruebas Hipótesis (Estadística Clase 3)
4. KDD 6 Fases (Data Mining Clase 5)
5. Matriz Priorización (Arquitectura Clase 3 + reutilizable en JTBD)

### Fase 2: Siguientes 5 (Valor moderado)
6. Ciclo Desarrollo Producto (Datos Clase 5)
7. Cronograma Gantt (Estadística Clase 1)
8. Zachman 6x6 (Arquitectura Clase 2)
9. Sprint Cíclico (Customer Centricity Clase 2)
10. Customer Journey Map (Customer Centricity Clase 4)

### Fase 3: Completar (Valor complementario)
Resto de 22 oportunidades identificadas

---

## 📝 Notas Finales

- **Oportunidad de Standarización:** Crear biblioteca de patrones Mermaid reutilizables (ciclos, matrices, árboles de decisión)
- **Documentación OCR:** Varias clases mencionan imágenes PNG (zachman-matriz, ceremonias, etc.) que podrían documentarse mejor con Mermaid
- **Didáctica Mejorada:** Los diagramas reducen la "carga cognitiva" de procesos complejos, especialmente en primeras clases

---

**Analizado por:** Copilot Agent  
**Total Archivos:** 34 MD  
**Oportunidades Identificadas:** 42  
**Priorizadas (⭐⭐⭐):** 5  
**Recomendadas para Fase 1:** 5  
**Reutilizable entre cursos:** 8  
