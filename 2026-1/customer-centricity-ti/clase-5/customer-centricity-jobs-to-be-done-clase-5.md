# Jobs to be Done (JTBD) y su Aplicación

**Clase 5** — Customer Centricity en Tecnologías de Información | ISIL 2026-1

## 📌 Introducción

¿Por qué un usuario compra un taladro? 

**No es por el taladro.** Es por el agujero que necesita en la pared.

**Jobs to be Done (JTBD)** es una teoría que va más allá de características del producto. Entiende que los clientes no compran **qué es** el producto, sino **qué problema resuelve** y **qué quieren lograr** con él.

En esta clase aprenderemos a identificar esos "trabajos" que nuestros clientes quieren realizar, para diseñar soluciones que realmente importan.

---

## 1. ¿Qué es Jobs to be Done (JTBD)?

### Principio Fundamental

```
PENSAMIENTO TRADICIONAL (ERRÓNEO):
"Nuestro usuario es un hombre de 35 años, ejecutivo,
 que valora la calidad y la innovación."
→ RESULTADO: Producto bonito pero que NADIE usa

PENSAMIENTO JTBD (CORRECTO):
"Nuestro usuario quiere agendar reuniones SIN ir a una 
 oficina de secretaria. Quiere eficiencia."
→ RESULTADO: Google Calendar revoluciona el trabajo
```

**JTBD = ¿Qué trabajo quiere lograr el usuario?**

No es sobre **quién** es el usuario (demografía).
No es sobre **qué** hace el usuario (features).
Es sobre **por qué** quiere hacer algo (necesidad real).

---

### El Ejemplo de Taxi: Rappi, Uber

```
PREGUNTA: ¿Qué es lo que busca el usuario en una app de taxi?

RESPUESTAS TRADICIONALES (Incompletas):
❌ "Quiero pedir un taxi"
❌ "Quiero que sea rápido"
❌ "Quiero un conductor confiable"

RESPUESTAS JTBD (Completas y Específicas):
✅ "Quiero pedir un taxi para mí" (JTBD 1)
✅ "Quiero pagar con tarjeta de crédito O efectivo" (JTBD 2)
✅ "Quiero pedir un taxi para otra persona" (JTBD 3)
✅ "Quiero conocer el historial de mi conductor" (JTBD 4)
✅ "Quiero pedir un taxi para llevar a mis amigos" (JTBD 5)
✅ "Necesito compartir el estado del viaje a mi familia" (JTBD 6)
✅ "Quiero hacer un viaje con 3 paradas" (JTBD 7)
✅ "Quiero elegir el precio que estoy dispuesto a pagar" (JTBD 8)

INSIGHTS:
- Los usuarios NO quieren solo "un taxi"
- Quieren FLEXIBILIDAD (para amigos, familia, dinero)
- Quieren SEGURIDAD (historial del conductor)
- Quieren CONTROL (compartir ubicación, paradas múltiples)
```

**Fórmula de un JTBD:**
```
"Quiero / Necesito [ACCIÓN] para [RESULTADO DESEADO]"

Ejemplo: "Necesito compartir mi ubicación EN VIVO para que mi mamá 
         sepa que llegué bien"
```

---

## 2. Identificación de JTBD

### Paso 1: Investigación Profunda

No preguntes: "¿Qué características quieres?"
Pregunta: "¿Qué intentabas lograr la última vez que usaste [producto]?"

#### 📊 Ejemplo: E-commerce (Amazon)

