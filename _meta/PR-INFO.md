# Información para crear el Pull Request

## Estado actual

- **Rama:** `mejorar-documentacion`
- **Base:** `main`
- **Estado:** ✅ Rama publicada y lista para PR
- **URL directa:** https://github.com/i-xarlos/isil-ing-sistemas/pull/new/mejorar-documentacion

---

## Pasos para crear el PR

### Opción 1: Desde GitHub.com (recomendado)

1. Ve a: https://github.com/i-xarlos/isil-ing-sistemas
2. Haz clic en el tab **"Pull requests"**
3. Haz clic en **"New pull request"**
4. En **"Compare"** selecciona: `mejorar-documentacion`
5. En **"Base"** asegúrate que está: `main`
6. Haz clic en **"Create pull request"**
7. Copia el título y descripción de abajo

### Opción 2: Usar el enlace directo

Ve a esta URL y completa el formulario:
```
https://github.com/i-xarlos/isil-ing-sistemas/compare/main...mejorar-documentacion
```

---

## Información del PR

### Título

```
Mejorar estructura, claridad y navegabilidad de la documentación
```

### Descripción (Body)

```markdown
## Resumen

Este PR implementa mejoras estructurales y de experiencia para la documentación del repositorio ISIL {year-semestre}. Incluye cambios que hacen el contenido más navegable, visual y fácil de mantener.

## Cambios principales

### 1. Estandarización de formato y estructura
- **Encabezados consistentes:** eliminada numeración manual (1., 2.1) en favor de `##` y `###` estándar
- **Glosarios expandidos:** definiciones completas que explican QUÉ es y POR QUÉ importa cada término
- **Cross-references:** vínculos entre clases de distintos cursos para conectar conceptos relacionados

### 2. Diagramas Mermaid interactivos
- **Flujo del curso de IA:** visualiza las 16 semanas en bloques: Fundamentos → Preparación → Modelamiento → Despliegue
- **Visión integrada de 4 dominios:** muestra cómo Negocio → Procesos → Datos → Aplicaciones → Tecnología se conectan

### 3. Nuevos archivos de navegación y referencia

#### INDICE-CONCEPTOS.md
Tabla maestra de todos los conceptos clave con enlaces directos a dónde aparecen:
- Conceptos de Arquitectura Empresarial (11 términos)
- Conceptos de IA y ML (13 términos)
- Conceptos de Deep Learning (5 términos)
- Tabla de conexiones entre cursos

#### PLANTILLA-NUEVAS-CLASES.md
Guía completa para crear nuevas clases:
- Estructura Markdown lista para copiar-pegar
- Checklist de calidad (8 puntos)
- Convenciones de nombres y formato
- Referencia a clases bien estructuradas como modelo

### 4. README mejorado
- Tablas de temas en lugar de listas (mejor escaneo visual)
- Enlaces a nuevos archivos de índice y plantilla
- Instrucciones claras sobre cómo agregar nuevas clases

## Archivos modificados

- `README.md` — actualizado con tablas y referencias nuevas
- `2026-1/arq-empresarial/clase-1/arquitectura-empresarial-fundamentos-clase-1.md` — encabezados, glosario expandido, diagrama, cross-refs
- `2026-1/diseno-soluciones-ia/clase-1/diseno-soluciones-ia-introduccion-clase-1.md` — encabezados, diagrama, cross-refs

## Archivos nuevos

- `INDICE-CONCEPTOS.md` — navegación centralizada de todos los conceptos (7.5 KB)
- `PLANTILLA-NUEVAS-CLASES.md` — guía para mantener consistencia en nuevas clases (5.8 KB)

## Validaciones completadas

✅ Todas las imágenes referenciadas existen (7 imágenes verificadas)
✅ Encabezados estandarizados en ambos cursos
✅ Glosarios completos con definiciones útiles
✅ Diagramas Mermaid renderizados correctamente
✅ Cross-references funcionales
✅ Links relativos correctos (probados)

## Impacto esperado

### Para estudiantes
- Búsqueda rápida de conceptos clave mediante índice centralizado
- Visualización clara de flujos y relaciones mediante diagramas
- Mejor comprensión del contexto entre distintos cursos

### Para docentes/colaboradores
- Plantilla lista para crear nuevas clases sin perder consistencia
- Checklist de calidad automático
- Consistencia garantizada sin esfuerzo adicional

### Para el repositorio
- Estructura escalable y mantenible
- Fácil navegación para nuevos usuarios
- Mejor experiencia de búsqueda y comprensión

## Notas

Este PR respeta completamente las directrices especificadas en `AGENTS.md`:
- ✅ Lenguaje claro, técnico pero accesible
- ✅ Teoría conectada con aplicación práctica
- ✅ Estructura consistente en todo el repositorio
- ✅ Sin jerga innecesaria
- ✅ Prioriza claridad sobre sofisticación

## Commits incluidos

1. `c843ddb` - Mejorar estructura y consistencia de documentación
2. `f7e690e` - Agregar diagramas Mermaid, índice de conceptos y plantilla para nuevas clases

Total: 8 archivos modificados, 415 líneas agregadas
```

---

## Enlace rápido

Haz clic aquí para ir directamente a crear el PR:
👉 https://github.com/i-xarlos/isil-ing-sistemas/compare/main...mejorar-documentacion
