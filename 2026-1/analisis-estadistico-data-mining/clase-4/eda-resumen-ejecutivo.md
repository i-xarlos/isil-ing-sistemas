# EDA — Resumen Ejecutivo (Clase 4)

**Curso:** Análisis Estadístico y Data Mining (ISIL, 2026-1)  
**Docente:** Omar David Visitación Romero  
**Fecha:** 30/04/2026  
**Tipo:** Resumen con ejemplos prácticos

---

## 📌 Qué es EDA y Por Qué Importa

**EDA (Exploratory Data Analysis)** es el proceso de investigar datos antes de hacer análisis complejos. Va más allá de solo calcular promedios: **busca patrones, tendencias, anomalías y relaciones** que expliquen el comportamiento real de los datos.

### Casos de Uso Reales

| Sector | Aplicación | Resultado |
|--------|-----------|-----------|
| **Finanzas** | Detectar fraudes | Bloquear transacciones sospechosas antes de concretar |
| **Salud** | Identificar pacientes en riesgo | Intervención preventiva |
| **Marketing** | Analizar comportamiento de compra | Personalizar ofertas |
| **Retail** | Predecir demanda | Optimizar inventario |

---

## 🎯 Las 3 Preguntas Clave de EDA

Cuando exploras datos, siempre responde:

```
1. ¿Qué TENDENCIA hay? (¿suben, bajan los datos?)
2. ¿Qué PATRONES se repiten? (¿hay ciclos?)
3. ¿Qué ANOMALÍAS existen? (¿hay valores imposibles/raros?)
```

---

## 📊 Herramientas Principales (Cheat Sheet)

### 1. Regresión Lineal — Predecir el Futuro

**Fórmula:**
$$\hat{y} = \beta_1 x + \beta_0$$

**Ejemplo práctico:**
```
Vendiste: Mes 1: $10, Mes 2: $12, Mes 3: $14, Mes 4: $16, Mes 5: $18

Patrón: +$2 cada mes
Fórmula: Ŷ = 2X + 8

Predicción: ¿Mes 10? → Ŷ = 2(10) + 8 = $28
```

**Cuándo usarla:**
- Presupuestar para meses futuros
- Identificar si hay crecimiento o caída

---

### 2. Z-Score — Encontrar lo Raro

**Fórmula:**
$$Z = \frac{x - \mu}{\sigma}$$

**Ejemplo práctico:**
```
Examen: Promedio 70, Dispersión 8

Estudiante sacó 88: Z = (88-70)/8 = 2.25 → Excelente ✓
Estudiante sacó 150: Z = (150-70)/8 = 10 → IMPOSIBLE ⚠️

Regla: Si |Z| > 3 = Anomalía
```

**Cuándo usarla:**
- Detectar fraudes
- Encontrar errores de datos
- Identificar valores atípicos

---

### 3. IQR — Establecer Límites Normales

**Fórmula:**
```
Límite Inferior = Q1 - 1.5 × IQR
Límite Superior = Q3 + 1.5 × IQR
```

**Ejemplo práctico:**
```
Transacciones normales: $10, $12, $11, $13, $9, $14, $10, $12, $15, $11

Q1 = $10.5
Q3 = $13
IQR = $2.5

Límites: Inferior = $6.75 | Superior = $16.75

Nueva transacción: $500 → ¡FUERA DE LÍMITES! = FRAUDE
```

**Cuándo usarla:**
- Sistemas de alerta automática en bancos
- Detectar compras anómalas

---

### 4. Promedio Móvil — Suavizar Ruido

**Fórmula:**
$$\text{Promedio Móvil} = \frac{x_1 + x_2 + ... + x_n}{n}$$

**Ejemplo práctico:**
```
Ventas diarias (ruidosas): 10, 12, 8, 11, 15, 9, 14

Promedio móvil 3 días:
- Días 1-3: (10+12+8)/3 = 10
- Días 2-4: (12+8+11)/3 = 10.3
- Días 3-5: (8+11+15)/3 = 11.3

Resultado: Más fácil ver que las ventas tienden a crecer
```

