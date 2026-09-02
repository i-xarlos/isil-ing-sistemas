---
name: academic-paper-drafter
description: "Use when: structuring and drafting academic papers with standard format — introduction, theoretical framework, development, conclusions, citations, and bibliography. Guides writing from outline to complete document."
---

# Redactor de Trabajos Académicos

Ayuda a estructurar y redactar trabajos académicos desde ensayos cortos hasta TFGs. Genera el esqueleto completo con secciones estándar y guía la redacción de cada parte.

---

## Flujo de Trabajo

### Paso 1: Diagnosticar el Trabajo

Preguntar o detectar:

| Pregunta | Propósito |
|----------|-----------|
| ¿Qué tipo de trabajo? (ensayo, TFG, informe, artículo) | Definir estructura y extensión |
| ¿Cuál es el tema o pregunta de investigación? | Enfocar el contenido |
| ¿Qué formato de citas se requiere? (APA, Harvard, Vancouver) | Establecer norma bibliográfica |
| ¿Cuál es la extensión esperada? | Ajustar profundidad |
| ¿Hay fuentes base o bibliografía inicial? | Partir de material existente |

### Paso 2: Generar Estructura

Crear el esqueleto completo antes de redactar:

```
1. Introducción
2. Marco Teórico
3. Desarrollo / Resultados
4. Conclusiones
5. Bibliografía
```

### Paso 3: Redactar por Secciones

Seguir el orden de la estructura, completando cada sección con el nivel de detalle apropiado.

### Paso 4: Revisar y Validar

Verificar coherencia, formato de citas y alineación con objetivos.

---

## Formato de Salida

### Encabezado del Documento

```md
# {Título Propuesto}

**Tipo de trabajo:** {ensayo, TFG, informe, artículo}
**Formato de citas:** {APA 7ª ed., Harvard, Vancouver}
**Extensión estimada:** {N} palabras
**Tema:** {tema o pregunta de investigación}
```

### Estructura del Documento

```md
## 1. Introducción

### 1.1. Contexto
{Presentación del tema y su relevancia en el campo}

### 1.2. Justificación
{Por qué es importante investigar este tema}

### 1.3. Objetivos
- **Objetivo general:** {meta principal del trabajo}
- **Objetivos específicos:**
  1. {objetivo 1}
  2. {objetivo 2}
  3. {objetivo 3}

### 1.4. Metodología
{Breve descripción de cómo se aborda el tema}

### 1.5. Estructura del trabajo
{Descripción de qué contiene cada sección}

---

## 2. Marco Teórico

### 2.1. {Concepto o teoría base}
{Definición, evolución, autores clave}

### 2.2. {Concepto o teoría base}
{Definición, evolución, autores clave}

### 2.3. {Concepto o teoría base}
{Definición, evolución, autores clave}

### 2.4. Síntesis del marco teórico
{Conexión entre los conceptos presentados}

---

## 3. Desarrollo / Resultados

### 3.1. {Primer aspecto del desarrollo}
{Argumentación con evidencia y análisis}

### 3.2. {Segundo aspecto del desarrollo}
{Argumentación con evidencia y análisis}

### 3.3. {Tercer aspecto del desarrollo}
{Argumentación con evidencia y análisis}

---

## 4. Conclusiones

### 4.1. Síntesis de hallazgos
{Resumen de lo encontrado según cada objetivo}

### 4.2. Contribuciones
{Qué aporta este trabajo al campo}

### 4.3. Limitaciones
{Qué no se pudo abordar o resolver}

### 4.4. Líneas futuras de investigación
{Qué se podría investigar a partir de aquí}

---

## 5. Bibliografía

### Formato APA 7ª edición

{Lista completa de referencias en orden alfabético}

**Ejemplo:**
- Autor, A. A. (Año). *Título del artículo en cursiva*. Nombre de la Revista, *vol*(núm), pp-pp. https://doi.org/xxxxx

### Formato Harvard

{Lista completa de referencias}

**Ejemplo:**
- Autor, A.A. (Año) 'Título del artículo', *Nombre de la Revista*, vol(sobrescrito), pp. pp-pp.

### Formato Vancouver

{Lista numerada de referencias}

**Ejemplo:**
1. Autor AA. Título del artículo. Nombre de la Revista. Año;vol(núm):pp-pp.
```

---

## Guía por Sección

### Introducción

La introducción debe responder 4 preguntas:

1. **¿Qué se investiga?** — Presentar el tema
2. **¿Por qué es relevante?** — Justificar la investigación
3. **¿Cómo se aborda?** — Metodología breve
4. **¿Qué se espera lograr?** — Objetivos claros

**Estructura recomendada (embudo):**
- Contexto general → Problema específico → Justificación → Objetivos → Metodología

