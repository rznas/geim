# Lumen, Nanite & Lighting (UE 5.6/5.7)

Synthesis guide. Grounded in the embedded `references/api/` pages (real
filenames cited). Doc-sourced, **not compile-tested** (no engine installed).

These are the UE5 *defaults* and they change how you think about looks: dynamic
GI/reflections (Lumen) and virtualized geometry (Nanite) replace the UE4 mental
model of bake-the-lighting + author-LODs.

---

## Lumen — dynamic global illumination & reflections

From `Building_Virtual_Worlds_Lighting_the_Environment_Global_Illumination_Lumen_Global_Illumination_and_Reflections.md`:

- Lumen is UE5's "fully dynamic global illumination and reflections system… the
  **default** GI and reflections system." Infinite diffuse bounces + indirect
  specular, millimeter-to-kilometer scale.
- **New projects have it on by default** (plus its dependency, Generate Mesh
  Distance Fields). UE4→UE5 conversions do **not** auto-enable it.
- Set independently in **Project Settings → Rendering**: *Dynamic Global
  Illumination Method = Lumen* and *Reflection Method = Lumen*. Enabling Lumen GI
  toggles **Generate Mesh Distance Fields** (needed for Software Ray Tracing) and
  **requires an engine restart**.
- **When Lumen is on, precomputed static lighting is disabled and all lightmaps
  are hidden.** This is the big behavioral switch — see "Lumen vs Lightmass".
- GI solves diffuse indirect (color bleed + indirect shadowing). Sky lighting is
  solved in Lumen's **Final Gather**. Reflections cover the full roughness range,
  Clear Coat, glossy-on-translucency, and Single Layer Water (forced mirror).
- **Emissive materials propagate light through Final Gather with no extra cost**,
  but tiny/bright emissive areas cause noise — for crisp light, place an actual
  light. (This is the material↔lighting bridge: an emissive value >1 lights the
  scene under Lumen.)

### Light types & mobility (the part that bites)

`…Light_Types_and_Their_Mobility.md`: Directional, Sky, Point, Spot, Rect.
Mobility = Static / Stationary / Movable.

- Lumen supports **all** light types and Light Functions on all of them.
- **Static-mobility lights are NOT supported by Lumen** — "Static Lights are
  stored completely in lightmaps and their contribution is disabled when Lumen is
  enabled." So a Static light + Lumen = a light that does nothing. Use **Movable**
  (or Stationary) with Lumen.

### Key Lumen knobs

- **Project Settings** hold defaults: Use Hardware Ray Tracing when available
  (HWRT has high scene-update cost past ~100k instances; falls back to Software
  RT), Software Ray Tracing Mode (Detail = per-mesh distance fields, highest
  quality; Global = lower-detail global distance field, fastest).
- **Post Process Volume** holds artist overrides: Final Gather Quality, Lumen
  Scene Detail / View Distance, Reflection Quality, **Max Reflection Bounces**
  (default 1; up to 8 via PPV, up to 64 via `r.Lumen.Reflections.MaxBounces` with
  HWRT hit lighting), **Skylight Leaking** / **Diffuse Color Boost** (non-physical
  art-direction knobs to keep interiors from going black / brighten bounce).
- **Lumen lighting is cached** — local changes propagate fast, but a global
  change (e.g. switching off the sun) can take seconds; the *Update Speed* PPV
  controls trade latency for GPU.

## Lumen vs the legacy Lightmass path

Lightmass is the UE4-era **precomputed/baked** GI (`…Global_Illumination_Lightmass_Basics.md`,
CPU + GPU Lightmass pages). It bakes static lighting into lightmaps for Static
geometry + Static/Stationary lights, then you "Build Lighting." It is cheaper at
runtime and still valid for low-end / mobile targets, but it cannot react to
moving lights or geometry. Lumen is the dynamic replacement and the default.

