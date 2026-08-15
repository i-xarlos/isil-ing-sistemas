# Proyecto Integrador: El Efecto del Seniority y el Remoto en el Mercado Laboral de Ingenieros de Software en EE.UU.

**Curso:** Análisis Estadístico y Data Mining (ISIL, 2026-1)
**Alumno:** Carlos Gil Carrillo
**Actividad:** 13 (Avance 1 — Diseño del Proyecto)
**Fecha:** 11/07/2026

---

## 1. ¿Qué problema queremos resolver?

El mercado laboral de ingenieros de software en Estados Unidos ha cambiado mucho. La pandemia aceleró el trabajo remoto, los niveles de experiencia se han multiplicado y las diferencias salariales son cada vez más importantes.

**Tres problemas clave:**

- **No se sabe cuánto gana cada nivel.** No hay datos claros sobre cuánto gana un Junior vs un Senior, ni cómo cambia el salario si trabajas remoto o presencial.
- **Las decisiones se toman por intuición.** Los profesionales eligen entre remoto y presencial sin evidencia de cuál paga mejor.
- **Las empresas no tienen benchmark.** Definen rangos salariales sin conocer el mercado real.

> **Dato importante:** El salario mediano de un ingeniero de software en EE.UU. supera los $130,000 anuales según la Bureau of Labor Statistics.

### Pregunta guía del proyecto

¿Cómo se relacionan el nivel de seniority (Junior → Principal) y la modalidad de trabajo (remoto vs presencial) con el salario y la calidad percibida de las empresas que contratan ingenieros de software en EE.UU.?

---

## 2. ¿Qué datos usamos?

Usamos un dataset real de **58,433 ofertas laborales** de ingenieros de software publicadas en Indeed, recolectadas mediante web scraping.

| Característica | Descripción |
|----------------|-------------|
| Total de registros | 58,433 ofertas |
| Registros con salario | ~18,103 (31%) |
| Variables | 29 (numéricas, categóricas, booleanas) |
| Fuente | Indeed / ZenRows |

### Variables principales del dataset

| Variable | Tipo | Ejemplo |
|----------|------|---------|
| `title` | Texto | Senior Software Engineer |
| `salary` | Texto | $100,000 - $150,000 a year |
| `rating` | Numérica | 4.0 |
| `remote_work_model` | Categórica | REMOTE_ALWAYS |
| `location` | Categórica | San Francisco, CA |
| `seniority` | Derivada | Junior, Mid, Senior, Lead, Staff, Principal |
| `salary_annual` | Derivada | Salario anualizado en USD |

---

## 3. ¿Cómo preparamos los datos?

### 3.1 Extracción de seniority desde el título

El campo `title` contiene el nivel de experiencia como texto libre. Usamos reglas de búsqueda por palabras clave:

| Palabras clave detectadas | Seniority asignado |
|---------------------------|---------------------|
| principal, distinguished, fellow | Principal |
| staff | Staff |
| lead, manager, director | Lead |
| senior, sr. | Senior |
| junior, jr., entry | Junior |
| intern | Intern |
| *(ninguna)* | Mid |

### 3.2 Conversión del salario a número

El campo `salary` viene en múltiples formatos. Lo convertimos todo a salario anual:

| Formato original | Conversión |
|------------------|------------|
| "$45,000 - $55,000 a year" | $50,000 (promedio) |
| "$15 - $20 an hour" | $36,400 (× 2,080 horas) |
| "$3,000 a week" | $156,000 (× 52 semanas) |
| "From $100,000 a year" | $100,000 |

### 3.3 Limpieza de outliers

Usamos el método IQR (Rango Intercuartílico) para eliminar valores atípicos:

- **Límite inferior:** $30,000 (mínimo razonable para ingeniero)
- **Límite superior:** $350,000 (máximo antes de errores de parsing)
- **Outliers detectados:** 847 registros (4.7%)
- **Reemplazo:** Mediana del grupo de seniority correspondiente

---

## 4. Resultados del análisis

### 4.1 ¿Cuánto gana cada nivel de seniority?

| Seniority | Cantidad | Salario mediano (USD) |
|-----------|----------|----------------------|
| Mid | 28,920 | $114,360 |
| Senior | 18,182 | $130,000 |
| Lead | 6,136 | $121,500 |
| Staff | 2,255 | **$162,000** |
| Principal | 2,005 | $137,000 |
| Junior | 918 | $60,000 |

**Hallazgo clave:** El nivel Staff tiene el salario mediano MÁS ALTO ($162,000), superando incluso a Principal ($137,000).

### Figura 1: Salario mediano por nivel de seniority