```
INVESTIGACIÓN CON USUARIOS:

Usuario: María
Última compra: Audífonos

PREGUNTA INCORRECTA:
"¿Qué características buscas en audífonos?"
Respuesta: "Buen sonido, resistentes al agua, precio bajo"
→ GENÉRICO, todos dicen lo mismo

PREGUNTA CORRECTA (JTBD):
"Cuéntame la última vez que compró audífonos. ¿Qué estabas 
 intentando lograr?"
Respuesta:
"Trabajo en oficina ruidosa. Necesitaba CONCENTRARME en mis tareas.
 Quería audífonos que AISLARAN el sonido ambiente. Y que combinen 
 con mi estilo (Trabajo, no gimnasio)."

JTBDs IDENTIFICADOS:
1. "Necesito aislar ruido ambiente para concentrarme"
2. "Quiero audífonos que funcionen en ambiente laboral (no deportivo)"
3. "Busco marca reconocida que no sea costosa"
4. "Quiero que duren mínimo 1 año sin romperse"

IMPLICACIÓN PARA DISEÑO:
- Énfasis en ruido cancellation
- Estética profesional (no coloridos)
- Durabilidad como feature principal
```

### Paso 2: Síntesis de JTBDs

Una vez que entrevisté 10-15 usuarios, busca PATRONES:

```
USUARIO 1: Necesita aislar ruido
USUARIO 2: Necesita aislar ruido
USUARIO 3: Necesita aislar ruido
USUARIO 4: Necesita durabilidad
USUARIO 5: Necesita aislar ruido
...

PATRÓN IDENTIFICADO:
→ 70% de usuarios busca AISLAMIENTO DE RUIDO (JTBD prioritario)
→ 40% de usuarios busca DURABILIDAD (JTBD secundario)
→ 30% de usuarios busca COMPATIBILIDAD con smartphone
```

### Paso 3: Priorización

No todos los JTBDs tienen igual importancia:

```
MATRIZ DE PRIORIZACIÓN: IMPACTO × COBERTURA

           ALTO IMPACTO
                 ↑
                 │
    Q2: Importante     │     Q1: PRIORITARIO
    (pocos usuarios)   │     (muchos usuarios)
                 │     │
    ─────────────┼─────┼──────────────→ COBERTURA
                 │     │
    Q3: Descartable    │     Q4: Considerar
    (pocos, bajo       │     (muchos usuarios,
     impacto)          │      impacto medio)
                 │
              BAJO IMPACTO

EJEMPLO (Audífonos):
Q1 (Prioritario):    Aislamiento de ruido (70% usuarios, alto impacto)
Q1 (Prioritario):    Durabilidad (40% usuarios, alto impacto)
Q4 (Considerar):     Compatibilidad Bluetooth 5.0 (80% usuarios, impacto medio)
Q3 (Descartable):    Color rosa (5% usuarios, bajo impacto)
```

---

## 3. Benchmarking con JTBDs

### Comparación Competitiva Basada en Capacidades

Olvida comparaciones genéricas. **Compara JTBDs que cada empresa resuelve.**

#### Estructura de Benchmarking Simple

```
JTBDs              Nuestra App    Competidor A    Competidor B
────────────────────────────────────────────────────────────
Pedir taxi         ✅ Sí          ✅ Sí           ✅ Sí
Pagar con efectivo ✅ Sí          ❌ No           ✅ Sí
Compartir estado   ✅ Sí          ✅ Sí           ❌ No
Viajes con paradas ✅ Sí          ❌ No           ❌ No
Historial chofer   ❌ No          ✅ Sí           ✅ Sí
────────────────────────────────────────────────────────────

ANÁLISIS:
- NUESTRA VENTAJA: Viajes con paradas (único en el mercado)
- NUESTRA DESVENTAJA: No mostramos historial del chofer
- OPORTUNIDAD: Agregar histórico para competir con A y B
```

#### Benchmarking Cuantitativo (Nivel de Desarrollo)

Si tienes data sobre nivel de madurez:

```
JTBDs              Nuestra App    Competidor A    Meta 2026
──────────────────────────────────────────────────────────
Pedir taxi         4/5 (bueno)    5/5 (perfecto)  5/5
Pagar efectivo     2/5 (lento)    4/5 (rápido)    4/5
Compartir estado   5/5 (excelente) 3/5            4/5
────────────────────────────────────────────────────────────

DECISIÓN:
- Pedir taxi: Está OK. Competidor A es POCO mejor.
- Pagar efectivo: ⚠️ PROBLEMA. Rezagados vs competencia.
            → Necesita mejora URGENTE
- Compartir estado: ✅ VENTAJA CLARA. Seguir explotando.
```

