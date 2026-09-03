#!/usr/bin/env bash
# validate-clases.sh — Valida formato y contenido de clases/actividades en un PR
# Uso: ./validate-clases.sh [archivo1.md] [archivo2.md] ...
# Si no se pasan archivos, valida todos los .md enclase-X/ y actividad-X/

set -uo pipefail

ERRORS=0
WARNINGS=0

error() { echo "::error::❌ $1"; ERRORS=$((ERRORS + 1)); }
warn()  { echo "::warning::⚠️  $1"; WARNINGS=$((WARNINGS + 1)); }
info()  { echo "::notice::ℹ️  $1"; }

# ─── Helpers ──────────────────────────────────────────────────────────────────

extract_clase_num_from_path() {
  local path="$1"
  if [[ "$path" =~ (clase|actividad)-([0-9]+) ]]; then
    echo "${BASH_REMATCH[2]}"
  else
    echo ""
  fi
}

extract_clase_num_from_title() {
  local line="$1"
  if [[ "$line" =~ \(Clase\ ([0-9]+)\) ]]; then
    echo "${BASH_REMATCH[1]}"
  elif [[ "$line" =~ \(Actividad\ ([0-9]+)\) ]]; then
    echo "${BASH_REMATCH[1]}"
  else
    echo ""
  fi
}

is_valid_filename() {
  local name="$1"
  # Minusculas, guiones, numeros. Extension al final
  if [[ "$name" =~ ^[a-z0-9][a-z0-9\-]*\.(md|png|jpg|jpeg|gif|pdf)$ ]]; then
    return 0
  fi
  return 1
}

has_bad_image_name() {
  local name="$1"
  local base="${name%.*}"
  # Nombres genericos prohibidos
  if [[ "$base" =~ ^(image|img|foto|photo|screenshot|slide|captura|pic|imagen)[\ \-]?[0-9]*$ ]]; then
    return 0
  fi
  return 1
}

# ─── Validar un archivo Markdown de CLASE ─────────────────────────────────────

