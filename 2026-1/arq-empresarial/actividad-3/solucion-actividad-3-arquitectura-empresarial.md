# Solución — Actividad 3: Arquitectura del Negocio (PA03)

**Alumno:** [NRC] Apellido, Nombre
**Curso:** Arquitectura Empresarial (ISIL 2026-1)
**Fecha:** 2026-06-02

---

## Resumen rápido

Este documento presenta dos casos reales de bancos peruanos que usaron la arquitectura empresarial para transformar sus servicios digitales. Cada caso incluye: qué buscaban, qué hicieron, qué tecnologías usaron y qué resultados obtuvieron. También propongo indicadores, iniciativas y una hoja de ruta simple.

## Enunciado (resumen)

Investigar 2 empresas peruanas que han aplicado con éxito la arquitectura empresarial e indicar por cada una:

- a) Estrategia utilizada
- b) Tecnología aplicada
- c) Logros / rentabilidad u otros resultados obtenidos

---

## Metodología (qué hice)

- Revisé el enunciado y el material de la clase 9 (mapa de capacidades y AS-IS/TO-BE).
- Elegí dos casos representativos del sector financiero por su documentación pública y relevancia local.
- Simplifiqué y agrupé la información en secciones fáciles de leer: objetivo, acciones, tecnología, resultados y recomendaciones.

---

## Empresa 1 — Banco de Crédito del Perú (BCP)

Resumen breve: BCP buscó acelerar su transformación digital para ofrecer servicios consistentes en todos sus canales y mejorar la eficiencia.

Qué querían lograr

- Mejor experiencia para el cliente (móvil, web y sucursal).
- Lanzar productos más rápido y reducir costos operativos.

Qué hicieron (en pocas palabras)

- Separaron funcionalidades en servicios (APIs) para que distintas apps usen la misma lógica.
- Pusieron orden en los datos y crearon un catálogo de datos.
- Automatizaron procesos repetitivos y optimizaron el core bancario por fases.

Tecnologías clave (palabras sencillas)

- APIs y microservicios (para que las distintas apps hablen entre sí).
- Plataformas de datos (data lake / datawarehouse) para análisis.
- Contenedores y CI/CD para desplegar versiones con menos riesgo.

Resultados (qué lograron, explicado fácil)

- Más clientes usando la app y el canal online.
- Lanzamientos de producto más rápidos (menos pasos manuales).
- Menos errores por datos inconsistentes.

Por qué importa esto

- Cuando los datos y los servicios están organizados, la empresa puede innovar sin romper lo que ya funciona.

Mapa de capacidades (versión simple)

- Experiencia cliente: cómo compran y reciben servicio.
- Productos y precios: cómo se crean y ajustan los servicios.
- Riesgos y cumplimiento: cómo se controla el riesgo.
- Pagos y operaciones: cómo se procesan las transacciones.
- Datos y analítica: de dónde vienen las decisiones.

Iniciativas prioritarias (3, en lenguaje directo)

1. Publicar un catálogo de APIs — responsable: Arquitecto de Plataforma — 3–6 meses.
2. Lanzar el programa de gobierno de datos (MDM) — responsable: CDO — 6–12 meses.
3. Modernizar el core por fases (empezar por capas no disruptivas) — responsable: VP Tecnología — 12–18 meses.

Hoja de ruta (resumen en pasos)

- 0–3 meses: definir catálogo de APIs y quick wins.
- 4–9 meses: gobernanza de datos y pilotos de integración.
- 10–18 meses: fases de modernización del core y escalado.

Riesgos y cómo mitigarlos (en una línea cada uno)

- Legacy: hacer integraciones por capas, no todo a la vez.
- Cultura: asegurar patrocinio ejecutivo y mostrar resultados rápidos.

---

## Empresa 2 — Interbank (Grupo Intercorp)

Resumen breve: Interbank combinó una fuerte orientación al cliente con plataformas abiertas para partners, buscando rapidez e innovación.

Qué querían lograr

- Personalizar ofertas y aumentar el uso de la app.
- Permitir que socios integren servicios (open banking).

Qué hicieron (en pocas palabras)

- Construyeron APIs y un entorno de pruebas (sandbox) para partners.
- Migraron muchos servicios a la nube para escalar más fácil.
- Usaron modelos de datos y machine learning para recomendaciones.

Tecnologías clave (palabras sencillas)

