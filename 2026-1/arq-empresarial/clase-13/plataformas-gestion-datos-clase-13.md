# Plataformas de Gestión de Datos (Clase 13)

**Curso:** Arquitectura Empresarial (ISIL, 2026-1)  
**Docente:** [pendiente]  
**Fecha:** [pendiente]

---

## Introducción

**Gancho humano:** Cuando abres tu app bancaria y haces una transferencia, ¿alguna vez te preguntaste qué pasa con tus datos mientras viajan del punto A al punto B? Detrás de cada transacción hay una plataforma de datos que decide si esa operación se confirma o se rechaza en milisegundos.

**Pregunta guía:** ¿Qué plataforma de datos elegir cuando la empresa crece y los datos dejan de caber en una sola tabla?

**Objetivos de aprendizaje:**
- Diferenciar bases de datos relacionales, NoSQL y sus variantes
- Comprender el rol de Data Warehouses, Lakes y Lakehouses en la estrategia empresarial
- Elegir la plataforma cloud adecuada según el caso de negocio

---

## 1. Bases de Datos Relacionales

### ¿Qué es?
Es una base de datos que organiza la información en **tablas** con filas y columnas, como una hoja de cálculo gigante. Cada fila es un registro y cada columna es un atributo.

**Analogía simple:** Imagina un Excel donde cada pestaña es una tabla, cada fila es un cliente y cada columna es su nombre, email o saldo. Las tablas se relacionan con claves, como cuando cruzas datos de dos hojas.

### Modelo relacional y propiedades ACID

Las bases relacionales garantizan **ACID**:

| Propiedad | Significado | Ejemplo Real |
|-----------|-------------|--------------|
| **Atomicidad** | Todo o nada | Si la transferencia falla, no se debita ni se acredita |
| **Consistencia** | Reglas siempre válidas | El saldo nunca puede ser negativo (si hay restricción) |
| **Aislamiento** | Transacciones paralelas no se mezclan | Dos transfers al mismo tiempo no generan saldo incorrecto |
| **Durabilidad** | Si se confirmó, sobrevive | Apagón eléctrico: la transacción persiste en disco |

### Ejemplo detallado: Banco Nacional

```
┌─────────────────────────────────────────────────┐
│   FLUJO: TRANSFERENCIA ENTRE CUENTAS            │
├─────────────────────────────────────────────────┤
│  1. Cliente inicia transferencia de $500        │
│     ↓                                           │
│  2. BD verifica saldo suficiente (ACID: A+C)   │
│     ↓                                           │
│  3. Debita cuenta origen y acredita destino    │
│     (ACID: Atomicidad — todo o nada)           │
│     ↓                                           │
│  4. Confirma y registra en log persistente     │
│     (ACID: Durabilidad)                        │
└─────────────────────────────────────────────────┘
```

**Tecnologías comunes:** PostgreSQL, MySQL, Oracle, SQL Server

**Cuándo usarla:**
- Transacciones financieras que exigen consistencia estricta
- Sistemas ERP y CRM con datos estructurados
- Reportes con joins complejos entre múltiples tablas

---

## 2. Evolución de Modelos de Datos

Los modelos de datos no surgieron de la noche a la mañana. Evolucionaron para resolver problemas reales:

```
┌──────────────────────────────────────────────────────────────────┐
│                EVOLUCIÓN DE MODELOS DE DATOS                    │
├──────────────────────────────────────────────────────────────────┤
│                                                                  │
│  1970s          1990s           2000s          2010s+            │
│    │              │               │               │              │
│    ▼              ▼               ▼               ▼              │
│  Jerárquico → Relacional → NoSQL distribuido → Polimórfico     │
│                                                                  │
│  Un hijo     Múltiples      Escala masiva    Múltiples         │
│  un padre    tablas con     en nodos         modelos            │
│              claves                          coexistiendo       │
│                                                                  │
└──────────────────────────────────────────────────────────────────┘
```

**Dato clave:** El modelo relacional dominó 30 años. Pero cuando Facebook maneja 3 mil millones de usuarios, una sola tabla relacional deja de ser viable.

---

## 3. Modelos NoSQL

### ¿Qué son?
Bases de datos **no relacionales** diseñadas para datos masivos, flexibles o distribuidos. No usan tablas rígidas.

**Analogía simple:** Si la BD relacional es un Excel con reglas estrictas, NoSQL es como un archivador donde cada cajón puede tener formatos distintos.

### Tipos de Bases de Datos NoSQL

