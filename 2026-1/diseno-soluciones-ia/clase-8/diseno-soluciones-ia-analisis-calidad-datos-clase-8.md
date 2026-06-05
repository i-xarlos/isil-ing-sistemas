# Análisis y calidad de datos — Clase 8

## Objetivo
Documentar la importancia del análisis y la calidad de los datos antes de aplicar Inteligencia Artificial, las técnicas de limpieza y transformación, los niveles de análisis que generan insights y el diseño de datasets, KPIs y storytelling.

## 1. Importancia del análisis y la calidad de los datos

- El análisis y preprocesamiento de datos es una fase previa e indispensable para entrenar cualquier modelo de IA.
- Si no se trabaja con datos limpios y exactos, el modelo no será confiable y generará sesgos, falsos positivos o falsos negativos.
- Los datos sueltos son solo materia prima; solo tras procesarse se transforman en información útil para la toma de decisiones.
- Se distingue entre:
  - datos estructurados,
  - datos semiestructurados,
  - datos no estructurados.
- El 80% de la data disponible en internet proviene de fuentes no estructuradas como redes sociales, sitios web, audios, PDFs y PowerPoint.
- Ese volumen es el principal desafío para convertirla en datos estructurados de fácil gestión.

> Ejemplo: un informe de ventas extraído de un PDF o un audio de reunión necesita transformarse antes de poder alimentarse a un modelo predictivo.

---

## 2. Técnicas de limpieza y transformación de datos

### Tratamiento de nulos (imputación)
- No se deben rellenar vacíos al azar.
- La imputación busca estimar el valor más probable con base en el contexto.
- Ejemplo: promediar el valor superior e inferior para aproximarse al dato real.

### Identificación de outliers (valores atípicos)
- Es clave aislarlos y no incluirlos en el análisis general.
- Los outliers pueden distorsionar métricas y generar decisiones equivocadas.

> Ejemplo del profesor: si un auditorio promedia 50 asistentes por semana, pero una semana solo asisten 2 personas por un motivo excepcional, ese “2” baja el promedio y puede llevar a dimensionar mal los recursos.

### Librerías de Python mencionadas
- Pandas: manipulación y análisis de datos.
- NumPy: arreglos y operaciones numéricas.
- Matplotlib: gráficos básicos.
- Seaborn: visualizaciones avanzadas.
- Scikit-learn (Sklearn): técnicas de machine learning para clasificación y predicción.

### Normalización
- Permite estandarizar cifras y evaluar la proporcionalidad real.
- Evita interpretaciones erróneas cuando se comparan datos crudos.

> Ejemplo del profesor: comparar 100 errores de 1,000 pruebas con 10 errores de 100 pruebas puede parecer distinto a simple vista, pero al normalizar ambos casos representan un 10% de error.

---

## 3. Generación de insights y tipos de análisis

El objetivo es ir más allá de los números y entregar valor que la gerencia pueda interpretar.

### Análisis univariado
- Analiza una sola variable.
- Ejemplo: estudiar cómo se comporta el precio de un producto en el tiempo.

### Análisis bivariado
- Relaciona dos variables.
- Ejemplo: comparar el precio de una prenda según la estación del año o el mes.
- Incluye el parámetro de correlación para identificar si las variables son directamente o inversamente proporcionales.

### Análisis multivariado
- Incorpora tres o más variables simultáneamente.
- Ejemplo: analizar precio, estación y poder adquisitivo del cliente para estrategias de marketing.

### Propósito del insight
- Explicar el porqué de un comportamiento.
- Si algo sale mal, encontrar la causa para corregirla.
- Si algo funciona, identificar cómo potenciarlo.

---

## 4. Diseño de datasets, KPIs y storytelling

### Datasets
- Son conjuntos de datos que pueden ser internos (de la empresa o empleados) o externos (clientes, terceros).
- Un dataset bien construido es la base de un análisis confiable.

### KPIs (Indicadores de Desempeño)
- Permiten medir si las estrategias están funcionando respecto a un objetivo.
- Deben ser claros, medibles y relevantes para la toma de decisiones.

> Ejemplo del profesor: si el 95% de los usuarios abandonan una web sin comprar, se define un KPI para reducir ese abandono al 45% en tres meses. Si baja solo al 90%, el KPI muestra que la estrategia no funcionó.

### Visualización y toma de decisiones
- Los directivos no necesitan saber qué es un bit o cómo funcionan las bases de datos.
- Necesitan dashboards e indicadores gráficos fáciles de leer en tiempo oportuno.

### Storytelling
- Es el arte de contar la historia de los datos.
- Implica conectar fases de recogida, análisis, KPIs e insights.
- Transformar el procesamiento técnico en un mensaje empresarial claro y accionable.

---

## 5. Próximos pasos (laboratorio)

- El profesor indicó que en la sección de "Complementarios" de la plataforma virtual está el documento "Actividad sesión 8".
- Se comenzará el laboratorio en Google Colab con los alumnos.
- Los estudiantes deben completar y subir la actividad antes del martes a la medianoche (miércoles 00:00 horas).

---

## Glosario
- **Imputación:** técnica para reemplazar valores faltantes con estimaciones basadas en datos existentes.
- **Outlier:** valor extremo que difiere significativamente de la mayoría de los datos.
- **Normalización:** ajuste de datos a una misma escala para compararlos correctamente.
- **Insight:** conclusión útil extraída del análisis de datos.
- **KPI:** indicador que mide el desempeño respecto a un objetivo.
