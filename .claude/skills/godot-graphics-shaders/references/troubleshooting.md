# Graphics & shader troubleshooting (Godot 4.6)

## Object draws solid white / magenta / wrong

- **Wrong `shader_type`** for the node: `canvas_item` on a 3D mesh, or `spatial`
  on a Sprite2D. Match the type to the node's dimension.
- **Material not assigned**, or assigned to the wrong slot. A `MeshInstance3D`
  uses `MaterialOverride` (or surface materials); a `CanvasItem` uses `Material`.
- **Shader parse error** — check stdout on `--import`; a broken shader falls back
  to a default/error material.

## A `SetShaderParameter` call does nothing

- The uniform **name string doesn't match** the shader (case-sensitive, exact).
- The `Material` isn't actually a `ShaderMaterial` — the cast
  `(ShaderMaterial)node.Material` throws or you set on the wrong object.
- Two nodes share one material resource and you expected per-node values — use
  `instance uniform` + `SetInstanceShaderParameter`, or duplicate the material.

## Colors look washed out / too bright

Color uniforms without `: source_color` are treated as raw linear data. Add the
hint: `uniform vec4 tint : source_color = vec4(1.0);`. Same for `albedo`-style
inputs.

## Particles are invisible

- `Emitting` is false, or a one-shot already finished (call `Restart()`).
- No **draw pass**: 2D needs a `texture`; 3D needs `draw_pass_1` mesh.
- No `process_material` (a `ParticleProcessMaterial`), so particles spawn with
  zero velocity and stack at the origin.
- `amount` is 0, or `lifetime` is so short they vanish instantly.
- The node is off-screen / behind something / scaled to nothing.

## 2D outline shader doesn't work

A sprite's own fragment shader is clipped to the sprite's pixels — you can't draw
*outside* it. Use a larger quad/`ColorRect` behind it, render to a `SubViewport`
and outline that, or sample neighbors via `SCREEN_UV` in a screen-reading shader.

## Glow/emission has no bloom

`EMISSION` (shader) or `Emission` (StandardMaterial3D) only blooms if a
`WorldEnvironment` exists with `GlowEnabled = true`. Emission alone just adds
flat brightness.

## Shader compiles in editor but errors headless

Some built-ins (`hint_screen_texture`, screen reads) require specific render
features. Run `--import` with `--verbose` to see the exact GSL error and line.
