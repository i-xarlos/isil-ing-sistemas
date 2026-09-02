---
name: conventional-commit-generator
description: "Use when: analyzing code changes and generating descriptive commit messages following the Conventional Commits standard with type, scope, description, and optional body."
---

# Generador de Commits Convencionales

Toma un diff, una descripción de cambios o una lista de archivos modificados y genera mensajes de commit profesionales siguiendo Conventional Commits.

---

## Flujo de Trabajo

### Paso 1: Analizar Cambios

Recibir uno de estos inputs:

| Input | Qué hacer |
|-------|-----------|
| `git diff` o `git diff --staged` | Analizar archivos y líneas modificadas |
| Lista de archivos | Inferir tipo de cambio por nombre/ruta |
| Descripción del usuario | Convertir a formato convencional |
| `git status` | Verificar archivos staged vs unstaged |

### Paso 2: Determinar Tipo

Asignar el tipo principal según la naturaleza del cambio:

| Tipo | Cuándo usarlo | Ejemplo |
|------|---------------|---------|
| **feat** | Nueva funcionalidad visible para el usuario | Agregar endpoint, nueva página, feature |
| **fix** | Corrección de bug o comportamiento incorrecto | Corregir validación, error 500, fallback |
| **refactor** | Reestructuración sin cambio de comportamiento | Extraer función, renombrar variable |
| **docs** | Cambios solo en documentación | Actualizar README, agregar comentarios |
| **style** | Formato, espacios, sinimpacto lógico | Indentación, Prettier, ESLint fix |
| **test** | Agregar o corregir tests | Unit tests, integration tests |
| **chore** | Tareas de mantenimiento, dependencias | Actualizar package.json, CI/CD |
| **perf** | Mejoras de rendimiento | Optimizar queries, caché, lazy loading |
| **ci** | Cambios en configuración CI/CD | GitHub Actions, pipelines |
| **build** | Sistema de build o dependencias externas | Webpack, Vite, Docker |

### Paso 3: Inferir Scope

Detectar el área afectada por los archivos modificados:

| Scope | Archivos típicos |
|-------|------------------|
| `api` | `routes/`, `controllers/`, `endpoints/` |
| `ui` | `components/`, `pages/`, `styles/` |
| `auth` | `login`, `token`, `session`, `oauth` |
| `db` | `models/`, `migrations/`, `schema/` |
| `docs` | `*.md`, `README`, `docs/` |
| `deps` | `package.json`, `requirements.txt`, `Cargo.toml` |
| `ci` | `.github/workflows/`, `Dockerfile` |
| `config` | `*.config.*`, `.env`, `settings/` |

Si el scope no es claro, omitirlo (el formato lo permite).

### Paso 4: Generar Mensaje

Aplicar las reglas de redacción y generar el commit.

---

## Formato del Mensaje

### Estructura Completa

```
<type>(<scope>): <descripción corta>

<body explicativoopcional>

<footer Breaking Change si aplica>
```

### Ejemplo Real

```
feat(api): add user registration endpoint

- POST /api/users with email and password validation
- Returns 201 on success, 409 if email exists
- Includes rate limiting (5 attempts per minute)

Closes #142
```

### Ejemplo con Breaking Change

```
feat(api)!: change authentication from session to JWT

Remove session-based auth in favor of stateless JWT tokens.
All existing sessions will be invalidated.

BREAKING CHANGE: /api/auth/login now returns a JWT token
instead of setting a session cookie. Clients must update
their auth headers to use Authorization: Bearer <token>.
```

---

## Reglas de Redacción

### Línea 1 (Subject)

| Regla | Correcto | Incorrecto |
|-------|----------|------------|
| **Imperativo** | `add feature` | `added feature` |
| **Minúsculas** | `fix bug` | `Fix bug` |
| **Sin punto final** | `update README` | `update README.` |
| **Máx 72 caracteres** | `feat: add user registration` | `feat: add a new user registration endpoint to the API` |
| **Sin prefijo "a"/"an"/"the"** | `add login validation` | `add a login validation` |

### Body (Opcional)

Incluir solo si el "qué" no es obvio sin el "por qué":