---

## 4. Aplicación Práctica: Rappi

### JTBDs que Rappi Resuelve

```
JTBD PRIMARIOS (Resueltos bien):
1. ✅ "Necesito comida entregada en mi casa"
2. ✅ "Quiero seleccionar múltiples restaurantes en UN pedido"
3. ✅ "Necesito seguimiento en tiempo real del pedido"
4. ✅ "Quiero conversar con el repartidor si hay problemas"

JTBD SECUNDARIOS (Parcialmente resueltos):
5. ⚠️ "Necesito reagendar mi pedido" (puede retrasarse 30 min)
6. ⚠️ "Quiero garantía de que llegará en X tiempo"

JTBD NO RESUELTOS (Oportunidad):
7. ❌ "Necesito compartir mi pedido con otro usuario"
8. ❌ "Quiero pre-ordering para restaurante nuevo"

IMPLICACIÓN:
Si competidor ofrece esos JTBDs no resueltos (7 y 8),
Rappi pierde usuarios.
```

---

## 5. JTBDs en el Proceso de Diseño Completo

### JTBD Como Pilar del Proceso

```
ETAPA 1: IDENTIFICACIÓN & ANÁLISIS
├─ Identificar JTBDs con usuarios
├─ Priorizar con matriz impacto × cobertura
└─ Output: Listado de JTBDs priorizados
         (ej: "Aislar ruido", "Durabilidad", etc.)

        ↓↓↓

ETAPA 2: IDEACIÓN & PROTOTIPOS
├─ Para cada JTBD prioritario, generar ideas
├─ Prototipar múltiples soluciones
└─ Output: 3-5 prototipos por JTBD
         (ej: Prototipo de "aislamiento activo",
              prototipo de "isolamiento pasivo")

        ↓↓↓

ETAPA 3: PRUEBAS & VALIDACIÓN
├─ Testear prototipos con usuarios reales
├─ Medir: ¿Resuelve el JTBD?
└─ Output: Data de qué prototipo ganó
         (ej: "Aislamiento activo prefieren 80%")

        ↓↓↓

ETAPA 4: DISEÑO UI/UX
├─ Tomar prototipo ganador
├─ Diseñar interfaz visual
└─ Output: Wireframes, mockups
         (ej: "Botón de aislamiento activo visible")

        ↓↓↓

ETAPA 5: HISTORIAS DE USUARIO
├─ Convertir JTBD en historias de usuario técnicas
├─ Definir requisitos exactos
└─ Output: Historias de usuario para desarrollo
         (ej: "Como usuario, quiero activar ruido
              cancellation presionando un botón")
```

### Visualización: JTBD → Prototipos → Historias

```
JTBD 1: "Necesito aislar ruido ambiente"
  ├─ Prototipo 1: Noise cancelling activo
  ├─ Prototipo 2: Aislamiento pasivo (espuma)
  └─ GANADOR: Noise cancelling (80% preferencia)
       └─ Historia Usuario 1: "Como usuario en oficina, 
                              quiero presionar botón de 
                              noise cancelling para 
                              concentrarme en tareas críticas"
       └─ Historia Usuario 2: "Como usuario, quiero ajustar 
                              NIVEL de noise cancelling 
                              (bajo, medio, alto)"

JTBD 2: "Necesito durabilidad de 1 año mínimo"
  ├─ Prototipo 1: Material plástico reforzado
  ├─ Prototipo 2: Metal + cuero
  └─ GANADOR: Metal + cuero (durabilidad probada)
       └─ Historia Usuario 3: "Como usuario, quiero 
                              audífonos que resistan 
                              caídas desde 1m"
```

---

## 6. JTBD ≠ Historia de Usuario (Diferencia Clave)

### ¿Son lo mismo?

```
❌ NO. Están relacionados pero son diferentes en NIVEL y USO.
```

### Comparación Detallada

