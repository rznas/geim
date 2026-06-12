# Particles, lighting & post-processing (Godot 4.6)

## Particles: GPUParticles + ParticleProcessMaterial

`GPUParticles2D` / `GPUParticles3D` simulate particles on the GPU. Behavior comes
from a `ParticleProcessMaterial` (configured, **no shader required** for most
effects); appearance comes from a draw pass (a texture/mesh).

Minimum viable setup (in a `.tscn` or in code):
- A `GPUParticles2D` node.
- `process_material` = a `ParticleProcessMaterial`.
- `texture` (2D) or `draw_pass_1` mesh (3D) for what each particle looks like.
- `amount` (particle count), `lifetime`, `one_shot`, `explosiveness`.

Key `ParticleProcessMaterial` properties:
- **Emission shape**: point / sphere / box — where particles spawn.
- **Direction + Spread**, **Initial Velocity** min/max — how they fly out.
- **Gravity** — `Vector3(0, 98, 0)` for falling sparks in 2D.
- **Scale / Color over lifetime** (curves & gradients) — fade and shrink.
- **Damping**, **Angular Velocity**, **Turbulence**.

### C# control

```csharp
var p = GetNode<GpuParticles2D>("Sparks");   // note: C# type is GpuParticles2D
p.Emitting = true;                           // start/stop a looping system
p.Restart();                                 // replay a one-shot burst (e.g. on hit)
```

For a one-shot explosion: set `one_shot = true`, `explosiveness = 1.0`, then call
`Restart()` each time you want the burst. Free the node (or let it auto-finish)
after; connect the `Finished` signal to `QueueFree` for fire-and-forget VFX.

### When to write a `particles` shader

Only for behavior the process material can't express (custom spawn logic, data
textures, attractors driven by game state). Override `start()` (per particle at
spawn) and `process()` (per particle per frame); write `TRANSFORM`, `VELOCITY`,
`COLOR`. Most VFX never need this.

## Lighting (2D and 3D)

- **2D**: `PointLight2D` / `DirectionalLight2D` + `LightOccluder2D` for shadows.
  Sprites need a normal map for lit relief; otherwise lights just tint.
- **3D**: `DirectionalLight3D` (sun), `OmniLight3D`, `SpotLight3D`. Global
  illumination via `LightmapGI` (baked) or `VoxelGI`/`SDFGI` (realtime).

## Post-processing via WorldEnvironment

Add a `WorldEnvironment` node with an `Environment` resource. It drives, all
settable from C# on `worldEnv.Environment`:
- **Glow / bloom** — `GlowEnabled = true`; pairs with `EMISSION` in shaders /
  `Emission` on materials.
- **Tonemap** — `TonemapMode` (Filmic/ACES) + exposure/white.
- **Ambient light**, **SSAO**, **SSR**, **Adjustments** (brightness/contrast/
  saturation, color-correction LUT), **Fog** / volumetric fog.

```csharp
var env = GetNode<WorldEnvironment>("WorldEnvironment").Environment;
env.GlowEnabled = true;
env.AdjustmentEnabled = true;
env.AdjustmentSaturation = 1.2f;
```

## Custom full-screen post effect

Put a `canvas_item` shader on a full-screen `ColorRect` (anchored full-rect, high
layer), reading the framebuffer via a `hint_screen_texture` uniform. Or render
the world into a `SubViewport` and shade its texture. Used for vignettes, CRT,
chromatic aberration, screen-space distortion. See the godot-docs
`shaders/custom_postprocessing.rst` for the screen-texture pattern.