- APIs públicas/privadas y sandbox para partners.
- Plataformas cloud y microservicios.
- Herramientas de ML para personalización.

Resultados (qué lograron, explicado fácil)

- Más transacciones digitales y usuarios activos en la app.
- Sacaron nuevas funciones más rápido y probaron ideas con partners.

Por qué importa esto

- Abrir capacidades a terceros acelera la creación de nuevos servicios y puede traer nuevos clientes.

Mapa de capacidades (versión simple)

- Experiencia y retención: cómo mantenemos a los clientes.
- Pagos y wallets: cómo movemos dinero rápido y seguro.
- Ecosistema y partners: cómo nos conectamos con otros servicios.
- Prevención de fraude: cómo cuidamos la confianza.

Iniciativas prioritarias (3, en lenguaje directo)

1. Ampliar el sandbox y atraer partners — responsable: Head Open Banking — 3–6 meses.
2. Plataforma de personalización con ML — responsable: Head Data Science — 6–9 meses.
3. Mejorar resiliencia y disponibilidad en pagos — responsable: CTO Payments — 6–12 meses.

Hoja de ruta (resumen en pasos)

- 0–3 meses: abrir el sandbox a primeros partners.
- 4–9 meses: piloto ML para recomendaciones.
- 10–18 meses: consolidar plataforma de pagos en cloud.

Riesgos y mitigaciones (en una línea)

- Regulación: involucrar legal desde inicio.
- Dependencia de terceros: definir SLAs y pruebas en sandbox.

---

## Comparación directa y recomendaciones sencillas

- BCP se centra en estabilidad y eficiencia; Interbank en experimentar y conectar partners.
- Recomendación práctica: empezar por acciones de bajo riesgo y alto impacto (API catalog, gobernanza de datos). Eso da resultados visibles y facilita pasos mayores después.

## Siguientes pasos (opcional)

- Puedo buscar y añadir métricas reales y enlaces a reportes públicos.
- Puedo actualizar la portada con tu `NRC` y tu nombre para que quede listo para entregar.

---

¿Quieres que añada métricas reales (citar fuentes) o que ponga tu nombre y NRC en la portada?  

## Glosario de términos

- **Arquitectura empresarial:** Marco que muestra cómo la empresa organiza procesos, capacidades, datos y tecnología para cumplir su estrategia.
- **Mapa de capacidades:** Inventario visual de lo que la organización sabe hacer (capacidades) y su importancia estratégica.
- **AS-IS:** Estado actual de procesos, sistemas y capacidades.
- **TO-BE:** Estado objetivo deseado tras las iniciativas de cambio.
- **API (Interfaz de Programación):** Punto de conexión que permite que dos sistemas se comuniquen.
- **Microservicio:** Componente pequeño e independiente que implementa una función del negocio.
- **Data Lake:** Repositorio amplio para almacenar datos en su forma original y habilitar análisis.
- **Data Warehouse:** Base de datos optimizada para reportes y análisis estructurados.
- **MDM (Master Data Management):** Práctica para asegurar datos maestros únicos y confiables.
- **API Gateway:** Componente que centraliza el acceso a APIs, seguridad y enrutamiento.
- **Core bancario:** Sistema central que procesa cuentas, transacciones y saldos del banco.
- **Omnicanal:** Estrategia para ofrecer la misma experiencia coherente en todos los canales (app, web, sucursal).
- **Sandbox:** Entorno seguro de pruebas para que partners integren y prueben APIs sin afectar producción.
- **ML/AI:** Técnicas de machine learning e inteligencia artificial para predicción y personalización.
- **KPI:** Indicador clave de desempeño usado para medir resultados (por ejemplo, % transacciones digitales).
- **Strangler Pattern:** Estrategia de modernización que reemplaza partes del sistema legacy por fases.
- **Gobernanza de datos:** Conjunto de normas, roles y procesos que garantizan calidad y responsabilidad sobre los datos.
- **Observabilidad:** Capacidades para entender la salud y comportamiento de sistemas (logs, métricas, traces).
- **RPA (Automatización de procesos):** Robots de software que automatizan tareas repetitivas.
- **CI/CD:** Prácticas de integración continua y despliegue continuo para entregar software frecuentemente.
- **SLA:** Acuerdo de nivel de servicio que define disponibilidad y tiempos de respuesta.
- **DPIA:** Evaluación de impacto en protección de datos para proyectos que tratan información sensible.



