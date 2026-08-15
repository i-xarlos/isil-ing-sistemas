# Solución Actividad 15: RescateIA — IA para Encontrar Personas Después de un Terremoto

**Curso:** Diseño de Soluciones con IA (ISIL, 2026-1)  
**Docente:** [pendiente]  
**Fecha:** 15/07/2026

---

## Contexto del Caso

Un terremoto de magnitud 7.9 afecta Lima y Callao. Las comunicaciones se saturan, redes sociales se llenan de mensajes de auxilio (80,000+ en la primera hora), y los operadores revisan manualmente mensajes duplicados, falsos o incompletos. RescateIA debe convertir ese caos en alertas verificables para brigadas de rescate.

---

## Actividad 1: Construcción de la Misión

### Tablero de Problemas Seleccionados

| Problema seleccionado | Usuario afectado | Consecuencia durante la emergencia | Función que podría ayudar |
|---|---|---|---|
| **P2:** mensajes duplicados | Operador del centro de emergencia | El mismo caso es revisado varias veces y retrasa otros rescates | Detector automático de duplicados |
| **P4:** fotografías antiguas o falsas | Brigadista de rescate | Se despacha un equipo a un lugar que no tiene emergencia real, desperdiciando recursos críticos | Verificador de imágenes contra fuentes conocidas |
| **P6:** operadores no conocen el nivel de confianza de la IA | Operador del centro de emergencia | No sabe cuándo confiar en la IA ni cuándo verificar manualmente, lo que genera dudas y demora | Panel con indicador de confianza por alerta |

### Declaración de Misión

> RescateIA ayudará a **los operadores del centro de emergencia y las brigadas de rescate** a **priorizar y verificar alertas de auxilio provenientes de múltiples fuentes**, sin reemplazar **la decisión humana sobre a quién rescatar primero**.

---

## Actividad 2: Armado de la Solución desde un Catálogo

### Arquitectura Seleccionada

| Capa | Código elegido | Decisión del equipo | Justificación breve |
|---|---|---|---|
| **Entrada** | E4 | Aplicación, formulario y redes sociales | Permite recibir reportes desde múltiples canales maximizando cobertura ciudadana |
| **Procesamiento IA** | I5 | Clasificación + duplicados + imágenes + ubicación | Combinación completa para reducir ruido y enriquecer cada alerta |
| **Supervisión humana** | H4 | Dos operadores confirman incidentes críticos | Doble verificación para casos de alta prioridad reduce riesgo de error fatal |
| **Lugar de ejecución** | D4 | Arquitectura híbrida: funciones locales y procesamiento central | Funciona con interrupciones de Internet (requisito del Gobierno) |
| **Presentación del resultado** | R3 | Panel con mapa, evidencias, prioridad y confianza | Información completa para decisión rápida bajo presión |

### Reglas Obligatorias del Sistema

| Selección | Regla disponible |
|---|---|
| ☑ | Mostrar el nivel de confianza de la predicción |
| ☑ | Permitir que un operador modifique la prioridad |
| ☑ | Conservar la evidencia original |
| ☑ | Registrar quién confirmó cada alerta |

**Justificación de reglas seleccionadas:**

1. **Confianza visible:** Los operadores deben saber cuándo la IA es incierta para decidir cuánto verificar.
2. **Modificación de prioridad:** La IA puede equivocarse (como el caso de "mi abuela no puede salir"). El humano debe poder corregir.
3. **Conservar evidencia:** Permite auditoría y aprendizaje posterior. También protege contra decisiones erróneas.
4. **Registro de confirmaciones:** Trazabilidad para mejorar el sistema y asignar responsabilidad.

---

## Actividad 3: Diseño y Prueba del Centro de Control

### Componentes Seleccionados (6 de 15)

| Código | Componente | Razón de selección |
|---|---|---|
| C1 | Mapa de incidentes | Visualización geoespacial esencial para coordinar brigadas |
| C2 | Fotografía enviada | Evidencia visual para verificar el incidente |
| C3 | Mensaje original | Contexto del ciudadano, incluyendo matices que la IA puede perder |
| C4 | Nivel de prioridad | Clasificación rápida de qué atender primero |
| C5 | Nivel de confianza | Transparencia sobre la certeza del modelo |
| C8 | Botón "Confirmar alerta" | Acción directa del operador para activar brigada |

### Simulación de Uso: Tarjeta B (Adulto Mayor)

**Tarjeta seleccionada:** B — Adulto mayor atrapada

> "Mi abuela no puede bajar, vivimos en un quinto piso y la escalera está rota."  
> Ubicación automática: disponible.  
> Fotografía: no disponible.  
> Confianza de la IA: 48%.

**¿Por qué esta tarjeta?** Es el caso más revelador del problema mencionado en el contexto: la IA asignó prioridad baja porque no detectó palabras como "incendio", "herido" o "atrapado", pero es una situación real de riesgo para una persona mayor.

### Registro de Prueba