**Cuándo usarla:**
- Ver tendencia sin distracciones
- Eliminar fluctuaciones momentáneas

---

### 5. Correlación de Pearson — Saber Si Dos Cosas Están Relacionadas

**Fórmula:**
$$r = \frac{\sum (x_i - \bar{x})(y_i - \bar{y})}{\sqrt{\sum (x_i - \bar{x})^2 \sum (y_i - \bar{y})^2}}$$

**Ejemplo práctico:**
```
Inversión en publicidad: $10, $20, $30, $40, $50
Ventas resultantes:      $50, $100, $150, $200, $250

Patrón: Inversión × 5 = Ventas
r = +1.0 (PERFECTA)

Conclusión: Publicidad garantiza crecimiento de ventas
```

**Interpretación rápida:**
```
r = +1.0  → Relación positiva PERFECTA
r = +0.7  → Relación positiva FUERTE
r = 0     → SIN relación
r = -0.7  → Relación negativa FUERTE
r = -1.0  → Relación negativa PERFECTA
```

**Cuándo usarla:**
- Entender si X causa Y
- Identificar variables que se mueven juntas

---

## 🔍 Proceso EDA Paso a Paso

### Paso 1: Verifica la Tendencia
```
¿Los datos suben, bajan o se quedan iguales?
Herramienta: Regresión Lineal o Promedio Móvil
```

### Paso 2: Busca Patrones Cíclicos
```
¿Se repite algo? (Ej: ventas altas en diciembre)
Herramienta: Agrupación por mes/hora + Índice Estacional
```

### Paso 3: Identifica Anomalías
```
¿Hay valores imposibles o demasiado extremos?
Herramienta: Z-Score o IQR
```

### Paso 4: Calcula Correlaciones
```
¿Qué variables están relacionadas?
Herramienta: Correlación de Pearson o Spearman
```

### Paso 5: Documenta Hallazgos
```
¿Qué conclusiones sacas para tomar decisiones?
Formato: Gráficos + Tabla resumen + Recomendaciones
```

---

## 📋 Checklist: ¿Completaste tu EDA?

- [ ] ¿Identifiqué tendencias? (¿Crecimiento, caída o plano?)
- [ ] ¿Busqué patrones cíclicos? (¿Hay algo que se repite?)
- [ ] ¿Detecté anomalías? (¿Valores imposibles o raros?)
- [ ] ¿Calculé correlaciones? (¿Qué variables se relacionan?)
- [ ] ¿Verifiqué valores faltantes? (¿Hay datos incompletos?)
- [ ] ¿Creé visualizaciones? (¿Hay gráficos que muestren hallazgos?)
- [ ] ¿Documenté conclusiones? (¿Puedo explicar qué significa?)

---

## 🎓 Conexión con Otras Clases

| Clase | Contenido | Cómo Conecta |
|-------|-----------|------------|
| **Clase 2** | Estadística Descriptiva | EDA usa media, mediana, desv. estándar |
| **Clase 3** | Estadística Inferencial | EDA explora antes de generalizar a la población |
| **Clase 4** | EDA (Esta) | Integra ambas para entender datos |
| **Clase 5** | Data Mining | EDA prepara datos para modelado |

---

## 💡 Regla de Oro

**"Los mejores análisis vienen de quién entiende los datos, no de quién conoce las fórmulas más complicadas."**

- Gasta 60% del tiempo explorando
- Gasta 40% del tiempo modelando
- Nunca confíes en números sin entender qué significan

---

## 🔗 Documentación Completa

Para profundizar en cada tema, revisa:
- [Documento completo con fórmulas y cheat sheets](./analisis-exploratorio-datos-eda-clase-4.md)
- [Presentación original (PDF)](./40097-S04-PRESENTACION.pdf)

---

*Resumen ejecutivo — Última actualización: 07/05/2026*
