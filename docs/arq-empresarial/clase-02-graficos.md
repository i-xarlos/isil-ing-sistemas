# Arquitectura Empresarial — Clase 02 (Gráficos)

## 1) Relación entre capas de AE
```mermaid
flowchart TB
  E[Contexto y objetivos del negocio] --> N[Capa de Negocio]
  N --> D[Capa de Datos / Información]
  N --> A[Capa de Aplicaciones]
  D --> A
  A --> T[Capa Tecnológica]
  T --> O[Operación y mejora continua]
```

## 2) Mapa mental de conceptos de Clase 02
```mermaid
mindmap
  root((Arquitectura Empresarial))
    Objetivo
      Alinear negocio y tecnología
      Reducir duplicidades
      Mejorar decisiones
    Capas
      Negocio
      Datos
      Aplicaciones
      Tecnología
    Artefactos
      Mapa de capacidades
      Mapa de aplicaciones
      Diagramas de integración
      AS-IS / TO-BE
    Resultado
      Visión compartida
      Priorización de cambios
      Roadmap inicial
```

## 3) Trazabilidad simple: negocio a tecnología
```mermaid
flowchart LR
  OBJ[Objetivo de negocio] --> PROC[Proceso clave]
  PROC --> APP[Sistema o aplicación]
  APP --> DATA[(Datos críticos)]
  APP --> TECH[Plataforma tecnológica]
```