![Salario mediano por nivel de seniority](./04-salary-median-by-seniority.png)

*El gráfico muestra cómo varía el salario según el nivel de experiencia. Staff lidera con $162,000, seguido por Principal y Senior.*

### Figura 2: Distribución salarial por seniority (boxplot)

![Boxplot de salario por seniority](./03-salary-by-seniority-boxplot.png)

*El boxplot revela la mediana, los cuartiles y los valores atípicos para cada nivel. Staff tiene la mediana más alta y Principal la dispersión más amplia.*

### 4.2 ¿Cómo afecta el trabajo remoto al salario?

| Modalidad | Salario mediano (USD) | Cantidad de ofertas |
|-----------|----------------------|---------------------|
| REMOTE_ALWAYS | $132,500 | 17,556 |
| REMOTE_COVID_TEMPORARY | $122,500 | 5,248 |
| Presencial | — | ~35,629 |

**Hallazgo clave:** Los puestos permanentemente remotos pagan **$10,000 más** en mediana que los temporalmente remotos.

### Figura 3: Salario por modalidad de trabajo remoto

![Comparación salarial entre modalidades remotas](./05-salary-by-remote-boxplot.png)

*El gráfico compara los salarios entre remoto permanente y temporal. La barra verde (remoto permanente) es visiblemente más alta.*

### Figura 4: Interacción seniority × modalidad remoto

![Interacción seniority y modalidad remoto](./07-salary-seniority-remote-barplot.png)

*Este gráfico cruza seniority con modalidad remoto. Para cada nivel, compara el salario entre remoto permanente y temporal. La brecha es mayor en niveles altos.*

### 4.3 ¿Dónde están las ofertas?

| Ubicación | Cantidad |
|-----------|----------|
| Remote | 6,730 |
| New York, NY | 2,529 |
| San Francisco, CA | 1,996 |
| Austin, TX | 1,971 |
| Boston, MA | 1,300 |

**Hallazgo clave:** "Remote" como ubicación supera a todas las ciudades individuales.

### Figura 5: Top 10 ubicaciones con más ofertas

![Top 10 ubicaciones](./08-top-locations.png)

*El gráfico de barras horizontales muestra las 10 ubicaciones con más ofertas. Remote lidera con más de 6,700 ofertas.*

### 4.4 ¿Las mejores empresas contratan perfiles más senior?

| Seniority | Rating promedio |
|-----------|----------------|
| Staff | 3.48 |
| Principal | 3.32 |
| Lead | 2.75 |
| Senior | 2.48 |
| Mid | 2.47 |
| Junior | 2.06 |

**Hallazgo clave:** Los puestos Staff y Principal están en empresas con rating significativamente más alto.

### Figura 6: Rating promedio por seniority

![Rating de empresa por seniority](./09-rating-by-seniority.png)

*El gráfico muestra una relación positiva entre seniority y rating de empresa. Staff y Principal tienen ratings superiores a 3.3.*

### 4.5 ¿Quiénes contratan urgentemente?

| Seniority | % Urgentemente hiring |
|-----------|----------------------|
| Senior | 14.9% |
| Lead | 13.8% |
| Junior | 13.0% |
| Mid | 12.8% |
| Principal | 5.6% |
| Staff | 3.3% |

### Figura 7: Urgencia de contratación por seniority

![Urgencia de contratación](./10-urgency-by-seniority.png)

*Senior y Lead lideran con ~14%, confirmando que las empresas necesitan urgentemente ingenieros con experiencia media-alta.*

---

## 5. Minería de datos

### 5.1 Segmentación del mercado con K-Means

Usamos el algoritmo K-Means para agrupar las ofertas en segmentos homogéneos.

**Variables de entrada:**
- Salario anual
- Rating de la empresa
- Nivel de seniority
- Modalidad remoto

**Determinación del número de clusters (K):**

Usamos el método del codo y el coeficiente de Silhouette para elegir K=4.

### Figura 8: Método del codo y análisis de Silhouette

![Método del codo y Silhouette](./11-elbow-silhouette.png)

*El gráfico izquierdo muestra la inercia para diferentes valores de K. El "codo" se observa en K=4. El gráfico derecho confirma que K=4 tiene el mejor Silhouette Score (0.42).*

### Resultado: 4 segmentos de mercado

| Segmento | Perfil | Acción sugerida |
|----------|--------|-----------------|
| **Tier Premium** | Senior/Staff, remoto, empresa top rating, salario > $150K | Meta para perfiles con experiencia |
| **Tier Enterprise** | Senior/Lead, presencial, empresa grande, salario $120-150K | Opción para quienes buscan estabilidad |
| **Tier Growth** | Mid-level, modalidad mixta, salario $90-120K | Zona de crecimiento |
| **Tier Entry** | Junior/Mid, empresa nueva, salario < $90K | Punto de inicio |

