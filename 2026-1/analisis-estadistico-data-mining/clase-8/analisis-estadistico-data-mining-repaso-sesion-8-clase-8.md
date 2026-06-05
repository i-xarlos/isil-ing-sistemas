# Análisis Estadístico y Data Mining — Clase 8

## 1. Estadística Descriptiva vs. Estadística Inferencial

El profesor Omar Visitación aclaró que la diferencia no está en el volumen de datos, sino en el objetivo del análisis.

- **Estadística descriptiva** describe y resume los datos que ya existen. No se basa en probabilidades.
  - Herramientas: media, mediana, varianza, desviación estándar.
  - Ejemplo: calcular el promedio diario actual de ingresos de una empresa, como saber que se venden $1500 dólares diarios en promedio.

- **Estadística inferencial** busca generalizar o predecir más allá de los datos observados. Usa probabilidades.
  - Herramientas: pruebas de hipótesis, valores p.
  - Ejemplo: evaluar qué probabilidad hay de que los ingresos diarios suban a $2500 dólares en julio con una nueva estrategia de marketing.

## 2. Exploración de Datos y Valores Atípicos (Outliers)

Esta fase es clave para identificar tendencias, patrones y posibles errores en los datos.

- **Valores atípicos** son observaciones que no siguen el comportamiento común.
  - Deben aislarse y no usarse directamente en el análisis predictivo.
  - Si se incluyen, pueden sesgar los resultados.
- **Correlación y segmentación** ayudan a entender la relación entre variables y a dividir a los clientes en perfiles.
  - Ejemplo: analizar frecuencia de compra, productos adquiridos, días de compra y monto gastado para identificar una correlación fuerte y crear perfiles de cliente.

## 3. Data Mining y Big Data

Se revisaron conceptos de minería de datos en escenarios con grandes volúmenes de información.

- **Big Data** se caracteriza por:
  - volumen, velocidad, veracidad y variedad.
- **Frameworks importantes**:
  - **Hadoop**: procesamiento en paralelo dividiendo el trabajo entre varios nodos.
  - **Apache Spark**: más rápido que Hadoop porque procesa datos en memoria RAM.
- **Ética de datos** es obligatoria cuando se maneja información sensible.
  - No se deben exponer DNI, teléfonos, correos, coordenadas o datos personales.

## 4. Calidad y Limpieza de Datos (Data Cleaning)

Antes de entrenar cualquier modelo, los datos deben estar limpios y coherentes.

- **Datos faltantes**: se analizan primero para intentar recuperarlos de la fuente original.
  - Si no es posible, se puede:
    1. Retirarlos cuando son pocos y no afectan el análisis.
    2. Imputarlos con métodos estadísticos como media o mediana.
- Ejemplo práctico: en una serie de datos creciente como [4, 7, 9, 12, ___, 15, 18, 20], si falta el valor entre 12 y 15, una imputación razonable podría ser 13.5.

## 5. Algoritmos de Data Mining y Evaluación

Se revisaron las técnicas básicas para clasificar, agrupar y medir modelos.

- **Técnicas mencionadas**:
  - K-Means para clustering.
  - Máquinas de Soporte Vectorial (SVM) para segmentación.
  - Regresión Lineal.
  - Reglas de asociación.
- **Evaluación de modelos** mide qué tan fiables son los resultados.
  - Ejemplo: si de 1000 predicciones el modelo acierta 900 y falla 100, la precisión es 90%.

## 6. Indicaciones del Laboratorio 8

El profesor explicó los pasos para la entrega de la actividad práctica.

1. Descargar el documento "actividad sesión 8" desde Materiales Complementarios.
2. Abrir Google Colab y crear un nuevo Notebook en Drive.
3. Renombrar el archivo con el formato: `laboratorio 8 - TuNombre TuApellido`.
4. Compartir el Colab con acceso adecuado, puede ser "Cualquier persona con el vínculo" y agregar al profesor como lector.
5. Entregar el enlace del Colab en la plataforma antes de la fecha referencial: 2 de junio.
