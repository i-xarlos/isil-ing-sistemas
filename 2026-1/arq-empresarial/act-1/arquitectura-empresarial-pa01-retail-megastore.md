# Solución: Actividad 1 — PA01 Arquitectura Empresarial

**Curso:** Arquitectura Empresarial (ISIL, 2026-1)
**Actividad:** PA01
**Empresa Propuesta:** Cadena de Tiendas Departamentales "Metro"
**Sector:** Retail
**Fecha:** Abril 2026

---

## Contexto de la Empresa

**Metro** es una cadena de tiendas departamentales con presencia en 15 ciudades del país, 120 puntos de venta, 3,500 empleados y 2 millones de clientes activos. Opera hace 18 años en retail tradicional pero enfrenta competencia agresiva del e-commerce y necesita transformarse en una empresa omnicanal.

---

## Tabla de Principios de Arquitectura Empresarial

| N° | TIPO                   | NOMBRE                            | DEFINICIÓN                                                                                                                                                                                                              | RAZÓN FUNDAMENTAL                                                                                                                                                                                                                                   | IMPLICACIONES (DE NO TOMAR ACCIÓN)                                                                                                                                                                                                                                                                              |
| :-: | ---------------------- | --------------------------------- | ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------ | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
|  1  | **NEGOCIOS**     | EXPERIENCIA OMNICANAL             | Integrar tiendas físicas con canales digitales (web, app móvil, redes sociales) para que el cliente pueda comprar desde cualquier lugar y recoger donde prefiera.                                                      | Metro pierde clientes jóvenes a e-commerce puro. La omnicanalidad es estándar en retail moderno, no diferenciador. Mantener dos canales desconectados genera fricción y abandono de carritos.                                                 | Pérdida progresiva de cuota de mercado ante Amazon, Falabella Online, Ripley Digital. Los clientes migran a competidores con mejor experiencia digital. Tiendas físicas se vacían de tráfico.                                                                                                                |
|  2  | **DATOS**        | DATOS DE CLIENTE UNIFICADOS       | Consolidar perfil único del cliente integrado desde todas las fuentes: tiendas, web, app, redes sociales. Un cliente es "uno" independientemente de dónde interactúe.                                                 | Decisiones de marketing, inventario y promociones se basan en datos incompletos si cada canal tiene su propia base. Sin visión integrada, se pierden oportunidades de cross-sell, upsell y retención. La recomendación personalizada no funciona. | Marketing no sabe quién es el cliente real. Envía promociones genéricas a públicos equivocados. Inventario desbalanceado entre canales. Stock bloqueado en tiendas que no venden mientras otros canales generan demanda insatisfecha. Margen comprometido.                                                   |
|  3  | **APLICACIONES** | PLATAFORMA ÚNICA DE COMMERCE     | Reemplazar sistemas legacy desconectados (POS en tiendas, e-commerce separado, apps viejas) por una plataforma moderna de commerce que integre: carrito compartido, catálogo único, pedidos, logística, devoluciones. | Las aplicaciones actuales requieren mantenimiento de múltiples proveedores, sincronización manual y generan inconsistencias (precios distintos, disponibilidad incorrecta). Esto es costo y riesgo operativo continuo.                             | Experiencia inconsistente entre canales. Cliente ve un precio en la tienda, otro en la app. Producto aparece disponible en web pero no hay stock. Devoluciones complicadas si compró en un canal pero quiere devolver en otro. Incremento de quejas, costos de servicio al cliente, devoluciones no procesadas. |
|  4  | **TECNOLOGÍA**  | INFRAESTRUCTURA ESCALABLE EN NUBE | Migrar de servidores on-premise a cloud (AWS/Azure) con capacidad de escalar automáticamente en picos de demanda (Black Friday, Cyber Monday, temporadas). Redundancia geográfica para continuidad.                    | Metro corre en servidores locales con capacidad fija. Los picos de tráfico colapsan el sistema o requieren inversión permanente en hardware ocioso. Cada campaña es riesgo de caída. Recuperación ante desastres es manual y lenta.         | Caída de servicios en picos de venta (Black Friday, Navidad). Pérdida de ventas por "servidor no disponible". Publicidad pagada lleva tráfico pero página no carga. Reputación dañada. En caso de incendio/desastre en data center, la empresa pierde operación.                                          |

---

## Análisis Detallado por Dominio

### 1. NEGOCIOS — Experiencia Omnicanal

**¿Qué significa?**

Metro hoy opera en dos mundos separados:

- **Tiendas físicas:** Vendedores, facturación en punto de venta, disponibilidad de stock local.
- **E-commerce:** Sitio web básico, sin integración con tiendas, inventario separado.

La experiencia omnicanal significa que el cliente pueda:

- Buscar producto en app y saber si está disponible en la tienda más cercana.
- Comprar en web y recoger en tienda (Click & Collect).
- Cambiar compras entre canales sin fricción.

**Razón fundamental:**

La competencia lo hace. Amazon, Falabella, Ripley tienen omnicanalidad implementada. Metro que mantiene canales separados pierde generaciones de clientes que esperan fluidez.

**Implicaciones si no se hace:**

- Clientes jóvenes (18-35) prefieren competencia.
- Tiendas se vacían porque tráfico migra a web.
- Posicionamiento como "anticuado" en mercado.

---

### 2. DATOS — Datos de Cliente Unificados

