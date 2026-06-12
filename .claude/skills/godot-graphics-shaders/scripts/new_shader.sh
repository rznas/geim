#!/usr/bin/env bash
# new_shader.sh — write a starter .gdshader of a given type.
#
# Usage: new_shader.sh <projdir> <name> <type> [subdir]
#   type: canvas_item | spatial | particles
#   default subdir: shaders
#
# Emits a compile-valid shader with a fragment function and an example uniform,
# so it imports clean and is ready to extend. Verified against Godot 4.6 GSL.

set -euo pipefail
DIR="${1:?usage: new_shader.sh <projdir> <name> <type> [subdir]}"
NAME="${2:?need shader name (lowercase_snake)}"
TYPE="${3:?need type: canvas_item | spatial | particles}"
SUBDIR="${4:-shaders}"

DEST="$DIR/$SUBDIR"
mkdir -p "$DEST"
FILE="$DEST/$NAME.gdshader"
[[ -e "$FILE" ]] && { echo "refusing to overwrite $FILE" >&2; exit 1; }

case "$TYPE" in
  canvas_item)
    cat > "$FILE" <<'EOF'
shader_type canvas_item;

// 0 = original, 1 = full white. Drive from C# on hit:
//   ((ShaderMaterial)node.Material).SetShaderParameter("flash", 1.0f);
uniform float flash : hint_range(0.0, 1.0) = 0.0;
uniform vec4 tint : source_color = vec4(1.0);

void fragment() {
    vec4 t = texture(TEXTURE, UV) * tint;
    COLOR = mix(t, vec4(1.0, 1.0, 1.0, t.a), flash);
}
EOF
    ;;
  spatial)
    cat > "$FILE" <<'EOF'
shader_type spatial;
render_mode cull_back;

uniform vec3 base_color : source_color = vec3(0.8);
uniform float glow : hint_range(0.0, 4.0) = 0.0;   // pairs with WorldEnvironment glow

void fragment() {
    ALBEDO = base_color;
    EMISSION = base_color * glow;
}
EOF
    ;;
  particles)
    cat > "$FILE" <<'EOF'
shader_type particles;

void start() {
    // Per particle, once at spawn.
    VELOCITY = vec3(0.0, -98.0, 0.0);
}

void process() {
    // Per particle, every frame.
    VELOCITY.y += 98.0 * DELTA;   // gravity
}
EOF
    ;;
  *)
    echo "type must be canvas_item | spatial | particles (got: $TYPE)" >&2
    exit 2
    ;;
esac

echo "Wrote $FILE  (res://$SUBDIR/$NAME.gdshader, shader_type $TYPE)"
echo "Attach via a ShaderMaterial whose 'shader' points at this file."
