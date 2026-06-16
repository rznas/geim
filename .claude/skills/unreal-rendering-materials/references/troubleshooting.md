# Rendering & Materials Troubleshooting (UE 5.6/5.7)

Symptom → cause → fix. Grounded in the embedded `references/api/` pages.
Doc-sourced, **not compile-tested** (no engine installed). `…Materials_…` =
`Designing_Visuals,_Rendering,_and_Graphics_Materials_…`.

---

### My runtime `SetScalarParameterValue` / `SetVectorParameterValue` does nothing

Most common UE material bug. Check, in order:

1. **You're calling it on the wrong object.** Setting a value on the base
   `UMaterial` or a `UMaterialInstanceConstant` does nothing at runtime — a MIC
   is "only calculated prior to runtime" (`…Instanced_Materials.md`). You must
   create a **`UMaterialInstanceDynamic`** with
   `CreateDynamicMaterialInstance(...)` and set the parameter on *that*. See
   `materials_and_instances.md`.
2. **The value isn't a named parameter.** A value wired as a plain `Constant`
   expression is baked at compile time. Right-click it → **Convert to Parameter**
   and give it a name (`…Creating_and_Using_Material_Instances.md`).
3. **The name string doesn't match.** `SetScalarParameterValue(TEXT("Glow"), …)`
   silently no-ops if the graph's parameter is named `EmissiveStrength`. Names
   are case-sensitive; copy them exactly from the Details panel.
4. **The MID got garbage-collected / you remade it every frame.** Store the MID
   in a `UPROPERTY()` member and create it once (BeginPlay), reuse in Tick.
5. **Static parameters can't be set at runtime at all** — StaticSwitch /
   StaticComponentMask are compile-time; a MID "cannot provide static switch
   parameters" (`…Graphics_Programming_Overview.md`). Use a runtime branch (e.g.
   `If`/lerp driven by a Scalar) instead.

### The mesh renders with the default checker / world-grid material

Usually a **missing Usage flag** (`…Materials_Material_Properties.md`, Usage
section): "If you do not have the appropriate usage flag set, the default world
grid material will be used in-game instead." If a material goes on a Skeletal
Mesh / particles / instanced static meshes / landscape / UI, the matching
**Used with …** flag must be set (Auto-Set Usage in Editor handles placed
actors, but spawn-at-runtime cases may need it set + saved manually).

### An input pin (Opacity / Subsurface Color / Clear Coat) is greyed out

The pin is gated by the trio **Blend Mode + Shading Model + Material Domain**
(`…Materials_Material_Inputs.md`). Examples:
- **Opacity** needs **Blend Mode = Translucent** (or Additive/Modulated).
- **Opacity Mask** needs **Blend Mode = Masked**.
- **Subsurface Color** needs **Shading Model = Subsurface**.
- **Clear Coat / Clear Coat Roughness** need **Shading Model = Clear Coat**.
- A post-process material's only useful output is **Emissive** (Domain = Post Process).

### Transparent object shows no reflections / looks flat

Translucent and Additive blend modes "do not currently support specularity… you
will see no reflections" (`…Material_Blend_Modes.md`). Options: fake it with a
Cubemap added on top of Base Color, switch translucency **Lighting Mode** to
**Surface Forward Shading** (supports specular from local lights, but it's the
most expensive), or use **Thin Translucent** / **Single Layer Water** shading
models for physically-based glass/water.

### Masked material edges pop / look wrong; clip value won't animate

Tune **Opacity Mask Clip Value** (pixels above it draw, below are discarded —
`…Material_Blend_Modes.md`). Note: "the Opacity Mask Clip Value property is not
designed to be changed at runtime." For runtime soft fades use a Translucent
material with an animated Opacity scalar, or `Pixel Depth Offset` +
DitherTemporalAA.

### My emissive material doesn't glow / doesn't light the scene

- **No bloom:** Bloom is a **Post Process Volume** setting and needs HDR values —
  the Emissive output must exceed 1 (`…Materials_Material_Inputs.md`: "Values
  greater than 1 are allowed as HDR lighting is supported"). Multiply your
  emissive color by a scalar > 1. Ensure a PPV with Bloom is present.
- **Doesn't bounce light:** under Lumen, emissive materials light the scene via
  Final Gather — but "tiny/bright emissive areas cause noise"
  (`…Lumen_Global_Illumination_and_Reflections.md`). For crisp local light, place
  an actual light instead.

### My (Static) light does nothing now that the scene uses Lumen

Lumen ignores **Static-mobility** lights — "their contribution is disabled when
Lumen is enabled" (`…Lumen_Global_Illumination_and_Reflections.md`). Set the
light's Mobility to **Movable** (or Stationary). Conversely, if you *want* baked
lighting, you're on the Lightmass path: keep Static lights and disable Lumen.

### Lighting changed/reverted unexpectedly / lightmaps disappeared

Enabling Lumen **disables precomputed static lighting and hides all lightmaps**
(`…Lumen_Global_Illumination_and_Reflections.md`). And converting a UE4 project
does **not** auto-enable Lumen. Decide on one model: Lumen (dynamic, default) or
Lightmass (baked). See `lumen_nanite_lighting.md`.

### A global GI change (turning off the sun) takes seconds to update

Lumen caches lighting; "global lighting changes… can take multiple seconds to
propagate." Raise **Lumen Scene / Final Gather Lighting Update Speed** in the PPV
(costs GPU) if you need faster response.

### Nanite mesh: WPO animation pops / gets culled at the edges

Nanite splits a mesh into independently-culled clusters, so World Position Offset
that pushes vertices past the bounds causes popping
(`…Materials_Material_Properties.md`, WPO section). Set **Max World Position
Offset Displacement** > 0 to extend the bounds and clamp the offset; use the
**Out of Bounds Pixels** show flag to inspect clamped pixels.

### A post-process material draws garbage / wrong colors

- Domain must be **Post Process**, output through **Emissive Color**
  (`…Post_Process_Effects_Post_Process_Materials.md`).
- Read the prior pass via **SceneTexture → PostProcessInput0**, not `SceneColor`.
- Pick the right **Blendable Location** (Before vs After Tonemapping changes which
  inputs carry the scene color). Assign it in the PPV **Blendables** array.
- Prefer built-in PPV settings for bloom/DoF/color — they're cheaper.

### Too many shaders compiling / long material compiles

Each used combination of **Static** parameters in a parent compiles a separate
shader (`…Instanced_Materials.md`): "Try to minimize the number of static
parameters… and the number of permutations… actually used." Prefer runtime
Scalar/Vector params (cheap, no permutation) over StaticSwitch where you don't
truly need to dead-strip a branch.

### Where to look in `references/api/`

- Material Analyzer (find expensive materials): `…Materials_Material_Analyzer.md`
- Nanite debugging: `…Optimizing_and_Debugging_Projects_for_Nanite_Virtualized_Geometry.md`
- Lumen performance: `…Lumen…_Lumen_Performance_Guide.md`
- Forward-shading caveats: `…Optimizing_and_Debugging_Projects_for_Forward_Shading_Renderer.md`
