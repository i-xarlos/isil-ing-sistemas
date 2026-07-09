# Criterios para Selección de Tecnologías (Clase 15)

**Curso:** Arquitectura Empresarial (ISIL, 2026-1)  
**Docente:** [pendiente]  
**Fecha:** [pendiente]

---

## Introducción

**Gancho humano:** Imagina que tu empresa compra un sistema ERP "de los mejores del mercado" y en 6 meses nadie lo usa. No falló la tecnología. Falló el diagnóstico previo.

**Pregunta guía:** ¿Cómo decidimos qué tecnología adoptar cuando hay cientos de opciones y presupuestos limitados?

**Objetivos de aprendizaje:**
- Entender los 4 modelos operativos de MIT CISR y cómo cada uno exige tecnologías distintas
- Identificar criterios estratégicos para la selección tecnológica más allá del "costo vs funcionalidad"
- Evaluar el impacto organizacional y cultural como factor determinante en el éxito o fracaso de una implementación

---

## 1. Modelo Operativo

### ¿Qué es?

Un modelo operativo describe **cómo compite la empresa** y cómo coordina sus unidades de negocio. No es una estrategia, sino el mecanismo operativo que la hace realidad.

**Analogía simple:** Piensa en una cadena de restaurantes. ¿Cada sucursal inventa su menú (diversificación), o todas cocinan igual con recetas centralizadas (replicación)? Esa decisión define todo: tecnología, procesos, compras, capacitación.

### Los 4 Modelos Operativos (MIT CISR)

