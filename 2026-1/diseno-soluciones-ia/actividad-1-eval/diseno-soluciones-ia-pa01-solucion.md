# DISEÑO DE SOLUCIONES CON IA — Proceso de Aprendizaje 1
## Solución PA1

**Curso:** Diseño de Soluciones con Inteligencia Artificial (6508.202610)  
**Período:** 2026-1  
**Docente:** Omar David Visitación Romero  

---

## ESTUDIANTE

| **APELLIDOS Y NOMBRES** | **CORREO ELECTRÓNICO** |
|---|---|
| [Completar] | [Completar] |

---

## PREGUNTA 01: FORMULACIÓN DEL PROBLEMA Y VIABILIDAD DE IA (8 PUNTOS)

### Contexto
Una empresa de soporte técnico en Lima recibe ~500 incidencias diarias. Actualmente, empleados clasifican manualmente en categorías (facturación, técnicos, consultas generales). Proceso toma varias horas, 85% de acierto. Empresa tiene 10,000 incidencias históricas, todas etiquetadas.

**Problema inicial (INCORRECTO):** "Mejorar el servicio al cliente"  
**Por qué es incorrecto:** Es demasiado general, no operacionalizable, no permite diseñar solución concreta.

---

### A. FORMULACIÓN CORRECTA DEL PROBLEMA

#### Problema SMART (Específico, Medible, Alcanzable, Relevante, Temporal):

**"Automatizar la clasificación de las 500 incidencias diarias de soporte técnico en tres categorías (facturación, problemas técnicos, consultas generales) para reducir el tiempo manual de clasificación de 240 minutos/día a <30 minutos/día, manteniendo una precisión mínima del 85% (igual o superior al desempeño humano actual) en las primeras 8 semanas de implementación."**

#### Desglose del problema reformulado:

| Elemento | Descripción |
|---|---|
| **Especificidad** | Clasificación en 3 categorías (no "mejorar" indefinidamente) |
| **Cuantificación entrada** | 500 incidencias/día |
| **Métrica de éxito** | Tiempo: 240 min → 30 min; Precisión: ≥85% |
| **Datos disponibles** | 10,000 incidencias etiquetadas históricamente |
| **Línea base** | Desempeño humano: 85% acierto, 240 min/día |
| **Timeline** | 8 semanas |

#### Por qué esta formulación es correcta:

1. **Es específica:** Define exactamente QUÉ se clasifica, EN CUÁNTAS categorías, CON QUÉ datos.
2. **Es medible:** Tiempo en minutos, precisión en %, incidencias por día (números reales).
3. **Es alcanzable:** Ya tienen datos etiquetados, tecnología disponible, timeline realista.
4. **Es relevante:** Resuelve un dolor operativo real (manual repetitivo, demora).
5. **Es temporal:** 8 semanas es horizonte claro para MVP.

---

### B. ¿ES ADECUADO PARA IA?

**Respuesta:** Sí, es un caso muy adecuado para IA. Justificación basada en 5 condiciones concretas:

#### Condición 1: Existencia de datos históricos representativos
- **Realidad:** 10,000 incidencias, todas correctamente etiquetadas en 3 categorías.
- **Por qué importa:** ML supervisado requiere datos etiquetados para aprender patrones. 10,000 es suficiente para este caso (típicamente 100-1,000+ por clase es recomendado; aquí: ~3,333 por clase).
- **Evidencia de viabilidad:** Dataset ya existe, no hay que recolectarlo de cero (¡ahorro de 4-6 semanas!).

#### Condición 2: La tarea es repetitiva y patrones son extraíbles
- **Realidad:** Clasificación manual siempre hace lo mismo: lee incidencia → evalúa contenido → asigna a categoría.
- **Por qué importa:** Los patrones que un empleado usa (palabras clave, contexto, estructura del texto) pueden ser aprendidos por un modelo de NLP.
- **Ejemplo:** Si texto contiene "no aparece en factura" → probablemente es "facturación". Si "servidor caído" → "técnico".
- **Evidencia:** 85% de acierto humano sugiere que hay **reglas implícitas** que un modelo puede capturar.