### Figura 9: Segmentación de clusters

![Scatter plot de clusters](./12-clusters-scatter.png)

*El gráfico de dispersión muestra los 4 segmentos identificados. Cada color representa un cluster con características distintas.*

### 5.2 Predicción del nivel salarial con Árbol de Decisión

Entrenamos un modelo para predecir si el salario de una oferta es Bajo, Medio o Alto.

**Variable objetivo:** salary_tier (terciles del salario anualizado)

**Variables predictoras:** seniority, modalidad remoto, rating, ubicación, tamaño de empresa

**Resultados del modelo:**

| Métrica | Resultado | Meta |
|---------|-----------|------|
| Accuracy | ~62% | > 60% |
| Precision | ~65% | > 65% |
| Recall | ~62% | > 60% |

### Figura 10: Árbol de decisión

![Árbol de decisión](./15-decision-tree.png)

*El árbol muestra las reglas que el modelo aprendió. Seniority aparece en la raíz, confirmando que es la variable más importante.*

### Figura 11: Importancia de variables

![Importancia de variables](./14-feature-importance.png)

*Seniority domina con más del 50% de importancia, seguido por rating y modalidad remoto.*

---

## 6. Hallazgos contra-intuitivos

### ¿Por qué Staff gana más que Principal?

Una de las preguntas más interesantes es por qué el salario mediano de Staff ($162,000) supera al de Principal ($137,000).

| Dimensión | Staff | Principal | Conclusión |
|-----------|-------|-----------|------------|
| Rating promedio | 3.48 | 3.32 | Staff en empresas con rating 4.8% mayor |
| Tamaño empresa (reviews) | 10,476 | 9,234 | Staff en empresas más grandes (+13%) |
| % Urgentemente hiring | 3.3% | 5.6% | Principal menos demandado |
| Desviación estándar salarial | $42,000 | $48,000 | Principal más variable |

**Conclusión:** Staff es un rol **más especializado en empresas tech grandes y de alto rating**, mientras que Principal es más genérico y se presenta en contextos diversos.

---

## 7. Validación estadística

### Prueba T: ¿El remoto permanente paga significativamente más?

| Métrica | Valor |
|---------|-------|
| T-statistic | 3.847 |
| P-valor | 0.000127 |
| Conclusión | **RECHAZAR H₀** |
| Tamaño del efecto | Cohen's d = 0.28 (efecto pequeño a medio) |

**Conclusión:** La diferencia de ~$10K entre remoto permanente y temporal es **estadísticamente significativa** (p < 0.05).

---

## 8. Conclusiones y recomendaciones

### Para profesionales Junior

- Enfocarse en obtener 2-3 años de experiencia antes de buscar remoto
- Priorizar empresas con buen rating para construir CV sólido
- El salario inicial (~$60K) crece significativamente al alcanzar Mid

### Para profesionales Mid-level

- El salto de Mid a Senior ofrece el mayor incremento salarial
- El remoto permanente ya tiene prima salarial en este nivel
- Buscar empresas con rating >3.0

### Para profesionales Senior

- El mercado tiene alta urgencia de contratación (14.9%)
- El remoto permanente paga significativamente más
- Considerar roles Staff para maximizar salario ($162K mediano)

### Para empresas

- Los puestos Staff son los más costosos pero atraen talento top
- La urgencia de contratación es mayor para Senior/Lead
- El remoto permanente es la modalidad dominante del mercado

---

## 9. Limitaciones del análisis

| Limitación | Impacto | Cómo mitigar |
|------------|---------|--------------|
| Solo 31% de registros con salario | Sesgo hacia empresas transparentes | Propensity weighting |
| No incluye benefits/equity | Subestima compensación total ~$20-40K | Agregar datos de Levels.fyi |
| Solo Indeed (no LinkedIn) | Sesgo hacia grandes empresas | Integrar múltiples plataformas |
| Extracción seniority por regex | ~5-10% de errores | Usar NLP para clasificación |

---

## Fuentes

| # | Fuente | Tipo | URL |
|---|--------|------|-----|
| 1 | Indeed — Software Engineer Job Listings | Dataset | https://www.indeed.com/ |
| 2 | ZenRows. Web Scraping for Job Market Data | Herramienta | https://www.zenrows.com/ |
| 3 | U.S. Bureau of Labor Statistics | Oficial | https://www.bls.gov/ooh/computer-and-information-technology/software-developers.htm |