```md
fix(api): prevent race condition in order processing

The previous implementation allowed concurrent requests to
deduct inventory simultaneously, causing overselling during
peak traffic. Use database-level locking with SELECT FOR UPDATE.

Fixes #203
```

### Footer

Usar para:

- **Breaking changes:** `BREAKING CHANGE: descripción`
- **Issue references:** `Closes #123`, `Fixes #456`, `Refs #789`

---

## Múltiples Commits

Si hay cambios no relacionados, proponer commits separados:

### Ejemplo de Input

> "Arreglé un bug en el login, agregué tests para el formulario, y actualicé el README"

### Salida Esperada

```bash
fix(auth): fix login validation for empty email field

test(auth): add unit tests for login form validation

docs(readme): update installation instructions
```

### Regla

**Un commit = un cambio lógico.** No mezclar:

- ❌ `feat: add endpoint and fix typo in README`
- ✅ `feat: add user endpoint` + `docs: fix typo in README`

---

## Detección de Breaking Changes

Marcar como breaking (`!`) cuando:

| Situación | Ejemplo |
|-----------|---------|
| Cambio en API pública | `feat(api)!: change response format` |
| Eliminación de funcionalidad | `feat(auth)!: remove session-based login` |
| Cambio en Behavior visible | `feat(ui)!: require email verification` |
| Dependencia con cambio mayor | `chore(deps)!: upgrade React to v19` |

---

## Templates por Tipo

### feat

```
feat(<scope>): <descripción>

- Detalle 1
- Detalle 2
```

### fix

```
fix(<scope>): <descripción>

- Causa raíz: <qué causaba el bug>
- Solución: <cómo se arregla>
```

### refactor

```
refactor(<scope>): <descripción>

- Motivo: <por qué se refactoriza>
- Cambio principal: <qué cambia estructuralmente>
```

### docs

```
docs(<scope>): <descripción>
```

### test

```
test(<scope>): <descripción>

- Cobertura: <qué casos cubre>
```

---

## Ejemplo de Uso

**Entrada:**
> "Modifiqué el archivo `src/routes/auth.js` para agregar validación de email con regex, agregué el archivo `src/utils/validate.js` con la función de validación, y actualicé el test en `tests/auth.test.js`"

**Salida:**

```bash
feat(auth): add email validation with regex

- Add validateEmail() utility in src/utils/validate.js
- Regex pattern: /^[^\s@]+@[^\s@]+\.[^\s@]+$/
- Returns boolean for valid/invalid format

test(auth): add email validation unit tests

- Test valid formats: standard, subdomain, plus addressing
- Test invalid formats: missing @, double dots, spaces
```

---

## Integración con Git

### Auto-detectar cambios staged

```bash
git diff --staged --name-only
git diff --staged --stat
```

### Generar commit directamente

```bash
git commit -m "feat(auth): add email validation" -m "- Regex pattern for standard emails" -m "Closes #42"
```

### Con body

```bash
git commit -m "fix(api): prevent duplicate order submission

The previous implementation did not check for idempotency keys,
allowing users to submit the same order multiple times by
clicking the button rapidly.

- Add idempotency key check in order creation endpoint
- Return 409 Conflict if key already exists
- Frontend now sends unique key per form submission

Fixes #189"
```

---

## Restricciones

- **Máximo 72 caracteres** en la primera línea
- **Imperativo:** "add" no "added", "fix" no "fixed"
- **Un commit = un cambio lógico**
- **No mezclar feat + fix** en el mismo commit
- **Si no hay contexto suficiente**, preguntar antes de asumir el tipo
- **Sin punto final** en la línea del subject
- **Sin prefijos innecesarios** ("a", "an", "the")

---

## Checklist de Calidad

Antes de entregar el commit, verificar:

- [ ] Primera línea en imperativo, minúscula, sin punto
- [ ] Primera línea ≤ 72 caracteres
- [ ] Type correcto (feat/fix/refactor/docs/style/test/chore/perf/ci/build)
- [ ] Scope inferido correctamente (o omitido si no aplica)
- [ ] Body incluido solo si es necesario para entender el "por qué"
- [ ] Breaking change marcado con `!` en subject Y `BREAKING CHANGE:` en footer
- [ ] Issues referenciadas con `Closes/Fixes/Refs #N`
- [ ] Un commit por cambio lógico (no mezclar features con fixes)