#### Condición 3: El margen de error es tolerabilidad
- **Realidad:** 85% es la meta mínima. En clasificación de soporte técnico, el costo de un error es bajo comparado con, por ejemplo, diagnóstico médico.
- **Por qué importa:** Si el modelo se equivoca 15% del tiempo, alguien lo revisa antes de dar respuesta al cliente. No hay riesgo crítico.
- **Beneficio:** El modelo no necesita ser perfecto, solo competente. Un 80% es válido para automatizar el 80% del trabajo manual.

#### Condición 4: ROI es positivo y medible
- **Cálculo de impacto:**
  - **Tiempo ahorrado:** 240 min/día − 30 min/día = 210 min/día = 3.5 horas/día
  - **Recursos liberados:** 3.5 hr × 1 empleado × $20/hr = $70/día = $1,750/mes (salario en Lima)
  - **Timeline:** 8 semanas = 2 meses = primeras recuperación de inversión en mes 2-3
  - **Costo desarrollo:** ~$5,000-$8,000 (ML model + API)
  - **Payback period:** 2-3 meses (ROI 200%+)
- **Por qué importa:** La IA solo es viable si costo < beneficio. Aquí es clara.

#### Condición 5: Datos existentes son de calidad
- **Realidad:** 10,000 incidencias "correctamente clasificadas por empleados" (mencionado en el caso).
- **Por qué importa:** Calidad >> Cantidad. Si están bien etiquetadas, el modelo aprenderá correctamente.
- **Presunción:** No hay mención de datos incompletos o errores (a diferencia de la Pregunta 2). Asumimos que están en buen estado.

---

### CONCLUSIÓN PREGUNTA 01

| Aspecto | Evaluación |
|---|---|
| **¿Es un problema bien formulado?** | ✅ Sí. SMART, operacionalizable, medible. |
| **¿Es adecuado para IA?** | ✅ Sí. Datos históricos + patrón extraíble + ROI positivo + margen error tolerable. |
| **Tipo de IA recomendado** | Machine Learning — clasificación de texto (NLP). Algoritmo: Naive Bayes, Logistic Regression, Random Forest o SVM. |
| **Primera acción** | Fase 1 del ciclo: confirmar 10,000 incidencias son balanceadas en 3 categorías (~3,333 cada una). Si no, balancear con SMOTE antes de entrenar. |

---

---

## PREGUNTA 02: EVALUACIÓN DE VIABILIDAD EN CONTEXTO DE DATOS DEFICIENTES (12 PUNTOS)

### Contexto
Clínica privada quiere IA para apoyo a diagnóstico. Datos disponibles: incompletos, con errores, sesgados (solo pacientes de una zona). Gerencia quiere implementar rápido, espera precisión "casi perfecta". Técnicos advierten: datos de baja calidad → resultados incorrectos → decisiones sesgadas.

---

### A. ¿QUÉ PASARÍA SI EL MODELO SE ENTRENA CON ESOS DATOS?

**Respuesta:** El modelo heredaría y amplifcaría los sesgos y errores de los datos. Resultados específicos:

#### Riesgo 1: Sesgo Algorítmico por Representación Sesgada

**Situación del contexto:**
- Datos históricos provienen solo de pacientes de una zona (ej: Miraflores, zona de ingresos altos).
- Pacientes de esa zona pueden tener acceso a nutrición, ejercicio, medicinas diferentes a pacientes de otras zonas.
- Resultado: modelo aprende patrones específicos de Miraflores, no de población general.

**Consecuencia concreta:**
- Modelo ve a un paciente de Villa María El Salvador con síntomas X.
- Dice: "Esto es leve" (porque en Miraflores, síntomas X usualmente son leves).
- Realidad: En Villa María, síntomas X + condiciones socioeconómicas = grave.
- **Resultado:** Diagnóstico **infraestimado** por sesgo geográfico.

**Impacto clínico:**
- Paciente recibe tratamiento inadecuado.
- Complicación médica posterior, demanda legal, daño reputacional.

#### Riesgo 2: Propagación de Errores de Etiquetado

**Situación del contexto:**
- Datos "contienen errores": médicos históricos cometieron diagnósticos incorrectos que quedaron registrados como "verdad".
- Modelo no sabe que etiqueta es "error", asume que es correcta.

**Consecuencia concreta:**
- 10% de registros históricos tiene diagnóstico erróneo (ej: "pneumonía" cuando era "asma").
- Modelo entrena viendo: síntomas [tos, fiebre] → etiqueta "pneumonía" (incluso si es incorrecto).
- Cuando ve síntomas similares en paciente nuevo, predice "pneumonía".
- **Resultado:** Perpetúa errores históricos. Garbage in, garbage out.

