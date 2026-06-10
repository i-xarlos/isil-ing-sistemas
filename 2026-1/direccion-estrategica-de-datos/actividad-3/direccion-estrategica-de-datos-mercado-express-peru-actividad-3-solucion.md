# ACTIVIDAD 3: Dirección Estratégica de Datos

## Caso: Mercado Express Perú

**Estudiante:** [Apellido y Nombre del Estudiante]
**Curso:** Dirección Estratégica de Datos (ISIL, 2026-1)
**Docente:** Brezli Paola Luna Figueroa
**Fecha:** 2026

---

## 1. DIAGNÓSTICO DE LA SITUACIÓN ACTUAL (4 puntos)

### Problema 1: Fragmentación de Sistemas y Falta de Integración de Datos

**Descripción:** Cada tienda registra ventas en sistemas distintos sin integración centralizada. Además, existen bases de datos duplicadas de clientes.

**Riesgo para el negocio:**

- **Inconsistencia de información:** Una misma compra puede registrarse de forma diferente en tiendas distintas, generando reportes incorrectos.
- **Imposibilidad de toma de decisiones integrada:** La gerencia no puede ver el panorama completo de ventas y comportamiento de clientes a nivel corporativo.
- **Costo operativo:** Mantener múltiples sistemas genera sobrecostos en licencias, almacenamiento y personal IT.
- **Ejemplo concreto:** No es posible saber si un cliente es recurrente en múltiples tiendas porque no existe un registro único de cliente.

### Problema 2: Desalineación Departamental y Datos en Silos

**Descripción:** Marketing, Ventas y Logística manejan información separada sin compartir datos entre áreas.

**Riesgo para el negocio:**

- **Ineficiencia operativa:** Marketing crea campañas sin datos de ventas reales, resultando en mensajes irrelevantes o dirigidos a clientes equivocados.
- **Pérdida de ingresos:** Logística no conoce las tendencias de demanda por zona, generando sobre-stocks en unas tiendas y desabastecimiento en otras.
- **Mala experiencia del cliente:** Un cliente recibe ofertas de productos que ya compró o que nunca ha buscado.
- **Ejemplo concreto:** Mercado Express detectó errores en promociones enviadas a clientes equivocados, lo que genera desconfianza en la marca.

### Problema 3: Baja Calidad de Datos y Falta de Validación

**Descripción:** Los datos no cuentan con validación sistemática ni políticas de calidad establecidas. Se han detectado duplicidades, registros incompletos e inconsistencias.

**Riesgo para el negocio:**

- **Decisiones basadas en información falsa:** Si 20% de registros de clientes tienen datos incompletos, cualquier análisis será sesgado.
- **Pérdida de reputación:** Errores en campanñas (enviar ofertas a clientes incorrectos) generan frustración y pérdida de confianza.
- **Costos de corrección:** Limpiar y deduplicar datos después es más caro que hacerlo desde el origen.
- **Ejemplo concreto:** Un cliente recibe promoción de un producto cuando ya compró todas sus existencias disponibles en su zona.

### Problema 4: Ausencia de Gobierno de Datos y Responsabilidad Difusa

**Descripción:** No existe un responsable formal de los datos, ni políticas claras sobre quién es propietario de cada fuente de información.

**Riesgo para el negocio:**

- **Deterioro continuo:** Sin un "dueño" de los datos, nadie se responsabiliza por mantenerlos actualizados y seguros.
- **Incumplimiento normativo:** Sin trazabilidad ni políticas de protección, la empresa es vulnerable a sanciones por manejo inadecuado de datos de clientes.
- **Tiempo de respuesta lento:** Reportes demoran hasta una semana en elaborarse porque no hay procesos estandarizados ni responsables claros.
- **Ejemplo concreto:** Si ocurre un filtro de datos de clientes, no hay registro de quién accedió, cuándo y por qué.

---