**¿Qué significa?**

Hoy Metro tiene múltiples bases de datos:

- BD de clientes en tiendas (sistema POS).
- BD de clientes en web (plataforma e-commerce).
- Datos de redes sociales sueltos.

Un cliente que compra en tienda y luego en web es DOS perfiles distintos para la empresa. No se suma su historial de compra.

Un cliente unificado significa:

- Un perfil único aunque compre en tienda y web.
- Historial de compra completo.
- Preferencias, tallas, marcas favoritas consolidadas.

**Razón fundamental:**

La recomendación y personalización dependen de datos. Si datos están fragmentados, la empresa no entiende al cliente. Pierde oportunidades de cross-sell (vender zapatos a quien compra ropa) y upsell (mejorar a cliente a línea premium).

**Implicaciones si no se hace:**

- Marketing ciega. Promos genéricas sin segmentación.
- Catálogo de recomendaciones vacío.
- Inventario desbalanceado (sobrestock en tiendas, desabasto en web o viceversa).
- Pérdida de margen operativo.

---

### 3. APLICACIONES — Plataforma Única de Commerce

**¿Qué significa?**

Hoy Metro mantiene:

- Sistema POS en 120 tiendas (diferentes versiones, proveedores).
- E-commerce en servidor externo.
- App móvil antigua (sin sincronización real).

Esto genera:

- Precios distintos entre canales.
- Disponibilidad incorrecta.
- Devoluciones complicadas si compró en un canal y quiere devolver en otro.

Una plataforma única de commerce significa:

- **Un** catálogo, visible en todos los canales en tiempo real.
- **Un** carrito que se sincroniza entre web y tienda.
- **Una** API que todos los sistemas usan (tiendas, web, app, redes sociales).

**Razón fundamental:**

Integración = velocidad = ventaja competitiva. Falabella hace cambios en minutos. Metro tarda semanas porque debe sincronizar múltiples sistemas.

**Implicaciones si no se hace:**

- Experiencia inconsistente genera quejas.
- Costo de soporte al cliente por errores.
- Devoluciones complicadas = clientes enfadados.
- Reputación de "caótico" en redes sociales.

---

### 4. TECNOLOGÍA — Infraestructura Escalable en Nube

**¿Qué significa?**

Hoy Metro corre en:

- 3-4 servidores en un data center local (Lima).
- Capacidad fija. En picos (Black Friday), se satura.
- Si hay terremoto/incendio, se pierde el data center.

Infraestructura en nube significa:

- Servidores distribuidos en AWS o Azure.
- Capacidad que crece automáticamente con demanda.
- Backups automáticos en múltiples regiones.
- Recuperación ante desastres en minutos, no horas.

**Razón fundamental:**

Metro vende mucho en picos (Black Friday, Navidad, Back to School). Si la web cae en esos momentos, la empresa pierde millones. Además, el riesgo de desastre natural es real en Perú.

**Implicaciones si no se hace:**

- Caída en Black Friday = pérdida de ingresos anuales.
- Publicidad pagada lleva clientes pero servidor no carga.
- Reputación dañada ("Metro siempre cae").
- Riesgo operativo: un evento natural cierra la empresa.

---

## Conexión entre Dominios

```
NEGOCIOS (Experiencia Omnicanal)
    ↓ requiere
DATOS (Cliente Unificado)
    ↓ requiere
APLICACIONES (Plataforma única de commerce)
    ↓ requiere
TECNOLOGÍA (Infraestructura escalable)
```

**Ejemplo de flujo:**

1. Cliente entra a app desde su casa (tienda virtual).
2. Sistema trae su perfil UNIFICADO de DATOS (últimas compras, preferencias).
3. App RECOMIENDA productos personalizados (basados en datos).
4. Cliente compra. Sistema sincroniza APLICACIONES (web + tienda).
5. Cliente decide recoger en tienda. TECNOLOGÍA procesa el pico de pedidos sin caer.

Si falla cualquier nivel, se rompe la experiencia.

---

## Roadmap de Implementación

| Fase        | Trimestre  | Foco                                                             | Resultado                          |
| ----------- | ---------- | ---------------------------------------------------------------- | ---------------------------------- |
| **1** | Q2-Q3 2026 | Consolidar datos de cliente en data lake centralizado            | Visión unificada del cliente      |
| **2** | Q3-Q4 2026 | Migrar POS de tiendas a plataforma moderna (SaaS)                | Tiendas sin legacy, con APIs       |
| **3** | Q1 2027    | Reemplazo e-commerce: plataforma moderna + mobile app            | Omnicanalidad en canales digitales |
| **4** | Q2-Q3 2027 | Integración final: tienda física + web + app (Click & Collect) | Experiencia omnicanal completa     |

---

## Conclusión

La Actividad 1 demostró que los 4 dominios de la Arquitectura Empresarial están **conectados**. Para Metro:

- Sin **NEGOCIO** claro (omnicanalidad), no hay justificación para cambiar.
- Sin **DATOS** integrados, no hay segmentación ni personalización.
- Sin **APLICACIONES** modernas, la integración es parche manual.
- Sin **TECNOLOGÍA** escalable, los picos de demanda se pierden.

La solución no es atacar un dominio. Es cambiar los 4 juntos, de forma ordenada y gobernada.

---

**Fin de la Solución PA01**