### Marco Teórico

- **No es un resumen** de todo lo leído
- **Es una construcción** que conecta teorías relevantes
- Cada subsección debe tener: concepto → definición → autores → relación con el tema
- Cerrar con una **síntesis** que conecte todos los conceptos

### Desarrollo / Resultados

- **Hilo argumentativo claro:** cada párrafo conecta con el anterior
- **Evidencia:** usar datos, casos, estudios previos
- **Análisis:** no solo describir, sino interpretar
- **Citas:** respaldar cada afirmación importante

### Conclusiones

- **Responder directamente a los objetivos** planteados en la introducción
- **No incluir información nueva** que no esté en el desarrollo
- **Ser honesto** con limitaciones
- **Proyectar** hacia futuras investigaciones

---

## Formato de Citas

### APA 7ª Edición (más común)

**Cita en texto:**
- Autor (Año): "Según García (2023)..."
- Autor (Año, p. X): "La teoría establece que... (García, 2023, p. 45)"
- Varios autores: "(García y López, 2023)" o "(García et al., 2023)"

**Referencia bibliográfica:**
- Artículo: `Autor, A. A. (Año). Título. Revista, vol(núm), pp-pp.`
- Libro: `Autor, A. A. (Año). *Título en cursiva*. Editorial.`
- Web: `Autor, A. A. (Año, Mes Día). Título. Sitio Web. URL`

### Harvard

**Cita en texto:**
- (Autor Año): "(García 2023)"
- (Autor Año, p. X): "(García 2023, p. 45)"

**Referencia:**
- Autor, A.A. (Año) 'Título', *Revista*, vol, pp. pp-pp.

### Vancouver

**Cita en texto:**
- Número correlativo: "Según [1]..."

**Referencia:**
1. Autor AA. Título. Revista. Año;vol(núm):pp-pp.

---

## Placeholders y Marcas

Usar estas marcas cuando falte información:

| Marca | Significado |
|-------|-------------|
| `[CITA NECESARIA]` | Falta referencia bibliográfica |
| `[AUTOR, AÑO]` | Cita pendiente de completar |
| `[DATO PENDIENTE]` | Dato numérico por verificar |
| `[AMPLIAR]` | Sección que necesita más desarrollo |
| `[VERIFICAR FUENTE]` | Información que requiere confirmación |

---

## Ejemplo de Uso

**Entrada:**
> "Necesito un ensayo de 2000 palabras sobre transformación digital en PYMEs, formato APA"

**Salida parcial:**
```md
# Transformación Digital en PYMES: Desafíos y Oportunidades para la Competitividad

**Tipo de trabajo:** Ensayo
**Formato de citas:** APA 7ª edición
**Extensión estimada:** 2000 palabras
**Tema:** Análisis de los factores críticos que influyen en la adopción de tecnologías digitales en pequeñas y medianas empresas

---

## 1. Introducción

### 1.1. Contexto

La transformación digital se ha convertido en un imperativo estratégico para las organizaciones contemporáneas. En el contexto de las pequeñas y medianas empresas (PYMES), que representan más del 99% de las unidades económicas en Latinoamérica [CITA NECESARIA], la adopción de tecnologías digitales constituye un factor determinante para su supervivencia y crecimiento.

### 1.2. Justificación

Comprender los factores que facilitan u obstaculizan la transformación digital en PYMES es fundamental para diseñar políticas públicas efectivas y estrategias empresariales que cierren la brecha tecnológica...
```

---

## Restricciones

- **No inventar fuentes ni citas** — usar solo información verificada
- **Marcar con [CITA NECESARIA]** donde haga falta referencia
- **No plagiar** — todo debe ser redacción original
- **Ajustar extensión** al tipo de trabajo indicado
- **Usar registro formal académico** — evitar coloquialismos
- **Las conclusiones deben responder a los objetivos** — no incluir hallazgos nuevos

---

## Checklist de Calidad

Antes de entregar el trabajo, verificar:

- [ ] Estructura completa: introducción → marco teórico → desarrollo → conclusiones → bibliografía
- [ ] Introducción incluye: contexto, justificación, objetivos, metodología
- [ ] Objetivos son claros y medibles
- [ ] Marco teórico conecta conceptos relevantes
- [ ] Desarrollo tiene hilo argumentativo claro
- [ ] Conclusiones responden directamente a los objetivos
- [ ] Todas las afirmaciones importantes tienen cita
- [ ] No hay [CITA NECESARIA] sin resolver
- [ ] Formato de citas es consistente (APA, Harvard o Vancouver)
- [ ] Bibliografía está completa y bien formateada
- [ ] Registro formal académico en todo el documento
