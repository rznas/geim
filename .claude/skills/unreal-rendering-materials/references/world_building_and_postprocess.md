# Post-Processing & World-Building Tools (UE 5.6/5.7)

Synthesis guide. Grounded in the embedded `references/api/` pages (real
filenames cited). Doc-sourced, **not compile-tested** (no engine installed).

This skill owns the *looks* side of world building — post-process effects and
materials, plus the tools that shape the world's geometry/streaming so it looks
and runs right. (Gameplay-side streaming logic lives in
**unreal-gameplay-cpp**; this is the visual framing.)

---

## Post Process Volumes (the bloom / tonemap / color chain)

A **Post Process Volume (PPV)** carries the screen-space look settings: Bloom,
Auto Exposure, Depth of Field, Color Grading / Filmic Tonemapper, plus the Lumen
overrides (see `lumen_nanite_lighting.md`). A PPV can be **bound** (affects only
inside its bounds, with a Blend Radius / Blend Weight for soft transitions) or
**Unbound** (`Infinite Extent` — affects the whole level). Higher **Priority**
wins where volumes overlap.

Most look-tuning is **built-in PPV settings, not a material** — and the docs are
emphatic about preferring them:

- **Bloom** (`…Post_Process_Effects_Bloom.md`) — HDR glow; an emissive value >1
  (or a bright specular) is what blooms.
- **Auto Exposure / Eye Adaptation** (`…Post_Process_Effects_Auto_Exposure.md`).
- **Color Grading + Filmic Tonemapper** (`…Color_Grading_and_the_Filmic_Tonemapper*.md`)
  — saturation/contrast/gain/gamma/offset, LUTs, HDR display output.
- **Depth of Field** (`…Depth_of_Field*.md`), **Panini Projection**, etc.

> `…Post_Process_Materials.md`: "Whenever possible, such as for color correction
> or adjustments, bloom, depth of field, and various other effects, you should
> use the settings inherent to the Post Process Volume, which have been optimized
> and are more efficient." Reach for a Post Process **Material** only for effects
> the PPV settings can't express.

## Post Process Materials (custom screen effects)

When you need a bespoke full-screen effect (damage vignette, scanlines, thermal,
outline, custom tonemap), use a **Post Process Material**
(`…Post_Process_Effects_Post_Process_Materials.md`):

1. Set the material's **Material Domain = Post Process**
   (`…Materials_Material_Properties.md`).
2. Output your result through **Emissive Color** (the only output a post-process
   material uses).
3. Read the previous pass's color via the **SceneTexture** expression using
   **PostProcessInput0** (using `SceneColor` directly "might not give you the
   right results").
4. Assign it in the PPV's **Blendables** section (Materials and Material
   Instances are the only blendable asset types).

**Blendable Location** controls *when* in the pipeline it runs — the most common
choices:

| Location | Use |
|----------|-----|
| **Before Tonemapping** | HDR scene color in PostProcessInput0; fixes TAA/GBuffer (depth/normal) issues. |
| **After Tonemapping** | LDR, cheapest; PostProcessInput2 = pre-tonemap color, Input3 = post-tonemap. Preferred for performance. |
| **Before Translucency** | Earlier than Before Tonemapping, before translucency is composited. |
| **Replacing the Tonemapper** | You provide the tonemap; Input0 = HDR scene, Input1 = separate translucency, Input2 = low-res bloom. |

**Blendable Priority** orders multiple post-process materials; **Is Blendable =
false** makes each instance render independently (potentially costly). Because
blendables can be **Material Instances**, you can put a parameterized
post-process material on two PPVs with different parameter values and let the
engine soft-blend between them by camera position — i.e. drive a damage-vignette
intensity by swapping/blending instances rather than recompiling.

**Stencil test** (Enable Stencil Test + Custom Depth/Stencil) restricts the
effect to tagged pixels — e.g. outline only the selected actor.

## Decals & light functions (other material domains)

The **Material Domain** also gates these (`…Materials_Material_Properties.md`):
**Deferred Decal** (projected decals — `…Materials_Decals*.md`), **Light
Function** (a material used to modulate a light, e.g. a moving gobo), **Volume**,
**User Interface** (UMG/Slate — see **unreal-ui-umg**), **Virtual Texture**.

## World-building tools (the geometry side of the look)

These shape *what* the renderer draws. This skill points at them for visual
context; setup detail lives in their own embedded pages.

- **Landscape / Outdoor Terrain** (`Building_Virtual_Worlds_Landscape_Outdoor_Terrain_Landscape_Overview.md`)
  — heightmap terrain with sculpt/paint modes and **Landscape Materials**
  (`…Landscape_Materials.md`, layer-blended) painted via weight layers. Nanite can
  be used with Landscape (`…Using_Nanite_with_Landscapes.md`).
- **World Partition** (`Building_Virtual_Worlds_World_Partition.md`) — the UE5
  default for large maps: "automatic data management and distance-based level
  streaming," one persistent level split into grid cells, **One File Per Actor**,
  **Data Layers**, **Level Instancing**, and World-Partition **HLOD**
  (`…World_Partition_-_Hierarchical_Level_of_Detail.md`) for cheap far-distance
  proxies. Replaces the old manual sublevel workflow.
- **Level Streaming** (`Building_Virtual_Worlds_Level_Streaming*.md`) — the
  pre-World-Partition way to load/unload sublevels (volumes, or Blueprint/C++:
  `…Loading_and_Unloading_Levels_using_C++.md`). Still used for hand-authored
  streaming; for the runtime gameplay control of it, hand to **unreal-gameplay-cpp**.
- **PCG (Procedural Content Generation)** (`…Procedural_Content_Generation_Framework_*`)
  — scatter/generate world content procedurally; integrates with World Partition.
- **Water** (`…Water*` / Single Layer Water shading model) and
  **Sky/Atmosphere/Fog/Clouds** (`…Environmental_Light_with_Fog,_Clouds,_Sky_and_*`)
  for environmental looks; these feed Lumen.
- **HLOD** (non-WP) (`Building_Virtual_Worlds_Hierarchical_Level_of_Detail*.md`)
  — merge distant clusters of meshes into proxy meshes.

## Where to look in `references/api/`

- PPV effects: `…Post_Process_Effects.md` + the per-effect pages (Bloom,
  Auto_Exposure, Depth_of_Field, Color_Grading_and_the_Filmic_Tonemapper, Panini)
- Post-process materials: `…Post_Process_Effects_Post_Process_Materials.md`,
  `…_User_Scene_Textures_for_Post_Process_Materials.md`, `…_Blendables.md`
- Material domains/properties: `…Materials_Material_Properties.md`
- Decals: `…Materials_Decals.md`, `…Materials_Decals_Decal_Materials.md`,
  `…Materials_Decals_Mesh_Decals.md`
- Landscape: `Building_Virtual_Worlds_Landscape_Outdoor_Terrain_*`
- World Partition: `Building_Virtual_Worlds_World_Partition*`
- Level Streaming: `Building_Virtual_Worlds_Level_Streaming*`
- PCG: `Building_Virtual_Worlds_Procedural_Content_Generation_Framework_*`