| Elemento observado | Resultado de la simulación | Mejora propuesta |
|---|---|---|
| **Comprensión de la prioridad** | El color rojo fue comprendido, pero no se entendió qué significaba 94% de confianza | Agregar una explicación breve junto al porcentaje (ej: "Alta certeza" / "Verificar manualmente") |
| **Facilidad de uso** | El mapa muestra la ubicación correctamente, pero falta botón de zoom rápido a incidentes críticos | Agregar filtro de prioridad en el mapa para mostrar solo casos urgentes |
| **Información suficiente** | Sin foto, el operador depende solo del texto. La ubicación disponible es buena, pero el mensaje es ambiguo | Agregar botón "Solicitar foto" o "Llamar al reportero" para obtener más contexto |
| **Riesgo de error** | La confianza baja (48%) indica que la IA no está segura. Un operador novato podría descartarlo por error | Resaltar en amarillo los casos con confianza < 60% y exigir verificación antes de descartar |
| **Intervención humana** | El operador debe decidir entre confirmar o descartar. No hay opción de escalar a supervisor | Agregar botón "Escalar a supervisor" para casos ambiguos |

---

## Actividad 4: Sala de Decisión

### Matriz de Impacto

| Dimensión | Indicador elegido | Resultado esperado | Riesgo principal |
|---|---|---|---|
| **Técnica** | Tiempo de clasificación | Reducir la revisión inicial de varios minutos a pocos segundos | Clasificar rápidamente un mensaje incorrecto |
| **Organizacional** | Mensajes revisados por operador | Aumentar capacidad de revisión de 50 a 500 mensajes/hora | Operadores dependen demasiado de la IA y pierden criterio propio |
| **Social** | Personas atendidas | Atender 3x más incidentes en la primera hora | Rechazar incorrectamente casos reales por baja confianza |
| **Económica** | Horas de trabajo ahorradas | Reducir 200 horas de revisión manual en la primera semana | Inversión en infraestructura que no se justifica si el error rate es alto |

### Semáforo de Riesgos

| Situación | Rojo | Amarillo | Verde | Control propuesto |
|---|---|---|---|---|
| La IA asigna baja prioridad a un caso crítico | X | | | Revisión humana obligatoria de mensajes con información incompleta |
| La respuesta tarda algunos segundos | | X | | Optimizar modelo; establecer SLA de 5 segundos máximo |
| Se almacena el nombre completo del ciudadano | | X | | Anonimizar datos personales; acceso solo con autorización |
| El operador puede corregir la clasificación | | | X | Funcionalidad deseada y segura con registro de cambios |
| La plataforma pierde conexión con la nube | | X | | Modo offline con colas de sincronización automática |
| Una fotografía no puede ser verificada | | X | | Marcar como "no verificada" y solicitar evidencia adicional |

### Decisión Final

**Selección:** Realizar una prueba controlada con operadores capacitados

**Justificación:**  
RescateIA tiene potencial real para reducir tiempos de respuesta en emergencias, pero presenta riesgos que requieren control:
- La IA puede clasificar mal mensajes críticos (caso "mi abuela")
- Las imágenes falsas pueden generar dispatches innecesarios
- La confianza del operador debe construirse gradualmente

Una prueba controlada permite validar el sistema en condiciones reales pero limitadas, midiendo errores y mejorando antes de un despliegue completo.

### Tarjeta Ejecutiva

| Campo | Respuesta |
|---|---|
| **Nuestra decisión es:** | Realizar una prueba controlada con operadores capacitados |
| **La principal evidencia obtenida fue:** | La IA detecta correctamente imágenes falsas (94% confianza) pero falla en mensajes con lenguaje coloquial ("mi abuela no puede salir" → prioridad baja con 48% confianza) |
| **El riesgo que debe controlarse primero es:** | Falsos negativos: casos críticos que la IA clasifica como no urgentes |
| **La mejora prioritaria del prototipo es:** | Agregar regla de negocio: mensajes con personas mayores, niños o discapacidad siempre requieren verificación humana independientemente de la confianza |
| **RescateIA generará valor cuando logre:** | Reducir el tiempo de identificación de casos críticos de 45 minutos a menos de 5 minutos, con tasa de error menor al 5% en prioridad alta |

---

## Reflexión Final

### Lecciones Aprendidas

1. **La IA no debe decidir sola en emergencias:** Siempre se necesita supervisión humana, especialmente cuando hay vidas en juego.
2. **El lenguaje natural es un desafío:** Mensajes como "mi abuela no puede salir" no contienen palabras clave de urgencia, pero son situaciones críticas.
3. **La confianza es bidireccional:** Los operadores necesitan saber cuándo confiar en la IA, y la IA debe saber cuándo no está segura.
4. **El modo offline es no negociable:** En desastres, la infraestructura falla. La solución debe funcionar degradada.
5. **Los datos falsos son peligrosos:** Una imagen antigua puede despachar equipos innecesariamente. La verificación de fuentes es crítica.

### Recomendaciones para Siguiente Fase

- Entrenar el modelo con mensajes en español coloquial peruano
- Implementar verificación cruzada de imágenes con bancos de imágenes de emergencias
- Crear protocolo de escalamiento automático para casos de baja confianza
- Realizar simulacros con brigadas reales antes del despliegue

---

## Fuentes

| # | Fuente | Tipo | URL |
|---|---|---|---|
| 1 | The Global Facility for Disaster Reduction and Recovery. *Data for Resilience* | Oficial | https://gfdrr.org |
| 2 | FEMA. *National Incident Management System* | Oficial | https://www.fema.gov/emergency-managers/nims |
| 3 | The Guardian. *How AI is being used in disaster response* (2024) | Tercero | https://www.theguardian.com/technology/2024/ |

---

*Última verificación: 15/07/2026.*