| Aspecto | Jobs to be Done | Historia de Usuario |
|---|---|---|
| **¿Qué es?** | Necesidad de alto nivel | Especificación de funcionalidad |
| **Nivel** | Estratégico (qué lograr) | Táctico (cómo implementar) |
| **Audiencia** | Todos (Producto, Ingeniería, Marketing) | Ingeniería principalmente |
| **Ejemplo** | "Necesito aislar ruido ambiente" | "Como usuario, quiero activar noise cancelling con botón" |
| **Usa** | Priorizar roadmap | Guiar desarrollo sprint |
| **Granularidad** | 1 JTBD = 1-3 Historias de Usuario | 1 Historias = 1 funcionalidad |

#### 📊 Relación Visual

```
JTBD (ESTRATÉGICO)
"Necesito aislar ruido ambiente"
        ↓
        ├─ Historia 1: "Como usuario, quiero botón 
        │               on/off de noise cancelling"
        │
        ├─ Historia 2: "Como usuario, quiero 3 niveles 
        │               de aislamiento (bajo/medio/alto)"
        │
        └─ Historia 3: "Como usuario, quiero que el 
                        sistema aprenda mi preferencia"

RESULTADO: 1 JTBD → 3 Historias técnicas específicas
```

---

## 7. Relación de JTBD en TODO el Proceso de Diseño

### Ciclo Completo (Diagrama Fase a Fase)

```
┌──────────────────────────────────────────────────────────┐
│ FASE 1: IDENTIFICACIÓN DE NECESIDADES & PROBLEMAS        │
├──────────────────────────────────────────────────────────┤
│                                                          │
│ ENTRADA: Investigación con usuarios                      │
│ PROCESO: Extraer JTBDs (qué quieren lograr)             │
│ SALIDA: Lista de JTBDs identificados                    │
│         Ej: ["Aislar ruido", "Durabilidad",            │
│              "Estilo profesional", "Precio accesible"]  │
│                                                          │
└──────────────────────────────────────────────────────────┘
                        ↓
┌──────────────────────────────────────────────────────────┐
│ FASE 2: ANÁLISIS & PRIORIZACIÓN                          │
├──────────────────────────────────────────────────────────┤
│                                                          │
│ ENTRADA: Listado de JTBDs                               │
│ PROCESO: Matriz impacto × cobertura                      │
│ SALIDA: JTBDs priorizados para q1                       │
│         Ej: Q1 = ["Aislar ruido", "Durabilidad"]       │
│             Q4 = ["Precio accesible"]                   │
│                                                          │
└──────────────────────────────────────────────────────────┘
                        ↓
┌──────────────────────────────────────────────────────────┐
│ FASE 3: GENERACIÓN DE IDEAS & PROTOTIPOS                 │
├──────────────────────────────────────────────────────────┤
│                                                          │
│ ENTRADA: JTBDs priorizados                              │
│ PROCESO: Brainstorm soluciones para cada JTBD           │
│ SALIDA: Múltiples prototipos por JTBD                   │
│         Para "Aislar ruido":                             │
│         - Prototipo A: Cancelación activa               │
│         - Prototipo B: Pasiva (espuma)                  │
│                                                          │
└──────────────────────────────────────────────────────────┘
                        ↓
┌──────────────────────────────────────────────────────────┐
│ FASE 4: PRUEBAS & VALIDACIONES                           │
├──────────────────────────────────────────────────────────┤
│                                                          │
│ ENTRADA: Prototipos                                     │
│ PROCESO: Testear qué resuelve mejor cada JTBD           │
│ SALIDA: Análisis impacto & esfuerzo                     │
│         "JTBD Aislamiento: Prototipo A gana (80%)"      │
│         "¿Esfuerzo? Bajo. ¿Impacto? Alto. → HACER"     │
│                                                          │
│ SALIDA ALTERNATIVA:                                     │
│         "JTBD Estilo profesional: Prototipo B gana"     │
│         "¿Esfuerzo? Muy alto. ¿Impacto? Medio"         │
│         "→ NO PRIORITARIO (mover a Q4)"                 │
│                                                          │
└──────────────────────────────────────────────────────────┘
                        ↓
┌──────────────────────────────────────────────────────────┐
│ FASE 5: DISEÑO UI/UX                                     │
├──────────────────────────────────────────────────────────┤
│                                                          │
│ ENTRADA: Prototipo validado                             │
│ PROCESO: Diseñar interfaz visual (menos relacionado     │
│          con JTBD, pero GUIADO por él)                  │
│ SALIDA: Wireframes, mockups                             │
│         "Botón noise cancelling debe estar VISIBLE"     │
│         (derivado del JTBD)                              │
│                                                          │
└──────────────────────────────────────────────────────────┘
                        ↓
┌──────────────────────────────────────────────────────────┐
│ FASE 6: DOCUMENTACIÓN EN HISTORIAS DE USUARIO            │
├──────────────────────────────────────────────────────────┤
│                                                          │
│ ENTRADA: UI/UX finalizado                               │
│ PROCESO: Traducir cada JTBD a historias de usuario      │
│ SALIDA: Historias técnicas para desarrollo              │
│                                                          │
│ JTBD: "Aislar ruido"                                    │
│   ↓ Historias:                                          │
│   - "Como usuario, quiero botón on/off..."             │
│   - "Como usuario, quiero 3 niveles..."                │
│   - "Como usuario, quiero que aprenda..."              │
│                                                          │
└──────────────────────────────────────────────────────────┘

CONCLUSIÓN:
Los JTBDs son la BRÚJULA en CADA fase del proceso.
No desaparecen. Guían decisiones constantemente.
```