| Modelo Operativo | Característica | Ejemplo Empresa | Necesidad Tecnológica |
|------------------|----------------|-----------------|----------------------|
| **Diversificación** | Sistemas independientes por unidad | Conglomerados (Virgin, Berkshire Hathaway) | Mínima integración, sistemas locales |
| **Coordinación** | Integración de datos entre unidades | Retail multi-canal (Walmart, Falabella) | Data warehouses, APIs de sharing |
| **Replicación** | Estandarización de procesos idénticos | Franquicias (McDonald's, Starbucks) | Plataformas centralizadas replicables |
| **Unificación** | Plataformas integradas globales | Bancos globales (Santander, HSBC) | ERP enterprise-wide, arquitectura única |

### Detalle de cada modelo

#### Diversificación
Cada unidad opera con libertad total. La tecnología es local.

- **Ventaja:** Agilidad por unidad
- **Riesgo:** Silos totales, sin visión corporativa
- **Tecnología típica:** Sistemas legacy independientes, sin integración

#### Coordinación
Las unidades comparten datos pero mantienen autonomía operativa.

- **Ventaja:** Visión 360° del cliente
- **Riesgo:** Complejidad de integración
- **Tecnología típica:** Data warehouses, middleware, APIs

#### Replicación
Todos los sitios ejecutan procesos idénticos desde un centro.

- **Ventaja:** Consistencia y escalabilidad
- **Riesgo:** Rigidez ante mercados locales
- **Tecnología típica:** Plataformas centralizadas, POS estándar

#### Unificación
Una sola plataforma sirve a toda la organización.

- **Ventaja:** Eficiencia máxima, datos consolidados
- **Riesgo:** Costo alto, dependencia de un solo sistema
- **Tecnología típica:** ERP global, arquitectura de microservicios compartida

### Ejemplo detallado: McDonald's

```
┌─────────────────────────────────────────────────┐
│   CASO McDONALD'S — MODELO DE REPLICACIÓN       │
├─────────────────────────────────────────────────┤
│                                                 │
│  1. Modelo operativo: Replicación               │
│     → Todos los locales hacen lo mismo           │
│     ↓                                           │
│  2. Selección tecnológica:                      │
│     → POS estandarizado global                  │
│     → Plataforma de pedidos centralizada        │
│     → Dashboard de métricas único               │
│     ↓                                           │
│  3. Resultado:                                  │
│     → Un Big Mac sabe igual en Lima y Tokio     │
│     → Datos consolidados para decisión global   │
│                                                 │
└─────────────────────────────────────────────────┘
```

> **Regla clave:** La tecnología debe servir al modelo operativo, no al revés. Primero defines cómo compites, después eliges con qué herramientas.

---

## 2. Ventaja Competitiva con Tecnología

### El argumento de Porter

Michael Porter plantea que la tecnología no es ventaja competitiva por sí misma. Lo es **solo cuando fortalece una posición estratégica existente**.

**Error común:** "Vamos a implementar IA porque la competencia ya la tiene." Sin un objetivo estratégico claro, es gasto sin retorno.

### Casos por industria

| Industria | Empresa | Ventaja tecnológica | Cómo genera valor |
|-----------|---------|---------------------|-------------------|
| Retail | Amazon | Logística con IA y robots | Entregas en menos de 24h, costos bajos |
| Streaming | Netflix | Motor de recomendación | Retención: 80% del contenido visto por recomendación |
| Banca | BBVA | App mobile-first | Reducción de costos por canal (digital vs sucursal) |
| Manuf. | Siemens | Gemelos digitales | Simulación antes de producir, menos defectos |
| Alimentos | Nestlé | Cadena de suministro predictiva | Reducción de desperdicio, mejor forecast |

### Según Ross, Weill y Robertson (MIT CISR)

La ventaja competitiva tecnológica viene de **cuatro dominios**:

1. **Mejora de procesos:** Automatizar lo que es manual
2. **Evolución del negocio:** Crear nuevos modelos con tecnología
3. **Ventaja de información:** Usar datos mejor que la competencia
4. **Transformación estratégica:** Redefinir la industria con tecnología

```
┌────────────────────────────────────────────┐
│   DOMINIOS DE VENTAJA TECNOLÓGICA          │
├────────────────────────────────────────────┤
│                                            │
│  ┌──────────┐    ┌──────────────────┐      │
│  │ Mejora   │    │ Ventaja de       │      │
│  │ Procesos │    │ Información      │      │
│  └────┬─────┘    └───────┬──────────┘      │
│       │                  │                 │
│       ▼                  ▼                 │
│  Eficiencia         Decisiones            │
│  Operativa          Mejores               │
│       │                  │                 │
│       └────────┬─────────┘                 │
│                ▼                           │
│  ┌─────────────────────────┐               │
│  │ Transformación          │               │
│  │ Estratégica             │               │
│  └─────────────────────────┘               │
│                                            │
└────────────────────────────────────────────┘
```

---

## 3. Capacidad de Adopción y Madurez Tecnológica

### ¿Qué es la madurez tecnológica?

Es el nivel de preparación de una organización para adoptar y usar una tecnología de manera efectiva. No se trata de "tener la herramienta", sino de **estar listo para usarla**.

**Analogía simple:** No es lo mismo darle un smartphone a alguien que nunca usó uno, que a alguien que lleva 10 años con dispositivos móviles. La tecnología es la misma; la capacidad de adopción, no.

### Niveles de madurez

| Nivel | Nombre | Característica | Acción requerida |
|-------|--------|----------------|------------------|
| 1 | Exploración | Se investiga, no se usa | Capacitación inicial |
| 2 | Piloto | Se prueba en un área controlada | Medir resultados, ajustar |
| 3 | Adopción parcial | Se usa en múltiples áreas | Estandarizar procesos |
| 4 | Adopción madura | Es parte del flujo de trabajo | Optimización continua |
| 5 | Innovación | Se crea algo nuevo con ella | Investigar siguiente nivel |

### Factores que determinan la madurez

- **Capital humano:** ¿El equipo tiene skills para usar la tecnología?
- **Procesos existentes:** ¿Hay procesos que se pueden adaptar o hay que crear desde cero?
- **Cultura organizacional:** ¿La empresa premia la innovación o castiga el error?
- **Infraestructura base:** ¿La tecnología actual soporta la nueva adopción?

### Ejemplo: Transformación digital en retail peruano

```
┌─────────────────────────────────────────────────┐
│   CASO: RETAIL PERUANO — TRANSFORMACIÓN DIGITAL  │
├─────────────────────────────────────────────────┤
│                                                 │
│  Nivel 1: Exploración                           │
│  → Estudian e-commerce, pocos compromisos       │
│  ↓                                              │
│  Nivel 2: Piloto                                │
│  → Lanzan tienda online con catálogo limitado   │
│  ↓                                              │
│  Nivel 3: Adopción parcial                      │
│  → Integran inventario online + tiendas físicas │
│  ↓                                              │
│  Nivel 4: Adopción madura                       │
│  → Omnicanal completo: click & collect, delivery│
│  ↓                                              │
│  Nivel 5: Innovación                            │
│  → IA para predicción de demanda personalizada  │
│                                                 │
└─────────────────────────────────────────────────┘
```

> **Insight clave:** Muchas empresas fallan porque saltan del nivel 1 al 4 sin pasar por los intermedios. La madurez no se salta.

---

## 4. Impacto Organizacional y Cultural

### Por qué importa

La mejor tecnología fracasa si la organización no está preparada. Según McKinsey, **el 70% de las transformaciones digitales fallan por factores humanos**, no técnicos.

### Factores críticos

| Factor | Impacto | Estrategia | Ejemplo |
|--------|---------|------------|---------|
| Resistencia al cambio | Lentitud en adopción | Change management proactivo | Empresa que migra a cloud y empleados siguen usando servidores locales |
| Falta de skills | Brecha digital interna | Capacitación continua y roles de champions | Banco que necesita data scientists pero solo tiene analistas tradicionales |
| Cultura de risk-averse | Bloqueo de innovación | Pilotos pequeños con tolerancia al error | Empresa que no prueba IA "porque puede fallar" |
| Silos organizacionales | Replicación de esfuerzos | Comités transversales de arquitectura | Dos deptos compran la misma herramienta sin saberlo |
| Falta de sponsorship ejecutivo | Proyectos abandonados | Asociar transformación a KPIs de negocio | CFO que no aprueba presupuesto porque no ve ROI claro |

### Marco de evaluación del impacto

Antes de seleccionar tecnología, evalúa estos 4 factores:

```
┌─────────────────────────────────────────────────────┐
│   MARCO DE EVALUACIÓN — IMPACTO ORGANIZACIONAL      │
├─────────────────────────────────────────────────────┤
│                                                     │
│  1. ¿QUIÉN USA ESTO?                               │
│     → Número de usuarios afectados                  │
│     → Nivel de cambio en sus procesos diarios       │
│                                                     │
│  2. ¿QUÉ CAPACIDADES FALTAN?                       │
│     → Skills técnicos necesarios                    │
│     → Disponibilidad interna o contratación externa │
│                                                     │
│  3. ¿CÓMO RESPONDE LA CULTURA?                     │
│     → Historial de adopción de cambios previos      │
│     → Liderazgo comprometido o resistente           │
│                                                     │
│  4. ¿CUÁNTO TIEMPO SE TOMA?                        │
│     → Impacto en productividad durante transición   │
│     → Ventana de oportunidad del mercado            │
│                                                     │
└─────────────────────────────────────────────────────┘
```

---

## 5. Selección Tecnológica Estratégica

### Proceso de decisión

La selección tecnológica no es una compra. Es una **decisión estratégica** que debe seguir un proceso estructurado.

```
┌─────────────────────────────────────────────────────┐
│   PROCESO DE SELECCIÓN TECNOLÓGICA ESTRATÉGICA       │
├─────────────────────────────────────────────────────┤
│                                                     │
│  1. Definir modelo operativo                        │
│     → ¿Cómo competimos?                             │
│     ↓                                               │
│  2. Identificar brechas tecnológicas                │
│     → ¿Qué nos falta para operar así?              │
│     ↓                                               │
│  3. Evaluar opciones contra criterios estratégicos  │
│     → ¿Qué tecnología cierra la brecha?            │
│     ↓                                               │
│  4. Evaluar impacto organizacional                  │
│     → ¿Estamos listos para usarla?                 │
│     ↓                                               │
│  5. Decidir e implementar por fases                 │
│     → ¿Cómo la adoptamos sin romper nada?          │
│                                                     │
└─────────────────────────────────────────────────────┘
```

### Criterios de selección

| Criterio | Pregunta clave | Ejemplo de evaluación |
|----------|----------------|----------------------|
| **Alineación estratégica** | ¿Apoya nuestro modelo operativo? | ¿Una plataforma de datos sirve para un modelo de replicación? |
| **Madurez tecnológica** | ¿Estamos listos para usarla? | ¿Tenemos data engineers para un data lake? |
| **Escalabilidad** | ¿Crece con nosotros? | ¿Soporta 10x usuarios en 3 años? |
| **Costo total de propiedad** | ¿Cuánto cuesta realmente? | Licencia + implementación + mantenimiento + capacitación |
| **Vendor lock-in** | ¿Dependemos de un solo proveedor? | ¿Qué pasa si el proveedor quiebra? |
| **Impacto cultural** | ¿La organización lo adoptará? | ¿Requiere cambios radicales en workflows? |

---

## Errores Comunes a Evitar

| Error | Ejemplo real | Consecuencia | Cómo evitarlo |
|-------|--------------|--------------|---------------|
| Elegir tecnología sin definir modelo operativo | Empresa compra SAP sin saber si es replicación o coordinación | ERP que nadie usa o que se adapta mal | Diagnosticar modelo antes de comprar |
| Comprar por tendencia, no por necesidad | "Todos tienen cloud, nosotros también" | Migración costosa sin beneficio claro | Evaluar brecha tecnológica real |
| Ignorar la madurez organizacional | Implementar IA en empresa con datos en Excel | Proyecto abortado en piloto | Evaluar nivel de madurez primero |
| No capacitar usuarios | Sistema nuevo, mismos usuarios sin entrenamiento | Baja adopción, trabajo paralelo | Incluir presupuesto de capacitación |
| Seleccionar por costo menor | Proveedor más barato sin evaluar soporte | Mantenimiento caro, soporte inexistente | Evaluar TCO, no solo precio de licencia |
| No involucrar stakeholders | IT decide sola, negocio no participa | Resistencia, requisitos incompletos | Comité transversal de decisión |

---

## Conclusiones

1. **El modelo operativo determina la tecnología**, no al revés. Primero defines cómo compites, después eliges con qué herramientas lo haces.

2. **La tecnología sin madurez organizacional es gasto muerto.** Evaluar la capacidad de adopción es tan importante como evaluar features técnicas.

3. **La ventaja competitiva tecnológica viene de la información**, no del hardware. Los datos bien usados superan cualquier herramienta cara.

**Frase clave:**
> "La mejor tecnología es la que tu organización puede usar, no la que tiene más funciones."

---

## Glosario

| Término | Definición | Ejemplo |
|---------|------------|---------|
| **Modelo operativo** | Cómo compite y coordina la empresa sus unidades | McDonald's: replicación global de procesos |
| **Madurez tecnológica** | Nivel de preparación para adoptar tecnología | Empresa en nivel piloto: prueba en un área |
| **Vendor lock-in** | Dependencia técnica de un solo proveedor | Empresa que no puede migrar de SAP por costos |
| **TCO** | Costo total de propiedad (licencia + soporte + personas) | Un ERP barato puede costar más caro a 5 años |
| **Change management** | Gestión del cambio organizacional | Capacitar, comunicar, involucrar antes de implementar |
| **OMS** | Operating Model Source (modelo operativo de MIT CISR) | Framework para alinear tecnología con estrategia |

---

## Preguntas de Reflexión

1. **Pregunta aplicada** — "¿En qué nivel de madurez tecnológica está tu empresa o la empresa donde quieres trabajar?"

2. **Pregunta comparativa** — "¿Qué modelo operativo observas más frecuentemente en las empresas peruanas: replicación o diversificación?"

3. **Pregunta crítica** — "Si la cultura organizacional bloquea la innovación, ¿la tecnología puede cambiarla o primero hay que cambiar la cultura?"

4. **Pregunta estratégica** — "¿Cuál de los 4 dominios de ventaja tecnológica (mejora, evolución, información, transformación) tiene más potencial en tu industria?"

---

## Fuentes

| # | Fuente | Tipo | URL |
|---|--------|------|-----|
| 1 | MIT CISR. *Operating Model and IT* | Académica | https://cisr.mit.edu/operating_model |
| 2 | Porter, M. *Strategy and the Internet* (HBR, 2001) | Académica | https://hbr.org/2001/03/strategy-and-the-internet |
| 3 | Ross, J., Weill, P., Robertson, D. *Enterprise Architecture as Strategy* (HBR, 2006) | Académica | https://hbr.org/2006/09/enterprise-architecture-as-strategy |
| 4 | McKinsey. *Unlocking success in digital transformations* (2018) | Tercero | https://www.mckinsey.com/business-functions/organization/our-insights/unlocking-success-in-digital-transformations |

---

*Última verificación: 07/07/2026.*