validate_clase_md() {
  local file="$1"
  local dir
  dir=$(dirname "$file")
  local basename
  basename=$(basename "$file")
  local folder_num
  folder_num=$(extract_clase_num_from_path "$dir")

  info "Validando clase: $file"

  # 1) Nombre del archivo
  if ! is_valid_filename "$basename"; then
    error "$file: Nombre no convencional. Usa minusculas y guiones (ej: tema-descriptor-clase-N.md)"
  fi

  # 2) Numero de clase en filename vs carpeta
  local file_num
  file_num=$(extract_clase_num_from_path "$basename")
  if [[ -n "$folder_num" && -n "$file_num" && "$folder_num" != "$file_num" ]]; then
    error "$file: Numero de clase en filename ($file_num) no coincide con carpeta (clase-$folder_num)"
  fi

  # 3) Verificar encabezado obligatorio
  local first_lines
  first_lines=$(head -20 "$file")

  local title_line
  title_line=$(head -1 "$file")
  if ! echo "$title_line" | LANG=en_US.UTF-8 LC_ALL=en_US.UTF-8 grep -qi 'clase'; then
    error "$file: Falta encabezado obligatorio '# Titulo (Clase X)' en las primeras lineas"
  fi

  if ! echo "$first_lines" | grep -qE '^\*\*Curso:\*\*'; then
    error "$file: Falta metadata '**Curso:**' en el encabezado"
  fi

  if ! echo "$first_lines" | grep -qE '^\*\*Docente:\*\*'; then
    warn "$file: Falta metadata '**Docente:**' en el encabezado"
  fi

  if ! echo "$first_lines" | grep -qE '^\*\*Fecha:\*\*'; then
    warn "$file: Falta metadata '**Fecha:**' en el encabezado"
  fi

  # 4) Coherencia titulo-carpeta
  local title_num
  title_num=$(echo "$title_line" | grep -oE 'Clase [0-9]+' | grep -oE '[0-9]+')
  if [[ -n "$folder_num" && -n "$title_num" && "$folder_num" != "$title_num" ]]; then
    error "$file: Numero de clase en titulo ($title_num) no coincide con carpeta (clase-$folder_num)"
  fi

  # 5) Verificar imagenes referenciadas existen
  while IFS= read -r img_ref; do
    local img_name
    img_name=$(echo "$img_ref" | sed 's/.*(\.\///;s/).*//')
    if [[ -n "$img_name" ]]; then
      if [[ ! -f "$dir/$img_name" ]]; then
        error "$file: Imagen referenciada no existe: ./$img_name"
      fi
    fi
  done < <(grep -oE '\!\[.*\]\(\.\/[^)]+\)' "$file" 2>/dev/null || true)

  # 6) Verificar que imagenes en la carpeta estan referenciadas
  for img in "$dir"/*.png "$dir"/*.jpg "$dir"/*.jpeg "$dir"/*.gif; do
    [[ -f "$img" ]] || continue
    local img_basename
    img_basename=$(basename "$img")
    if ! grep -q "$img_basename" "$file" 2>/dev/null; then
      warn "$file: Imagen en carpeta no referenciada: $img_basename"
    fi
  done

  # 7) Verificar nombres prohibidos de imagenes
  for img in "$dir"/*.png "$dir"/*.jpg "$dir"/*.jpeg "$dir"/*.gif; do
    [[ -f "$img" ]] || continue
    local img_name
    img_name=$(basename "$img")
    if has_bad_image_name "$img_name"; then
      error "$file: Imagen con nombre generico prohibido: $img_name"
    fi
  done

  # 8) Verificar que exista al menos un encabezado ## (secciones)
  if ! grep -qE '^## ' "$file" 2>/dev/null; then
    warn "$file: No se encontraron secciones (##). Se recomienda estructura con secciones"
  fi

  # 9) Verificar que no este solo en ingles (basico)
  local word_count
  word_count=$(wc -w < "$file")
  local spanish_hints
  spanish_hints=$(grep -ciE '(la |el |los |las |de |del |en |que |por |con |para |se |una |uno |como |su |este |esta |pero |mas |tambien |clase|sesion|ejemplo|conclusion|tema)' "$file" 2>/dev/null || echo 0)
  if [[ "$word_count" -gt 100 && "$spanish_hints" -lt 5 ]]; then
    warn "$file: Posible contenido en ingles. El repositorio debe estar en espanol"
  fi

  echo ""
}

# ─── Validar un archivo Markdown de ACTIVIDAD ─────────────────────────────────

validate_actividad_md() {
  local file="$1"
  local dir
  dir=$(dirname "$file")
  local basename
  basename=$(basename "$file")
  local folder_num
  folder_num=$(extract_clase_num_from_path "$dir")

  info "Validando actividad: $file"

  # 1) Nombre del archivo
  if ! is_valid_filename "$basename"; then
    error "$file: Nombre no convencional. Usa minusculas y guiones (ej: tema-descriptor-actividad-N.md)"
  fi

  # 2) Numero de actividad en filename vs carpeta
  local file_num
  file_num=$(extract_clase_num_from_path "$basename")
  if [[ -n "$folder_num" && -n "$file_num" && "$folder_num" != "$file_num" ]]; then
    error "$file: Numero de actividad en filename ($file_num) no coincide con carpeta (actividad-$folder_num)"
  fi

  # 3) Verificar encabezado obligatorio
  local first_lines
  first_lines=$(head -20 "$file")

  local title_line
  title_line=$(head -1 "$file")
  if ! echo "$title_line" | grep -qE '^# '; then
    error "$file: Falta encabezado '# Titulo' en la primera linea"
  fi

  if ! echo "$first_lines" | grep -qE '^\*\*Curso:\*\*'; then
    error "$file: Falta metadata '**Curso:**' en el encabezado"
  fi

  # 4) Detectar tipo de actividad (evaluacion/investigacion = exento de secciones)
  local activity_type
  activity_type=$(echo "$first_lines" | grep -oE '^\*\*Tipo:\*\*.*' | head -1 | sed 's/\*\*Tipo:\*\* *//I' | tr '[:upper:]' '[:lower:]' | xargs)
  local is_evaluation=false
  if [[ "$activity_type" =~ (evaluacion|investigacion|examen|parcial|final) ]]; then
    is_evaluation=true
    info "$file: Actividad tipo '$activity_type' — exenta de secciones obligatorias"
  fi

  # 5) Verificar secciones obligatorias (solo si no es evaluacion/investigacion)
  if [[ "$is_evaluation" == "false" ]]; then
    if ! grep -qE '^## .*(Conclusion|Conclusiones)' "$file" 2>/dev/null; then
      error "$file: Falta seccion obligatoria '## Conclusiones'"
    fi

    if ! grep -qE '^## .*(Fuentes|Referencias)' "$file" 2>/dev/null; then
      error "$file: Falta seccion obligatoria '## Fuentes'"
    fi
  fi

  # 5) Verificar imagenes referenciadas
  while IFS= read -r img_ref; do
    local img_name
    img_name=$(echo "$img_ref" | sed 's/.*(\.\///;s/).*//')
    if [[ -n "$img_name" ]]; then
      if [[ ! -f "$dir/$img_name" ]]; then
        error "$file: Imagen referenciada no existe: ./$img_name"
      fi
    fi
  done < <(grep -oE '\!\[.*\]\(\.\/[^)]+\)' "$file" 2>/dev/null || true)

  # 6) Nombres prohibidos de imagenes
  for img in "$dir"/*.png "$dir"/*.jpg "$dir"/*.jpeg "$dir"/*.gif; do
    [[ -f "$img" ]] || continue
    local img_name
    img_name=$(basename "$img")
    if has_bad_image_name "$img_name"; then
      error "$file: Imagen con nombre generico prohibido: $img_name"
    fi
  done

  echo ""
}

# ─── Validar imagen suelta ────────────────────────────────────────────────────

validate_image() {
  local file="$1"
  local dir
  dir=$(dirname "$file")
  local basename
  basename=$(basename "$file")

  # Verificar que este en una carpeta clase-X o actividad-X
  if [[ ! "$dir" =~ (clase|actividad)-[0-9]+ ]]; then
    return
  fi

  if has_bad_image_name "$basename"; then
    error "$file: Imagen con nombre generico prohibido en carpeta de clase/actividad: $basename"
  fi

  if ! is_valid_filename "$basename"; then
    error "$file: Imagen con nombre no convencional. Usa minusculas y guiones"
  fi
}

# ─── Main ─────────────────────────────────────────────────────────────────────

main() {
  echo "═══════════════════════════════════════════════════════════"
  echo " 🔍 Validador de Clases y Actividades — ISIL"
  echo "═══════════════════════════════════════════════════════════"
  echo ""

  local files=()

  if [[ $# -gt 0 ]]; then
    files=("$@")
  else
    # Buscar todos los archivos relevantes
    while IFS= read -r f; do
      files+=("$f")
    done < <(find . -path '*/clase-*/*.md' -o -path '*/actividad-*/*.md' -o \
                   -path '*/clase-*/*.png' -o -path '*/clase-*/*.jpg' -o \
                   -path '*/actividad-*/*.png' -o -path '*/actividad-*/*.jpg' 2>/dev/null)
  fi

  if [[ ${#files[@]} -eq 0 ]]; then
    info "No se encontraron archivos para validar"
    exit 0
  fi

  for file in "${files[@]}"; do
    [[ -f "$file" ]] || continue

    case "$file" in
      */clase-*/*.md)
        validate_clase_md "$file"
        ;;
      */actividad-*/*.md)
        validate_actividad_md "$file"
        ;;
      */clase-*/*.png|*/clase-*/*.jpg|*/clase-*/*.jpeg|*/clase-*/*.gif)
        validate_image "$file"
        ;;
      */actividad-*/*.png|*/actividad-*/*.jpg|*/actividad-*/*.jpeg|*/actividad-*/*.gif)
        validate_image "$file"
        ;;
    esac
  done

  echo "═══════════════════════════════════════════════════════════"
  echo " 📊 Resumen de validacion"
  echo "═══════════════════════════════════════════════════════════"
  echo ""
  echo "  Errores:   $ERRORS"
  echo "  Warnings:  $WARNINGS"
  echo ""

  if [[ $ERRORS -gt 0 ]]; then
    echo "  ❌ Validacion FALLIDA — corrige los errores antes de mergear"
    echo ""
    exit 1
  else
    echo "  ✅ Validacion PASADA"
    echo ""
    exit 0
  fi
}

main "$@"
