# Instalación y entornos (R y Python) — Clase 9

## 1. Introducción: Entorno local vs nube

El profesor explicó que Google Colab es útil para practicar en la nube, pero es clave aprender a configurar un entorno local en la propia computadora.

- **Entorno de nube** (Colab): fácil de iniciar, compartible y sin instalación local.
- **Entorno local**: ejecuta código en la máquina propia, con independencia de internet y mejor control de los datos.

### Ventajas del entorno local

- Independencia de internet una vez instaladas las librerías.
- Confidencialidad: los datos permanecen en la PC y no se suben a servidores externos.
- Acceso directo a hardware local, como cámaras o audio, que Colab no puede usar fácilmente.

## 2. Requisitos de hardware recomendados

Para trabajos de análisis, predicción y ML, el hardware recomendado es:

- **CPU:** mínimo Intel i5 / Ryzen 5; recomendado Intel i7 / Ryzen 7.
- **Memoria RAM:** mínimo 8 GB; recomendado 16 GB o más para datasets grandes.
- **GPU:** no esencial para estadística básica; recomendable para deep learning con TensorFlow/PyTorch.
- **Disco:** SSD de 512 GB o más para mejor velocidad y gestión de archivos.

## 3. Entornos de desarrollo: R vs Python

El profesor aclaró que no debe confundirse el lenguaje o intérprete con el IDE.

### Ecosistema de R

- Orientado a estadística aplicada e investigación académica.
- IDE principal: **RStudio**.
- Ventajas: paneles especializados para consola, editor y variables.
- Limitaciones: puede ser menos eficiente en grandes volúmenes de datos.

#### Flujo típico en RStudio

- Editor de scripts para escribir código.
- Consola para ejecutar y ver resultados.
- Panel de entorno para revisar variables y datos cargados.

### Ecosistema de Python

- Líder en ciencia de datos, machine learning y deep learning.
- IDEs recomendados: **Jupyter Notebook**, **VS Code**, **PyCharm**.
- Ventajas: sintaxis amigable, comunidad amplia y buena escalabilidad.

> Buenas prácticas: usar **entornos virtuales** para evitar que dependencias de un proyecto interfieran con otro.

## 4. Librerías principales e instalación

Las librerías son conjuntos de funciones listas para usar en análisis y modelado.

### En R

- `dplyr` / `tidyr`: manipulación y limpieza de datos.
- `ggplot2`: gráficos avanzados.
- `readxl` / `readr`: lectura de Excel, CSV y texto.
- `stringr`: procesamiento de texto.
- `lubridate`: manejo de fechas y tiempo.

Ejemplo básico en R:

```r
# 1. Instalar el paquete (una sola vez)
install.packages("dplyr")

# 2. Cargar el paquete en el script actual
library(dplyr)
```

### En Python

- `pandas`: manipulación de datos en DataFrames.
- `numpy`: operaciones con vectores y matrices.
- `matplotlib` / `seaborn`: gráficos estadísticos.
- `scikit-learn`: modelos clásicos de ML.

Ejemplo de verificación:

```bash
python --version
```

Si devuelve una versión, la instalación local de Python está correcta.

## 5. Instalación recomendada

### R y RStudio

1. Descargar R desde CRAN: https://cran.r-project.org/
2. Instalar RStudio: https://posit.co/download/rstudio-desktop/
3. Abrir RStudio y confirmar que la consola está activa.

### Python

- Recomendado: instalar con **Anaconda** o **Miniconda**.
- Alternativa: instalar Python directamente desde https://www.python.org/.

## 6. Entornos virtuales y reproducibilidad

- Un entorno virtual aísla las librerías y versiones por proyecto.
- Evita conflictos entre dependencias.
- Python: usar `conda` o `venv`.
- R: usar `renv` o `packrat`.

## 7. Ejemplos de instalación y flujo

### Python

```bash
conda create -n clase9 python=3.10 -y
conda activate clase9
pip install pandas matplotlib seaborn scikit-learn
```

Ejemplo de script (`exploracion.py`):

```python
import pandas as pd
import matplotlib.pyplot as plt
import seaborn as sns

df = pd.read_csv('data/ventas_ejemplo.csv')
print(df.describe())
sns.histplot(df['monto'], kde=True)
plt.savefig('hist_monto.png')
```

### R

```r
install.packages('tidyverse')
library(tidyverse)
df <- read_excel('data/ventas_ejemplo.xlsx')
df %>% summarize(mean_monto = mean(monto, na.rm = TRUE))
ggplot(df, aes(x = monto)) + geom_histogram()
```

## 8. Comparación R vs Python

- R es fuerte en estadística académica y análisis exploratorio.
- Python es más versátil para IA, producción y escalabilidad.
- RStudio es ideal para usuarios centrados en estadística.
- Python con Jupyter o VS Code es ideal para proyectos mixtos de datos y desarrollo.

## 9. Buenas prácticas para el estudiante

1. Instalar Anaconda/Miniconda y crear un entorno por proyecto.
2. Instalar R + RStudio y usar `renv` en proyectos R.
3. Empezar con datasets pequeños y documentar el flujo en notebooks o RMarkdown.
4. Versionar código con Git y mantener un `requirements.txt` o `environment.yml`.

## 10. Recursos

- R / CRAN: https://cran.r-project.org/
- RStudio / Posit: https://posit.co/download/
- Anaconda: https://www.anaconda.com/download
- Jupyter: https://jupyter.org/
