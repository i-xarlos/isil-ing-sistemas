# Evaluación Integral: Dirección Estratégica de Datos (Actividad 5)

**Curso:** Dirección Estratégica de Datos (ISIL, 2026-1)
**Docente:** Brezli Paola Luna Figueroa
**Fecha:** [pendiente]

---

## Parte I. Análisis Financiero del Proyecto (6 puntos)

### Pregunta 1: Cálculo del ROI

| Concepto | Monto (S/.) |
|----------|-------------|
| Plataforma Cloud | 850,000 |
| Licencias Analíticas | 420,000 |
| Consultoría | 280,000 |
| Capacitación | 150,000 |
| Integración de Datos | 300,000 |
| **Costo Inicial Total** | **2,000,000** |

**Beneficios anuales:** Incremento ventas (850,000) + Reducción costos (420,000) + Monetización datos (600,000) + Intangibles (330,000) = **S/ 2,200,000**

**Fórmula ROI (método costo-beneficio — Clase 14):**

```
ROI = ((Beneficios Totales − Costo Total) / Costo Total) × 100
```

- Beneficios totales (5 años): 2,200,000 × 5 = S/ 11,000,000
- Beneficio neto: 11,000,000 − 2,000,000 = S/ 9,000,000
- **ROI = (9,000,000 / 2,000,000) × 100 = 450%**

### Pregunta 2: Análisis del Resultado

**¿El proyecto es rentable?** Sí. Un ROI del 450% supera el rango típico de proyectos de transformación digital retail (150%-300%). El punto de equilibrio se alcanza en el primer año.

**Beneficios de mayor impacto:** Incremento de ventas (38.6%) por segmentación y personalización; monetización de datos (27.3%) como nueva fuente de ingresos recurrentes.

**Recomendación:** Aprobar la inversión. El retorno supera el costo de capital, diversifica ingresos y se alinea con la estrategia de e-commerce existente.

---

## Parte II. Evaluación de Beneficios y Costos (4 puntos)

| Tipo | Ejemplos en el caso |
|------|---------------------|
| Beneficios financieros directos | Incremento ventas por segmentación (S/ 850,000/año); monetización en marketplaces (S/ 600,000/año) |
| Beneficios financieros indirectos | Reducción costos por automatización (S/ 420,000/año); menor mermas por predicción con IoT |
| Beneficios intangibles | Mejor toma de decisiones; fidelización; ventaja competitiva; cultura data-driven |
| Costos de implementación | Cloud (S/ 850,000); Licencias (S/ 420,000); Consultoría (S/ 280,000); Capacitación (S/ 150,000); Integración (S/ 300,000) |
| Costos operativos | Mantenimiento Cloud; soporte de licencias; actualización de modelos |
| Costos indirectos | Tiempo de personal interno; resistencia al cambio; costos de transición |

**Elemento más importante:** La integración de datos (S/ 300,000). Sin datos unificados de las 7 fuentes, la analítica y monetización no son posibles.

---

## Parte III. Monetización de Datos (4 puntos)

### Plataforma seleccionada: Snowflake Marketplace

| Criterio | Snowflake Marketplace | Databricks Marketplace | Dawex |
|----------|----------------------|-----------------------|-------|
| Seguridad | Cifrado en reposo/tránsito; roles granulares; SOC 2, HIPAA | Cifrado robusto; Unity Catalog | Menor control |
| Gobernanza | Governance integrado; auditoría automática | Unity Catalog | Limitada al ecosistema Dawex |
| Integración | Conectores nativos; SQL estándar; APIs REST | Requiere ecosistema Databricks | Carga manual |
| Monetización | Miles de consumidores; pricing flexible; facturación integrada | Marketplace en crecimiento | Menor escala |
| Escalabilidad | Escalado automático; separación almacenamiento/computación | Escalable en Databricks | Dependiente de terceros |

Snowflake es óptima porque los datos se consolidarán allí, eliminando costos de exportación.

### Riesgos legales y éticos

1. **Exposición de datos personales:** La información de consumo podría involucrar datos identificables bajo la **Ley N° 29733** (Protección de Datos Personales del Perú). Control: anonimización irreversible (k-anonimidad), mínimo 50 transacciones por segmento, evaluación de impacto de privacidad.

2. **Uso indebido por terceros:** Compradores podrían reutilizar datos para fines no autorizados. Control: contratos de licencia con uso restringido, cláusulas de auditoría, monitoreo de patrones de consulta.

---

## Parte IV. Evaluación de Efectividad (3 puntos)

| KPI | Fórmula | Objetivo |
|-----|---------|----------|
| ROI del Proyecto | ((Beneficios − Costo) / Costo) × 100 | 450% acumulado al año 5 |
| Ingresos por Monetización | Ventas en Marketplace / Mes | S/ 50,000 mensuales desde mes 6 |
| Calidad de Datos | (Registros válidos / Total) × 100 | 95% de completitud |
| Tiempo de Reportes | Solicitud → entrega de reporte | Reducir de 5 días a 4 horas |
| Adopción Analítica | (Usuarios activos / Designados) × 100 | 80% al año 1 |

Estos KPIs cubren rentabilidad, ingresos, calidad, agilidad y adopción — formando un balanced scorecard completo (Clase 13).

---

## Parte V. Estrategia de Optimización (3 puntos)

| # | Acción | Descripción | Meta |
|---|--------|-------------|------|
| 1 | **Calidad de datos continua** | Data Owners por dominio, validación automatizada, limpieza mensual de duplicados | Completitud del 70% al 98% |
| 2 | **Gobierno con COBIT** | Alinear con dominios APO14 (Gestión de Datos) y BAI06 (Gestión de Cambios); catálogo corporativo, comité trimestral, auditorías semestrales | Reducir incidentes de seguridad en 70% |
| 3 | **IA para predicción de demanda** | Modelos de series temporales con ventas, IoT y variables externas | Reducir mermas en 25% (S/ 350,000/año adicional) |
| 4 | **Cultura data-driven** | Capacitación por niveles: gerentes (dashboards), analistas (Power BI certificación), operaciones (app móvil) | 95% de adopción |
| 5 | **Optimización costos Cloud** | Auditar consumo Snowflake, auto-suspend, renegociar contratos | Reducir costos Cloud en 30% (S/ 255,000/año); ROI de 450% a 565% |

Estas acciones muestran evolución progresiva de madurez (Clase 11): desde procesos iniciales (nivel 1-2) hacia procesos estandarizados y medidos (nivel 3-4 del modelo CMM).

---

## Conclusiones

El proyecto de Lima Market Express es financieramente viable con ROI del 450% en 5 años. Snowflake Marketplace ofrece la mejor plataforma por seguridad, gobernanza y escala. Los 5 KPIs permiten monitorear todas las dimensiones. Las acciones de optimización aseguran que el valor se acelere, alcanzando ROI de 565% al año 3.

---

## Fuentes

| # | Fuente | Tipo |
|---|--------|------|
| 1 | ISACA. (2018). *COBIT 2019: Introduction and Methodology*. | Oficial |
| 2 | Congreso del Perú. (2011). *Ley N° 29733 — Ley de Protección de Datos Personales*. | Oficial |
| 3 | Snowflake. (2024). *Data Cloud: Monetization Overview*. | Oficial |
| 4 | Luna Figueroa, B. P. (2026). Dirección Estratégica de Datos: Clases 12-15. ISIL. | Académica |
| 5 | Laney, D. (2017). *Infonomics: How to Monetize, Manage, and Measure Information as an Asset*. Technics Publications. | Libro |