**Impacto clínico:**
- Tratamiento innecesario o incorrecto.
- Paciente expuesto a antibióticos sin beneficio.

#### Riesgo 3: Valores Faltantes = Información Sesgada

**Situación del contexto:**
- Muchos registros están incompletos (ej: falta presión arterial en 40% de pacientes).
- Modelo intenta predecir pero con información incompleta.

**Consecuencia concreta:**
- Modelo puede interpretar "ausencia de dato" como "normal" (porque así lo interpretan muchos registros incompletos).
- Paciente nuevo llega sin presión registrada → modelo asume "normal".
- Realidad: Presión no fue medida, no significa que sea normal.
- **Resultado:** Diagnóstico basado en asunción incorrecta.

**Impacto clínico:**
- Omisión de factores de riesgo críticos.
- Diagnóstico incompleto.

#### Riesgo 4: Precisión Aparente Pero Engañosa

**Situación del contexto:**
- Modelo alcanza 88% accuracy en datos de validación (suena bien).
- Pero ese 88% es reflejo del sesgo, no de capacidad real.

**Consecuencia concreta:**
- En la zona donde fue entrenado (Miraflores): 88% acierto (porque vio patrones).
- En zona nueva (San Juan de Lurigancho): 62% acierto (patrones diferentes, no vió).
- **Resultado:** La clínica no sabe que el modelo es malo fuera de su zona de origen.

**Impacto clínico y de negocio:**
- Modelo no es generalizable.
- Demandas de pacientes mal diagnosticados.
- Reguladores (MINSA, colegios profesionales) cuestionan validez.

---

### B. ¿QUÉ EXPECTATIVA DE LA GERENCIA NO ES REALISTA?

**Respuesta:** La expectativa de "precisión casi perfecta" (ej: 95%+) en estas condiciones es **completamente irreal**.

#### Expectativa 1 (IRREAL): "Precisión casi perfecta desde el inicio"

**Lo que dice la gerencia:** "Los diagnósticos médicos requieren alta confiabilidad, esperen 95%+ accuracy."

**Por qué es irreal:**
1. **Datos de entrada son deficientes:** Garbage data → garbage predictions. Incluso el mejor algoritmo no puede sacar agua limpia de un pozo sucio.
2. **Sesgo geográfico:** Modelo entrenado solo en Miraflores NUNCA tendrá 95% en población diversa.
3. **Errores históricos:** 10% de datos mal etiquetados → techo máximo de precisión es ~90%, no 95%.
4. **Baseline realista:** Con estos datos, un modelo bien construido alcanzaría 75-82% en el mejor caso, no 95%.

**Comparación:**
- IBM Watson for Oncology: 90-95% accuracy (pero entrenado con 35 años de datos oncológicos limpios, desde 16 hospitales de renombre, revisión continua de expertos).
- Clínica con 1 zona, datos sucios: 75-80% realista es el techo.

#### Expectativa 2 (IRREAL): "Implementar rápido sin validación previa"

**Lo que dice la gerencia:** "Mejorará imagen de la clínica, hagámoslo ya."

**Por qué es irreal:**
1. **Riesgo regulatorio:** Usar un modelo no validado es incumplimiento de normativas de salud (ley 26842 de Salud en Perú, estándares ISO 13485 para dispositivos médicos).
2. **Riesgo legal:** Si paciente demanda por mal diagnóstico causado por IA no auditada, la responsabilidad es de la clínica + médicos.
3. **No hay ROI rápido:** El tiempo ahorrado no compensa el riesgo legal si falla.

#### Expectativa 3 (IRREAL): "Confiar ciegamente en la predicción del modelo"

**Lo que dice la gerencia (implícito):** "El modelo reemplaza el juicio médico."

**Por qué es irreal:**
1. **IA es herramienta, no decisor:** En medicina, la IA debe asistir (second opinion), no reemplazar al médico.
2. **Interpretabilidad es crítica:** Si el modelo dice "cáncer" pero no puedes explicar por qué, un médico prudente dudará.
3. **Responsabilidad legal:** Si modelo decide y se equivoca, ¿quién es responsable? La clínica. Por eso necesita validación humana.