| Tipo | Modelo | Caso de uso | Ejemplo real |
|------|--------|-------------|--------------|
| **Documentos** | JSON/BSON flexible | Catálogos de productos, perfiles de usuario | MongoDB (Netflix guarda perfiles) |
| **Clave-Valor** | Par key→value | Caché, sesiones, contadores | Redis (Twitter usa caché de timelines) |
| **Columnas** | Familias de columnas | Analytics masivo, time-series | Cassandra (Instagram almacena eventos) |
| **Grafos** | Nodos y relaciones | Redes sociales, recomendaciones | Neo4j (LinkedIn recomienda contactos) |

### Casos por industria

| Industria | Tipo de BD | Uso | Beneficio |
|-----------|-----------|-----|-----------|
| Banca | Relacional | Transacciones | Consistencia ACID |
| Retail | Documentos | Catálogos multi-atributo | Flexibilidad de esquema |
| Telecomunicaciones | Columnas | Registros de llamadas | Escalabilidad masiva |
| Redes sociales | Grafos | Relaciones entre usuarios | Consultas de traversía |
| Gaming | Clave-Valor | Rankings y sesiones | Velocidad extrema |
| Salud | Relacional + Documentos | Historial clínico + imágenes | Cumplimiento + flexibilidad |

---

## 4. Data Warehouses, Data Lakes y Data Lakehouses

### Data Warehouse (DW)

**¿Qué es?** Repositorio central de datos **limpios y estructurados** para reportes y análisis.

**Analogía:** Es como una biblioteca perfectamente organizada: cada libro tiene su estante, categoría y ficha. No puedes sacar uno sin seguir el sistema.

| Característica | Detalle |
|----------------|---------|
| Datos | Estructurados, transformados (ETL) |
| Uso | Reportes ejecutivos, BI, dashboards |
| Esquema | Fijo (schema-on-write) |
| Ejemplo | Banco genera reporte mensual de clientes activos |

### Data Lake

**¿Qué es?** Almacén masivo de datos **en bruto**, sin transformar, en cualquier formato.

**Analogía:** Es como un lago gigante donde entran ríos de todos colores (texto, imágenes, logs, videos). No tiene estructura hasta que alguien lo procesa.

| Característica | Detalle |
|----------------|---------|
| Datos | Cualquier formato (texto, JSON, imágenes, video) |
| Uso | Machine Learning, análisis exploratorio |
| Esquema | Sin esquema (schema-on-read) |
| Ejemplo | Amazon guarda logs de clicks + imágenes de productos + reseñas |

### Data Lakehouse

**¿Qué es?** La evolución que **combina lo mejor de ambos**: la flexibilidad del Lake con la estructura del Warehouse.

**Analogía:** Es como el lago pero con estanterías flotantes: los datos siguen fluyendo libremente, pero puedes organizarlos bajo demanda.

| Característica | Detalle |
|----------------|---------|
| Datos | Bruto + estructurados |
| Uso | ML + reportes + análisis en tiempo real |
| Esquema | Flexible con gobernanza |
| Ejemplo | Spotify analiza patrones de escucha (Lake) y genera reportes de royalties (Warehouse) |

### Comparativa rápida

```
┌─────────────────────────────────────────────────────────────┐
│              ¿CUÁNDO USAR CADA UNO?                        │
├─────────────────────────────────────────────────────────────┤
│                                                             │
│  Data Warehouse  →  Necesitas reportes limpios y rápidos   │
│  Data Lake       →  Tienes datos crudos y quieres ML      │
│  Data Lakehouse  →  Quieres ambos mundos (modern stack)   │
│                                                             │
└─────────────────────────────────────────────────────────────┘
```

---

## 5. Comparativa de Plataformas Cloud

Las tres grandes nubes ofrecen servicios de datos diferenciados:

| Plataforma | Servicios clave | Fortalezas | Caso de uso ideal |
|------------|-----------------|------------|-------------------|
| **AWS** | Redshift, S3, DynamoDB, Aurora | Amplio ecosistema, madurez, global | Empresas grandes con múltiples servicios |
| **Azure** | Synapse, Cosmos DB, SQL Database | Integración Microsoft (Office, Power BI) | Corporativos con stack Microsoft |
| **GCP** | BigQuery, Firestore, Spanner | Analytics, ML, precio competitivo | Startups tech y empresas data-driven |

### Detalle por servicio

| Necesidad | AWS | Azure | GCP |
|-----------|-----|-------|-----|
| Data Warehouse | Redshift | Synapse Analytics | BigQuery |
| Base NoSQL | DynamoDB | Cosmos DB | Firestore |
| Almacenamiento objectos | S3 | Blob Storage | Cloud Storage |
| Base relacional managed | Aurora | SQL Database | Cloud SQL |
| Data Lake | S3 + Lake Formation | ADLS + Lakehouse | GCS + Dataproc |

**Caso real:** Netflix usa AWS (su infraestructura completa). Spotify migró a GCP para optimizar costos en analytics. Banorte (México) usa Azure por integración con Microsoft.

---

## 6. Errores Comunes a Evitar