## 2. ROLES Y ORGANIZACIÓN DEL EQUIPO DE DATOS (4 puntos)

### Estructura Propuesta: 4 Roles Clave

#### A. Chief Data Officer (CDO) — Liderazgo Estratégico

**Responsabilidades principales:**

- Alinear la estrategia de datos con objetivos de negocio de Mercado Express.
- Dirigir la gobernanza de datos a nivel corporativo.
- Comunicar el valor de los datos a la gerencia general y demás stakeholders.
- Aprobar inversiones en herramientas, infraestructura y talento.
- Asegurar cumplimiento normativo y seguridad de datos.

**Por qué es crítico:** Actualmente, nadie en Mercado Express tiene esta responsabilidad. El CDO es el "propietario corporativo de los datos" que crea autoridad y dirección clara.

#### B. Data Governance Manager — Políticas y Cumplimiento

**Responsabilidades principales:**

- Diseñar e implementar políticas de gobernanza de datos.
- Definir estándares de calidad y validación.
- Documentar quién es responsable de cada fuente de datos (Data Owner).
- Auditar cumplimiento de políticas.
- Gestionar incidentes de seguridad y acceso no autorizado.

**Por qué es crítico:** Mercado Express tiene problemas de calidad y duplicidad de datos. Este rol implementa reglas claras y trazabilidad.

#### C. Data Analyst — Insights y Toma de Decisiones

**Responsabilidades principales:**

- Explorar datos integrados para identificar patrones y tendencias.
- Crear reportes y dashboards para diferentes áreas (Marketing, Ventas, Logística).
- Proponer mejoras operativas basadas en datos.
- Comunicar insights en lenguaje de negocio (no técnico).

**Por qué es crítico:** Mercado Express toma decisiones "por intuición". El analista proporciona datos que demuestran realidades ocultas.

#### D. Data Engineer — Infraestructura e Integración

**Responsabilidades principales:**

- Diseñar arquitectura para centralizar datos de múltiples tiendas.
- Construir pipelines que integren información de Ventas, Marketing y Logística.
- Asegurar disponibilidad, velocidad y seguridad de datos.
- Mantener la infraestructura (servidores, bases de datos, herramientas).

**Por qué es crítico:** Sin integración técnica, no es posible resolver el problema fundamental: la fragmentación de sistemas.

### Organización Recomendada

```
┌─────────────────────────────────────────┐
│  GERENCIA GENERAL                       │
└────────────┬────────────────────────────┘
             │
┌────────────┴──────────────────┐
│  CHIEF DATA OFFICER (CDO)     │  ← Rol nuevo, reporta a Gerencia
└────────┬───────────┬──────┬───┘
         │           │      │
    ┌────▼────┐  ┌───▼──┐  ┌───▼──────┐
    │ Data    │  │Data  │  │Data      │
    │Governance│  │ Anal │  │Engineer  │
    │Manager   │  │ysts  │  │(s)       │
    └─────────┘  └──────┘  └──────────┘
         │           │          │
    Políticas   Reportes   Integración
    Seguridad   Insights    Herramientas
```

**Nota:** En fase inicial, los roles pueden ser cubiertos por 2-3 personas. A medida que Mercado Express crezca, cada rol se especializará.

---

## 3. GOBERNANZA DE DATOS (4 puntos)

### Tres Acciones Concretas de Gobernanza

#### Acción 1: Implementar un Registro de Datos Maestros (Data Catalogue)

**¿Qué es?**
Un repositorio centralizado que documenta todas las fuentes de datos en Mercado Express: dónde están, quién las administra, qué información contienen, y cuál es su calidad actual.

**¿Cómo implementarla?**

1. **Mapear todas las fuentes:** Inventariar sistemas de cada tienda (ventas, caja, inventario).
2. **Documentar metadatos:** Para cada fuente, registrar:

   - Nombre del dataset
   - Data Owner responsable (ej.: Gerente de Tienda X)
   - Última actualización
   - Calidad: % de registros completos, % de duplicidades
   - Seguridad: qué datos son sensibles (clientes, pagos)