---

## 8. Actividad Práctica: Identifica JTBDs

### Ejercicio: App de Calendario vs Competencia

```
INSTRUCCIONES:
1. Analiza una app de calendario (Google Calendar, Outlook)
2. Identifica al menos 10 JTBDs que resuelve
3. Compara con competencia (Notion, Fantastical)
4. Define 1 JTBD que la app NO resuelve aún

EJEMPLO RESPUESTA (Parcial):

GOOGLE CALENDAR - JTBDs QUE RESUELVE:
1. Crear evento rápidamente
2. Ver calendario de otros colegas
3. Recibir reminder 15 min antes
4. Buscar horarios libres entre múltiples personas
5. Sincronizar con múltiples calendarios (trabajo, personal)
6. Compartir evento por link
7. Ver propuestas de horario automáticas
8. Integrar Zoom en invitación
9. Bloquear horarios (no meetings time)
10. Historial de cambios en evento

VS COMPETENCIA (Notion):
[Notion NO puede]: Compartir hora libre automáticamente
[Notion SÍ puede]: Databases de eventos personalizadas

JTBD NO RESUELTO POR GOOGLE:
"Necesito que se sugiera automáticamente tiempo 
 de almuerzo/descanso entre reuniones"
→ OPORTUNIDAD COMPETITIVA
```

---

## 9. Conclusiones Clave

1. **JTBD NO es demografía:** No es "hombre de 35 años"
2. **JTBD es necesidad real:** "Necesito concentrarme sin ruido"
3. **Los clientes no compran features:** Compran lo que **logran hacer** con ellas
4. **JTBD guía priorización:** ¿Muchos usuarios? ¿Alto impacto? → Hacer
5. **Benchmarking JTBD:** Compara capacidades, no precios
6. **JTBD EN TODO el diseño:** Desde identificación hasta historias de usuario
7. **JTBD ≠ Historia de Usuario:** Son diferentes niveles de especificidad

---

## 10. Conexión con Otras Clases

- **Clase 1-4:** Marcos previos (User Personas, Customer Journey)
- **Dirección de Datos:** Data para identificar JTBDs prioritarios
- **Design Thinking:** Usar JTBDs en ideación
- **Desarrollo Ágil:** JTBDs → Historias → Sprints

---

**Clase 5 — Customer Centricity en Tecnologías de Información | ISIL 2026-1**