---

### CONCLUSIÓN B

| Expectativa | Realismo | Por qué |
|---|---|---|
| "Precisión casi perfecta (95%+)" | ❌ Irreal | Datos sesgados + incompletos + con errores = techo de ~75-80% |
| "Implementar rápido" | ❌ Irreal | Riesgo legal y regulatorio requiere validación previa (3-6 meses mínimo) |
| "Confiar en predicción automática" | ❌ Irreal | En medicina, modelo asiste, no decide. Médico valida siempre. |
| "ROI inmediato" | ❌ Irreal | Primero 6 meses son inversión en validación, no ahorro. |

---

### C. ACCIÓN CONCRETA ANTES DE IMPLEMENTAR IA

**Respuesta:** Se deben ejecutar 5 acciones concretas en orden, antes de tocar el modelo. Timeline: 8-12 semanas.

#### ACCIÓN 1: Auditoría y Limpieza de Datos (Semanas 1-2)

**Qué hacer:**
1. Revisar los 10,000+ registros históricos.
2. Identificar % de datos incompletos, errores obvios, duplicados.
3. Clasificar registros por zona geográfica: ¿cuál es la distribución?

**Entregable:**
- Reporte: "X% incompleto, Y% con errores, Z% de Miraflores, T% de otras zonas"
- Si >30% incompleto → STOP. Colectar más datos antes de continuar.
- Si 80%+ de una zona → PROBLEM. Datos no son representativos de población general.

**Ejemplo de hallazgo crítico:**
- "85% datos provienen de Miraflores, 15% de otras zonas"
- Conclusión: Modelo sesgado geográficamente. **Decisión:** Recolectar datos de 4-5 zonas más antes de entrenar.

---

#### ACCIÓN 2: Definir Protocolo de Confiabilidad (Semanas 2-3)

**Qué hacer:**
1. Convocar médicos especialistas (ej: 3 cardiólogos, 2 internistas).
2. Definir: ¿Qué nivel de confiabilidad es aceptable para esta herramienta?
   - Ej: "Para recomendaciones leves (ej: nutrición), 75% está bien. Para diagnósticos graves (ej: oncología), mínimo 90%."
3. Documentar qué decisiones NUNCA pueden ser automáticas (siempre revisor humano).

**Entregable:**
- Documento de "Protocolo de Confianza": qué hace el modelo, qué hace el médico, cuándo escalar.

**Ejemplo:**
- Modelo predice "flu" con 88% confidence → Recomendación automática: "Considere antiviral, consulte médico"
- Modelo predice "cáncer" con 85% confidence → REQUIERE revisión médico antes de informar al paciente

---

#### ACCIÓN 3: Expansion de Dataset Representativo (Semanas 4-8)

**Qué hacer:**
1. Si datos están sesgados por zona, recolectar desde 5-6 zonas diferentes de Lima (SJL, VMT, Comas, La Molina, Rímac, etc.).
2. Meta: Alcanzar 15,000-20,000 registros que representen población diversa.
3. Asegurar balanceo: ~25% por clase de diagnóstico (si 4 clases), o usar SMOTE.

**Entregable:**
- Dataset limpio, balanceado, geográficamente diverso.
- Documentación: origen de cada registro, validación de etiquetas (revisión médico independiente en 5% muestreo).

**Timeline realista:** 4-6 semanas (requiere colaboración con múltiples centros).

---

#### ACCIÓN 4: Validación Clínica en Etapa Previa (Semanas 9-10)

**Qué hacer:**
1. Entrenar modelo con datos limpios.
2. **Validación ciega:** Presentar 100 casos nuevos a:
   - Médico experto (diagnóstico real)
   - Modelo (predicción)
3. Comparar: ¿en cuántos coinciden? ¿en cuáles divergen? ¿por qué?
4. Calcular métricas reales: Precision, Recall, F1, AUC-ROC.

**Entregable:**
- Reporte de validación: "Modelo alcanzó 82% accuracy, 88% precision en diagnóstico X, 71% en diagnóstico Y. Recomendación: confiar en X, mejorar Y antes de producción."

**Criterio de "Go/No Go":**
- ✅ Go a producción si: F1-Score >0.80 en todas las clases, sin sesgo por zona.
- ❌ No Go si: Recall <0.75 en diagnósticos graves (riesgo de falsos negativos).