3. **Crear "versión única de la verdad":** Si existen 25 bases de clientes, definir cuál es la oficial y cuándo se actualiza.

**Beneficio para Mercado Express:**

- La gerencia sabrá exactamente dónde buscar información confiable.
- Se reduce el tiempo de reportes (de una semana a horas).
- Se identifica dónde hay datos duplicados o de baja calidad para priorizar limpieza.

**Ejemplo:** Mercado Express descubre que tiene 3 bases de clientes diferentes en el sistema de Marketing, el de Caja y el de Logística. El Data Catalogue permite unificarlas.

#### Acción 2: Establecer Políticas de Calidad de Datos

**¿Qué es?**
Reglas claras sobre qué datos son aceptables, cómo se capturan y cómo se validan antes de entrar en la base de datos centralizada.

**¿Cómo implementarla?**

1. **Definir estándares de calidad:**

   - Todos los clientes DEBEN tener: nombre, DNI, teléfono, dirección
   - No se permite "calle s/n" o "cliente genérico"
   - Teléfonos deben seguir formato peruano: 9 dígitos
2. **Validación en punto de entrada:**

   - Cada tienda, antes de registrar una venta, debe capturar cliente con datos completos
   - Si falta información, el sistema rechaza la transacción hasta completarla
3. **Limpieza retroactiva:**

   - Identificar registros actuales con datos incompletos
   - Crear plan de corrección (ej.: contactar clientes antiguos para obtener datos faltantes)
4. **Auditoría continua:**

   - Monitoreo mensual: % de registros con errores
   - Meta: alcanzar 99% de calidad en 6 meses

**Beneficio para Mercado Express:**

- Elimina el problema de "promociones enviadas a clientes equivocados"
- Mejora la precisión de análisis de demanda y comportamiento

**Ejemplo:** Un cliente en Surco no puede registrar una venta sin capturar al menos nombre y teléfono del cliente. Esto asegura que Marketing tenga contacto válido.

#### Acción 3: Definir Roles de Data Ownership y Responsabilidad

**¿Qué es?**
Asignar explícitamente a una persona o área la responsabilidad de cada fuente de datos crítica.

**¿Cómo implementarla?**

Crear una matriz de responsabilidad clara:

| Datos                       | Data Owner           | Responsabilidad                           | Frecuencia de Revisión |
| --------------------------- | -------------------- | ----------------------------------------- | ----------------------- |
| **Base de Clientes**  | Gerente de Marketing | Mantener actualizada, evitar duplicidades | Semanal                 |
| **Ventas por Tienda** | Gerente Operativo    | Registrar correctamente, completar datos  | Diariamente             |
| **Inventario**        | Gerente Logística   | Actualizar stocks en tiempo real          | Diariamente             |
| **Pagos**             | Contador/Tesorería  | Reconciliar con datos de caja             | Diariamente             |

**Responsabilidades específicas del Data Owner:**

- Asegurar que los datos a su cargo sean correctos y oportunos
- Responder preguntas sobre la confiabilidad de sus datos
- Investigar anomalías o inconsistencias
- Autorizar cambios o correcciones

**Beneficio para Mercado Express:**

- Si hay un error en una campaña de Marketing, se sabe inmediatamente de quién es la responsabilidad.
- Se crea una cultura donde "los datos son responsabilidad de todos, pero alguien es accountable".
- Reduce tiempos de investigación y corrección.

**Ejemplo:** Si Marketing envía promociones a clientes incorrectos, el Gerente de Marketing es responsable de investigar por qué la base de clientes tenía errores y de implementar controles para evitarlo.

---

## 4. INNOVACIÓN BASADA EN DATOS — PROYECTO PILOTO (4 puntos)

### Descripción del Proyecto Piloto