You generally pick **one** model:
- **Lumen** (default, dynamic): movable lights, real-time GI, no bake step;
  lightmaps hidden. Diffuse materials & emissives drive bounce live.
- **Lightmass** (baked): static scenes, lowest runtime cost; you must Build
  Lighting and use Static/Stationary lights. To fully return to it, disable Lumen
  and (optionally) keep **Allow Static Lighting** on.

You *can* run **Lumen Reflections with baked static lighting** (reflections-only
Lumen) — requires Lumen Hardware Ray Tracing mode.

## Nanite — virtualized geometry

From `Designing_Visuals,_Rendering,_and_Graphics_Optimizing_and_Debugging_Projects_for_Nanite_Virtualized_Geometry.md`:

- Nanite renders "pixel scale detail and high object counts," doing work only on
  perceivable detail. Data is highly compressed and **finely streamed with
  automatic LOD**.
- **A Nanite mesh is just a Static Mesh with Nanite enabled** — a flag. Authoring
  is the same; Nanite simply handles orders of magnitude more triangles/instances.
- "Frame budgets are no longer constrained by polycounts, draw calls, and mesh
  memory usage." **LOD is automatic — no manual LOD setup.** You can import
  film-quality source (ZBrush sculpts, photogrammetry) and use high-poly detail
  instead of baking it into normal maps.
- Enable on import (check **Build Nanite**), per-mesh in the Static Mesh editor,
  or batched in the Content Browser.
- **Materials & Nanite:** materials are assigned to mesh sections, can use
  different shading models and dynamic effects, and can be **swapped dynamically
  like any Static Mesh** — so MIDs (see `materials_and_instances.md`) work on
  Nanite meshes. There is also a **Nanite Override Material** property on a
  material (`…Materials_Material_Properties.md`) used when rendering with Nanite.
- "Nanite should generally be enabled wherever possible." Exceptions (large
  on-screen, single instance, non-occluding — e.g. a sky sphere) gain little, but
  the loss from enabling anyway is minimal.
- **World Position Offset + Nanite:** WPO clamping (`Max World Position Offset
  Displacement`, `…Material_Properties.md`) matters more on Nanite because meshes
  are split into independently-culled clusters; clamp WPO to avoid culling/popping
  artifacts. The **Out of Bounds Pixels** show flag visualizes clamped pixels.
- Requires fast streaming — **SSD recommended** for runtime storage. Virtual
  Textures are recommended (not required) alongside it.

## How this lands on materials

- **Roughness** drives reflection sharpness AND Lumen reflection cost
  (`Max Roughness To Trace`). **Metallic / Specular / Base Color** feed both
  direct shading and Lumen's diffuse bounce.
- **Emissive > 1** becomes a real light source under Lumen at no extra cost
  (bright/tiny = noisy → place a light instead).
- **Material Ambient Occlusion** works with Lumen GI when **Allow Static
  Lighting** is disabled (frees GBuffer space). Bent Normal Maps work too but cost
  much more for little gain.

## Where to look in `references/api/`

- Lumen GI/reflections: `…Lumen_Global_Illumination_and_Reflections.md`
- Lumen perf/technical: `…Lumen…_Lumen_Performance_Guide.md`, `…_Lumen_Technical_Details.md`
- Nanite: `…Optimizing_and_Debugging_Projects_for_Nanite_Virtualized_Geometry.md`,
  `Building_Virtual_Worlds_Landscape_Outdoor_Terrain_Using_Nanite_with_Landscapes.md`
- Light types/mobility: `…Light_Types_and_Their_Mobility*.md`, incl. MegaLights
- Lightmass (legacy bake): `…Global_Illumination_Lightmass_Basics.md`,
  `…CPU_Lightmass_Global_Illumination.md`, `…GPU_Lightmass_Global_Illumination.md`
- Sky/fog/clouds/atmosphere: `…Environmental_Light_with_Fog,_Clouds,_Sky_and_*`