| Error | Ejemplo real | Consecuencia |
|-------|--------------|--------------|
| Elegir BD NoSQL para todo | Proyecto bancario con MongoDB sin ACID | Inconsistencia de datos, pérdida de dinero |
| Confundir Data Lake con basurero | Guardar datos sucios sin catalogar | "Lago de datos" se vuelve "pantano" |
| No dimensionar el Data Warehouse | DW con 10TB y consultas lentísimas | Reportes que tardan horas |
| Ignorar costos cloud | Usar BigQuery sin límites de query | Factura mensual de $50,000 USD |
| No definir estrategia de datos | Comprar herramientas sin arquitectura | Silos de datos, duplicación |
| Elegir plataforma por moda | Usar GCP solo porque es "cool" | Migración costosa después |

---

## 7. Framework de Decisión: ¿Qué plataforma elijo?

```
┌──────────────────────────────────────────────────────────────┐
│           FLUJO DE DECISIÓN DE PLATAFORMA                   │
├──────────────────────────────────────────────────────────────┤
│                                                              │
│  ¿Los datos son estructurados y transaccionales?            │
│     SÍ  →  Base de datos relacional (ACID)                 │
│     NO  →  ¿Son masivos y en bruto?                        │
│              SÍ  →  Data Lake                               │
│              NO  →  ¿Necesitas ML + reportes?              │
│                       SÍ  →  Data Lakehouse                │
│                       NO  →  ¿Son documentos JSON?         │
│                                SÍ  →  NoSQL (MongoDB)      │
│                                NO  →  Clave-valor (Redis)   │
│                                                              │
└──────────────────────────────────────────────────────────────┘
```

---

## Conclusiones

1. **No hay una sola BD para todo:** Cada tipo resuelve un problema distinto; elegir mal genera costos y errores
2. **Los Lakehouses son el futuro:** Combinan la estructura del Warehouse con la flexibilidad del Lake
3. **La nube no es gratis:** Sin gobernanza, los costos se disparan rápido

**Frase clave:**
> "El mejor arquitecto de datos no es el que conoce más herramientas, sino el que sabe cuándo usar cada una."

---

## Glosario

| Término | Definición | Ejemplo |
|---------|------------|---------|
| **ACID** | Propiedades que garantizan transacciones seguras | Banco procesa transferencia sin errores |
| **NoSQL** | Bases de datos no relacionales | Redis guarda sesiones de usuario |
| **ETL** | Extract, Transform, Load — proceso de limpiar datos | Datos sucios → Dashboard limpio |
| **Data Warehouse** | Repositorio de datos estructurados para reportes | Ventas mensuales por región |
| **Data Lake** | Almacén de datos crudos en cualquier formato | Logs + imágenes + reseñas |
| **Data Lakehouse** | Combina Warehouse + Lake | Spotify: ML + reportes de royalties |
| **Schema-on-write** | Definir estructura antes de guardar | Tabla relacional con columnas fijas |
| **Schema-on-read** | Definir estructura al consultar | JSON flexible que se parsea después |
| **BigQuery** | Servicio serverless de analytics de Google | Consultas SQL sobre petabytes |
| **DynamoDB** | BD NoSQL de Amazon | Carrito de compras de Prime |

---

## Preguntas de Reflexión

1. **Pregunta aplicada** — "Si tuvieras una tienda online con 100,000 productos y 1 millón de usuarios, ¿qué tipo de base de datos usarías para el catálogo y por qué?"

2. **Pregunta comparativa** — "¿Cuándo elegirías un Data Lake sobre un Data Warehouse? Dame un caso concreto."

3. **Pregunta crítica** — "¿Qué pasaría si un banco migrara sus transacciones de una BD relacional a MongoDB sin considerar ACID?"

4. **Pregunta estratégica** — "Una empresa que ya usa AWS Redshift, ¿debería migrar a GCP BigQuery? ¿Qué factores considerarías?"

---

## Fuentes

| # | Fuente | Tipo | URL |
|---|--------|------|-----|
| 1 | Amazon Web Services. *What is a Data Lake?* | Oficial | https://aws.amazon.com/big-data-what-is-a-data-lake/ |
| 2 | Microsoft Azure. *What is a Data Warehouse?* | Oficial | https://learn.microsoft.com/en-us/azure/synapse-analytics/overview-what-is |
| 3 | Google Cloud. *What is a Data Lakehouse?* | Oficial | https://cloud.google.com/learn/what-is-a-data-lakehouse |
| 4 | MongoDB. *NoSQL Explained* | Oficial | https://www.mongodb.com/nosql-explained |
| 5 | The Open Group. *TOGAF Standard — Data Architecture* | Académica | https://www.opengroup.org/togaf |

---

*Última verificación: 07/07/2026.*