#### Título: "Predicción de Demanda por Tienda para Reducción de Quiebres de Stock"

### A. Descripción del Piloto

#### Fase 1: Recopilación de Datos Históricos (Semana 1-2)

- Integrar datos de ventas de los últimos 12 meses de 3 tiendas piloto (una por zona: Sur, Centro, Norte de Lima).
- Incluir: fecha de venta, producto, cantidad, precio, tienda, zona geográfica.
- Complementar con datos externos (si es posible): clima, eventos cercanos (feriados, campañas públicas).

#### Fase 2: Análisis Exploratorio (Semana 3-4)

- Identificar patrones: ¿Qué productos se venden más en fin de semana? ¿Hay estacionalidad? ¿Hay diferencias por zona?
- Crear reportes de "insights iniciales" para comunicar primeros aprendizajes a Marketing y Logística.

#### Fase 3: Desarrollo del Modelo Predictivo (Semana 5-8)

- Usar técnicas de machine learning (ej.: regresión lineal, series temporales) para predecir demanda futura.
- Modelo simple para v1: Predecir cantidad de unidades a vender por producto, por tienda, en la próxima semana.
- Validar precisión del modelo con datos reales (¿el modelo predijo bien?).

#### Fase 4: Piloto Operativo (Semana 9-12)

- Integrar predicciones en el sistema de Logística.
- Logística usa las predicciones para ajustar inventario y suministro.
- Medir impacto: ¿se reducen quiebres de stock? ¿mejora la rotación de inventario?

#### Fase 5: Evaluación y Expansión (Semana 13-16)

- Evaluar resultados con métricas clave.
- Si piloto es exitoso, expandir a las 25 tiendas.
- Si tiene limitaciones, iterar y mejorar modelo.

### B. Beneficios Esperados

#### Beneficio 1: Reducción de Quiebres de Stock

**Situación actual:** Clientes no encuentran productos que buscaban → se van a competencia → pérdida de venta.

**Con piloto:** Predicción de demanda permite a Logística surtir oportunamente.

**Impacto financiero:**

- **Aumento de ingresos:** Si 10% de quiebres se evitan, se recuperan esas ventas perdidas.
- Estimado: 25 tiendas × 500 transacciones/mes × 10% × $20 promedio = $25,000 adicionales mensuales ($300,000 anuales).

#### Beneficio 2: Mejora de Eficiencia Operativa y Reducción de Costos

**Situación actual:** Logística surte "al ojo" → exceso de stock en productos de lenta rotación → desperdicio, costo de almacenamiento.

**Con piloto:** Inventario optimizado según predicción de demanda real.

**Impacto financiero:**

- **Reducción de inventario innecesario:** 15-20% menos stock de seguridad → liberación de capital de trabajo.
- Estimado: Si inventario actual es $500,000, reducción del 15% = $75,000 liberados.
- **Reducción de pérdidas por expiración:** Productos con corta vida útil (lácteos, pan) no se pierden por sobre-stock.

#### Beneficio Estratégico (Tercero Implícito)

**Ventaja competitiva:** Mercado Express demuestra capacidad de innovación data-driven frente a competidores que aún usan intuición. Esto puede traducirse en mejor posicionamiento de marca: "Somos la tienda que siempre tiene lo que buscas".

---

## 5. CULTURA DE DATOS Y TOMA DE DECISIONES (4 puntos)

### Tres Acciones para Desarrollar Cultura Data-Driven

#### Acción 1: Comunicación Transparente y Educación Continua

**¿Qué es?**
Explicar a todos los niveles de la organización POR QUÉ cambiar a decisiones basadas en datos y CÓMO beneficia a cada uno.

**¿Cómo implementarla?**

**1. Lanzamiento de Iniciativa (Comunicación Inicial):**

Realizar una sesión con todos los gerentes de tienda, jefes de área y staff:

*Mensaje principal:*
"Mercado Express será la cadena de minimarkets liderada por datos. Esto significa que nuestras decisiones de qué productos surtir, a qué clientes promocionar y dónde expandir, se basarán en hechos, no en intuición. Esto nos hará más competitivos, más rentables y más seguros."

**2. Educación por Rol:**

- **Para Gerentes de Tienda:** "Los datos permiten saber qué productos falta en su zona, para que puedan aumentar ventas sin esperar reportes de corporativo".
- **Para Marketing:** "En lugar de enviar promociones genéricas, pueden dirigirse a clientes específicos que compraron productos similares, aumentando conversión 30%".
- **Para Logística:** "Las predicciones de demanda les permiten optimizar rutas y reducir costos de transporte".

**3. Micro-capacitaciones Mensuales:**

- Sesiones de 30 minutos sobre cómo leer dashboards.
- Ejemplos prácticos: "¿Cómo interpretamos una gráfica de tendencia de ventas?"
- Preguntas abiertas: "¿Qué decisión tomarían ustedes basándose en estos datos?"

**Beneficio para Mercado Express:**

- Reduce resistencia al cambio porque todos entienden el "por qué".
- Empodera a equipos de base para proponer mejoras.

**Ejemplo:** Un gerente de tienda en San Juan de Lurigancho, al ver datos de que productos de higiene se venden 50% más en su zona que en Surco, propone traer mayor inventario de esos productos, aumentando rentabilidad de su tienda.

#### Acción 2: Establecer "Quick Wins" Tempranos

**¿Qué es?**
Identificar 2-3 problemas rápidos que la empresa ya sabe que existen y resolverlos con datos en las primeras 2-3 semanas. Esto demuestra valor real y genera confianza.

**¿Cómo implementarla?**

**Quick Win 1: Eliminar "Promociones a Clientes Equivocados"**

- Problema conocido: Marketing envía ofertas de productos a clientes que no los compraron.
- Solución rápida: Integrar base de clientes deduplicada con histórico de compras.
- Tiempo: 2 semanas
- Resultado visible: Marketing reporta "campañas al público correcto" → mejora de engagement

**Quick Win 2: Reducir Tiempo de Reportes de Venta**

- Problema conocido: Reportes demoran 1 semana.
- Solución rápida: Crear un dashboard simple que consolide ventas de todas las tiendas en tiempo real.
- Tiempo: 1 semana
- Resultado visible: Gerencia tiene reporte en 30 minutos, no en 1 semana

**Quick Win 3: Identificar Producto Estrella por Tienda**

- Problema latente: Logística no sabe qué producto tiene mayor potencial en cada zona.
- Solución rápida: Análisis simple de ventas por producto y tienda.
- Tiempo: 1 semana
- Resultado visible: Logística aumenta inventario del producto ganador; Marketing crea campañas focalizadas

**Beneficio para Mercado Express:**

- Las personas ven resultados tangibles en semanas, no en meses.
- Se gana confianza para proyectos más complejos (como el piloto de predicción).

**Implementación práctica del cambio:**
Comunicar estos resultados en una sesión de "Celebración de Avances":

- "Hace 3 semanas no sabíamos si nuestras campañas llegaban al cliente correcto. Hoy, con datos, podemos dirigirnos a quien realmente compra nuestros productos."
- "Los reportes que antes tomaban una semana, ahora llegan en 30 minutos a la gerencia."

#### Acción 3: Crear Espacios de Participación y Empoderamiento

**¿Qué es?**
Hacer que todos en la organización sientan que pueden aportar ideas basadas en datos, no solo los líderes.

**¿Cómo implementarla?**

**1. Comités de Datos por Área:**

Formar pequeños grupos (4-5 personas) en Marketing, Ventas, Logística y Operaciones que se reúnen quincenalmente para:

- Revisar datos de su área
- Identificar problemas e insights
- Proponer mejoras basadas en datos
- Reportar avances a gerencia

**Participantes:** Mezcla de líderes y staff operativo (para que todas las voces se escuchen).

