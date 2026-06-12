# Godot Shading Language (.gdshader) — verified patterns

Godot Shading Language is a simplified GLSL. Files end in `.gdshader`. First line
is always the type; second (optional) is render modes. This is GSL, **not** C#.

## Anatomy

```glsl
shader_type canvas_item;
render_mode blend_mix;

uniform vec4 tint : source_color = vec4(1.0);
uniform float speed = 1.0;

void vertex() {
    // runs per vertex; VERTEX is vec2 (2D) / vec3 (3D), in local space
    VERTEX += vec2(cos(TIME * speed) * 10.0, 0.0);
}

void fragment() {
    // runs per pixel; write COLOR (2D) / ALBEDO etc. (3D)
    COLOR = texture(TEXTURE, UV) * tint;
}
```

## 2D (canvas_item) built-ins you use most

- `COLOR` — in/out pixel color (`vec4`, rgba 0..1). The thing you ultimately set.
- `UV` — texture coords, 0..1 across the sprite. Read-only in `fragment()`.
- `TEXTURE` — the node's texture (Sprite2D etc.). Sample with `texture(TEXTURE, UV)`.
- `VERTEX` — `vec2`, local-space vertex position; write to move geometry.
- `TIME` — seconds since start; the basis of all animation.
- `SCREEN_UV` / `screen_texture` (via a `hint_screen_texture` uniform) — for
  effects that read the framebuffer (distortion, blur).

```glsl
// Tint just the blue channel from a uniform
uniform float blue = 1.0;
void fragment() {
    COLOR = texture(TEXTURE, UV);
    COLOR.b = blue;
}

// Scrolling UV
void fragment() {
    vec2 uv = UV + vec2(TIME * 0.1, 0.0);
    COLOR = texture(TEXTURE, uv);
}

// Flash white by mixing toward white with a uniform 0..1
uniform float flash : hint_range(0.0, 1.0) = 0.0;
void fragment() {
    vec4 t = texture(TEXTURE, UV);
    COLOR = mix(t, vec4(1.0, 1.0, 1.0, t.a), flash);
}
```

## 3D (spatial) built-ins you use most

- `ALBEDO` (`vec3`) — base color. `METALLIC`, `ROUGHNESS` (`float`) — PBR.
- `EMISSION` (`vec3`) — self-illumination (drives glow with an Environment).
- `NORMAL`, `NORMAL_MAP` — surface normals.
- `UV`, `VERTEX` (`vec3`), `TIME`, `ALPHA`.

```glsl
shader_type spatial;
render_mode cull_back;
uniform vec3 base_color : source_color = vec3(0.8);
uniform float glow = 0.0;
void fragment() {
    ALBEDO = base_color;
    EMISSION = base_color * glow;     // pair with WorldEnvironment glow for bloom
}
```

## Uniforms & hints

```glsl
uniform float amount : hint_range(0.0, 1.0) = 0.5;   // slider in inspector
uniform vec4  color  : source_color = vec4(1.0);      // shown as a color picker
uniform sampler2D mask : repeat_disable, filter_linear;
uniform sampler2D screen_tex : hint_screen_texture;   // read the framebuffer
```

`source_color` matters: without it, color uniforms are treated as raw linear
data and look wrong. `hint_range` gives the inspector a slider.

## Render modes (second line)

`canvas_item`: `blend_mix` (default), `blend_add`, `blend_mul`, `unshaded`,
`light_only`. `spatial`: `cull_back|front|disabled`, `unshaded`, `depth_test_*`,
`blend_add`, etc. See the per-type shader reference in the godot-docs
`shaders/shader_reference/` for the complete list.

## Common effects, where they live

- **Dissolve**: sample a noise texture, `discard` where `noise < threshold`,
  drive `threshold` from C#.
- **Outline (2D)**: can't be done in a sprite's own fragment shader (clipped to
  the sprite). Use a slightly larger quad, a `SubViewport`, or sample neighbors
  via `SCREEN_UV`.
- **Hit flash**: the `flash` mix above, set from C# on damage.
- **Water/scroll/wave**: offset `UV` or `VERTEX` by `TIME`.