---

#### ACCIÓN 5: Implementación Gradual + Monitoreo Continuo (Semana 11+)

**Qué hacer:**
1. **Piloto:** Desplegar modelo con 10% de incidencias nuevas por 2 semanas.
2. **Revisión 100%:** Todos los diagnósticos del modelo son revisados por médico antes de informar paciente (no es automático).
3. **Monitorear:** ¿El modelo en producción real tiene el mismo performance que en validación?
4. **Alertas:** Si accuracy baja <75% en cualquier zona, modelo entra en revisión.

**Entregable:**
- Dashboard de monitoreo: accuracy por zona, precision/recall en tiempo real, alertas de degradación.

---

### Tabla Resumen: Acciones Concretas Pre-Implementación

| Acción | Semana | Responsable | Entregable | Criterio de Éxito | Riesgo si se salta |
|---|---|---|---|---|---|
| 1. Auditoría datos | 1-2 | Data Scientist + IT | Reporte calidad | <30% incompleto, representativo geográfico | Modelo basado en basura |
| 2. Protocolo confianza | 2-3 | Médicos + Legal | Documento normativo | Aprobado por Dirección Médica | Incumplimiento regulatorio |
| 3. Expansión dataset | 4-8 | Operaciones + Clínicas | 15-20K registros limpios | Balanceado, diverso geográfico | Sesgo perpetuado, demanda |
| 4. Validación clínica | 9-10 | Data Scientist + Médicos | Reporte performance | F1 >0.80 en todas clases | Modelo no confiable en producción |
| 5. Despliegue + Monitoreo | 11+ | IT + Médicos | Dashboard en vivo | Accuracy estable, <5% drift/mes | Model drift no detectado, fallos silenciosos |

---

### CONCLUSIÓN PREGUNTA 02

| Pregunta | Respuesta |
|---|---|
| **¿Qué pasaría si se entrena con datos deficientes?** | Sesgo algorítmico, propagación de errores, diagnósticos infraestimados en zonas no representadas, demandas legales. |
| **¿Qué expectativa NO es realista?** | "Precisión casi perfecta" + "Implementar rápido" + "Confiar automáticamente en predicción". Todas son irreales. |
| **¿Qué acción hacer primero?** | Auditoría de datos + Protocolo de confiabilidad. Sin eso, no continuar. Timeline mínimo: 8-12 semanas de preparación antes de producción. |

---

---

## REFLEXIÓN FINAL: IA EN CONTEXTO MÉDICO

### Lecciones clave del caso:

1. **La IA en medicina no es automatización.** Es asistencia: el modelo sugiere, el médico valida y decide.
2. **Datos limpios son más importantes que algoritmos sofisticados.** Un modelo simple con datos buenos > modelo complejo con datos malos.
3. **Sesgo no es accidente.** Es resultado directo de datos sesgados. La únca cura es diversidad en entrenamiento.
4. **Regulación y ética son parte del diseño.** No son obstáculos post-hoc. La clínica que ignore esto enfrenta riesgos legales reales.
5. **ROI tiene múltiples dimensiones.** En salud, costo de un error puede ser una vida. El ROI no es solo "horas ahorradas".

### Recomendación ejecutiva:

**La clínica DEBE hacer las 5 acciones antes de tocar código. Timeline mínimo: 8-12 semanas. Inversión: ~$30,000-$50,000 (auditoria, expertos, datos). Beneficio: evitar demandas de millones y construir sistema confiable.**

> **"Si no tienes tiempo para hacerlo bien, ¿tendrás tiempo para arreglarlo cuando falle?"**

---

## REFERENCIAS Y NORMATIVA

- **Ley 26842 (Salud):** Regulación de práctica médica en Perú.
- **ISO 13485:** Estándar internacional para dispositivos médicos (incluye IA diagnóstica).
- **GDPR Artículo 22:** Regulación de decisiones automatizadas en contextos críticos.
- Clase 3, Diseño de Soluciones con IA — "Riesgos e Implicaciones Éticas": Sesgo algorítmico, privacidad, interpretabilidad, escalabilidad, mantenimiento.

---

**Documento preparado:** Abril 2026  
**Total palabras: ~2,500 (distribución: P1: 1,200 / P2: 1,300)**