**Ejemplo de sesión:**

- Logística nota que inventario de productos en tienda San Miguel tarda 4 días en venderse, mientras en Surco se vende en 1 día.
- Propuesta: "¿Por qué no llevamos menos cantidad a San Miguel y más a Surco?"
- Validación con datos: Análisis de demanda por zona
- Acción: Ajuste de suministro → mejora de rotación

**2. "Data Storytelling" — Comunicar Hallazgos de Forma Inspiradora:**

En lugar de reportes con números puros, contar historias con datos:

*Ejemplo de mala comunicación:*
"Las ventas de categoría X aumentaron 15% respecto al trimestre anterior."

*Ejemplo de buena comunicación (storytelling):*
"Hace 3 meses ajustamos el lugar de exposición de productos de higiene en las tiendas de zonas norte (Comas, Los Olivos). Resultado: clientes que antes no veían estos productos ahora los compran. En 3 meses hemos vendido 1,200 unidades más = $8,000 adicionales. Esto demuestra que el 'dónde' importa tanto como el 'qué'."

**3. Reconocimiento de Aportes:**

- Cuando un empleado (del área que sea) propone una mejora basada en datos que se implementa y genera impacto, reconocerlo públicamente.
- Ejemplo: "El gerente de tienda X identificó que promocionar 'kit de limpieza' (3 productos juntos) aumenta el ticket promedio en 20%. Ahora lo replicamos en todas las tiendas."

**Beneficio para Mercado Express:**

- Crea una mentalidad "todos observan, todos aportan".
- Las mejores ideas muchas veces vienen de quienes están en operación, no solo de corporativo.
- Aumenta retención de talento porque empleados sienten que contribuyen y se les valora.

---

## CONCLUSIONES

Mercado Express enfrenta un **reto estructural: pasar de una empresa operada por intuición a una empresa data-driven**. Este cambio no es solo tecnológico; es organizacional y cultural.

### Síntesis de Solución:

1. **Diagnóstico:** Fragmentación, falta de gobierno y baja calidad de datos.
2. **Roles:** Crear equipo con CDO, Governance Manager, Analysts y Engineers.
3. **Gobernanza:** Implementar Data Catalogue, políticas de calidad y asignación clara de responsabilidades.
4. **Innovación:** Piloto de predicción de demanda para validar capacidad analítica y generar ROI.
5. **Cultura:** Comunicación transparente, quick wins tempranos y empoderamiento de equipos.

### Timeline Recomendado:

| Fase                                    | Duración   | Acciones                                                   |
| --------------------------------------- | ----------- | ---------------------------------------------------------- |
| **Fase 0: Preparación**          | 1-2 semanas | Contratar CDO, comunicar visión, asignar presupuesto      |
| **Fase 1: Gobierno**              | 4-6 semanas | Data Catalogue, políticas de calidad, definir Data Owners |
| **Fase 2: Quick Wins**            | 4 semanas   | Resolver 3 problemas iniciales, celebrar avances           |
| **Fase 3: Piloto de Innovación** | 16 semanas  | Proyecto de predicción de demanda                         |
| **Fase 4: Expansión**            | Continua    | Expandir a todas las tiendas, institucionalizar cultura    |

### Impacto Esperado (6-12 meses):

- **Reducción de quiebres de stock:** 20%
- **Aumento de ingresos:** $300,000 anuales (por mejora de disponibilidad)
- **Reducción de costos operativos:** $75,000+ (por optimización de inventario)
- **Mejora en precisión de campañas:** 60% (clientes correctos reciben ofertas relevantes)
- **Tiempo de reportes:** De 1 semana a horas

---

**Referencias norma APA:**

Luna Figueroa, B. P. (2026). Dirección Estratégica de Datos: Sesiones de clase 1-6. Instituto de Ingeniería de Sistemas de Lima (ISIL), cohorte 2026-1.
