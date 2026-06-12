---
name: godot-graphics-shaders
description: >
  Write shaders, materials, particles, and visual effects for a Godot 4.6 C#
  game. Use this whenever you are writing a .gdshader (canvas_item/spatial/
  particles/sky/fog), creating or tweaking a ShaderMaterial or StandardMaterial3D,
  building particle effects (GPUParticles2D/3D + ParticleProcessMaterial), adding
  post-processing, lights, glow/bloom, or driving shader uniforms from C# at
  runtime. Reach for it any time the task is about how things *look* on screen —
  "make it glow", "add a dissolve effect", "screen shake won't cut it, I need a
  shader", "spawn sparks", "tint the sprite", "outline the enemy". It has the
  verified Godot Shading Language built-ins, the shader_type/render_mode model,
  and the exact C# call to set uniforms. Covers Graphics Engineer, VFX Artist,
  and Technical Artist work. Assumes a buildable project (godot-project-setup).
---

# Godot Graphics & Shaders

The visual layer: shaders (custom per-pixel/per-vertex programs), materials
(what carries a shader onto an object), particles, and lighting/post effects.
Shaders are written in **Godot Shading Language** (`.gdshader`) — a GLSL dialect,
**not** C#. Your C# touches them only to swap materials and push uniform values.

## The model in one paragraph

A **shader** (`.gdshader`) declares a `shader_type` and overrides processor
functions. A **ShaderMaterial** wraps a shader and holds its uniform values. A
material attaches to a node's `material` slot (every `CanvasItem` and visual 3D
node has one). At runtime your C# sets uniforms via the material. Get the
`shader_type` wrong for the node (canvas_item on a 3D mesh, or vice versa) and
nothing draws right.

## Shader types — pick by what you're drawing

| `shader_type` | For | Key built-ins |
|---------------|-----|----------------|
| `canvas_item` | all 2D (Sprite2D, Control, TileMapLayer) | `COLOR`, `UV`, `TEXTURE`, `VERTEX`(vec2), `TIME` |
| `spatial` | all 3D meshes | `ALBEDO`, `ROUGHNESS`, `METALLIC`, `EMISSION`, `NORMAL`, `UV`, `VERTEX`(vec3) |
| `particles` | GPUParticles process | `start()`/`process()`, `TRANSFORM`, `VELOCITY`, `COLOR` |
| `sky` | Sky resource | `sky()`, `EYEDIR` |
| `fog` | FogVolume | `fog()` |

Processor functions: `vertex()` (per vertex, moves geometry), `fragment()` (per
pixel, sets color/material params), `light()` (per pixel per light — advanced).
Godot dead-strips outputs you never write, so unused features cost nothing.

Verified shader patterns (fragment, vertex, uniforms, texture sampling, TIME
animation) are in `references/shading_language.md`. The form is exact Godot 4.6
GSL — `COLOR = texture(TEXTURE, UV);`, `uniform float blue = 1.0;`, etc.

## Driving shaders from C#

The one C# binding you need (verified):

```csharp
((ShaderMaterial)sprite.Material).SetShaderParameter("blue", 1.0f);
float v = ((ShaderMaterial)sprite.Material).GetShaderParameter("blue").AsSingle();
```

The uniform name is a string and must match the shader exactly (case included).
This is how gameplay drives visuals — flash-on-hit, dissolve progress, charge
glow. Full patterns in `references/materials_and_csharp.md`, including swapping
materials, `StandardMaterial3D` from C#, and per-instance shader params via
`MeshInstance.SetInstanceShaderParameter`.

## Materials without writing a shader

For most 3D surfaces you don't need a custom shader — `StandardMaterial3D`
(PBR: albedo/metallic/roughness/normal/emission) covers it, all settable from
C#. For 2D, `CanvasItemMaterial` handles blend modes and light. Reach for a
ShaderMaterial only when the built-in material can't express the effect.

## Particles & VFX

`GPUParticles2D/3D` + a `ParticleProcessMaterial` (configured, no shader needed)
covers most effects: sparks, smoke, trails, explosions. For bespoke behavior,
write a `particles` shader. The setup, key ParticleProcessMaterial properties
(emission shape, velocity, gravity, scale/color curves), one-shot vs looping,
and the C# `Emitting`/`Restart()` controls are in `references/particles_vfx.md`.

## Lighting & post-processing

Glow/bloom, tonemap, ambient, fog, and color-correction live on the
`WorldEnvironment` node's `Environment` resource — mostly configuration, all
reachable from C#. Custom post-processing is a `canvas_item` shader on a
full-screen `ColorRect`/`SubViewport`. Pointers in `references/particles_vfx.md`.

## Verifying

Shaders are text — author them directly. A malformed shader errors loudly on
import/run, so pair edits with the project-setup `build_and_check.sh` (catches
shader parse errors during `--import`). For "does the uniform actually move the
visual", drive it from a headless test and screenshot, or hand to
`godot-qa-headless`. C# material code compiles like any gameplay code.

## Troubleshooting

`references/troubleshooting.md`: object draws solid white/magenta (wrong
shader_type or material not assigned), uniform does nothing (name mismatch /
wrong material cast), particles invisible (Emitting false / no draw pass /
material missing), 2D shader can't make outlines (fragment is clipped to the
sprite — use a bigger quad or screen-reading shader).
