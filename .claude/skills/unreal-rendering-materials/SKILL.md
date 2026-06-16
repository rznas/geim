---
name: unreal-rendering-materials
description: >
  Author and control the look of an Unreal Engine 5.6/5.7 C++ game — the
  Material system, Lumen, Nanite, lighting, and post-processing. Use this
  whenever you are creating or reasoning about a Material (the node graph, PBR
  inputs Base Color / Metallic / Roughness / Specular / Normal / Emissive /
  Opacity, Material Domain, Blend Mode, Shading Model), making variants with a
  Material Instance Constant, or — the big one — changing a material's look at
  RUNTIME from C++ by creating a Dynamic Material Instance
  (UMaterialInstanceDynamic via CreateDynamicMaterialInstance) and calling
  SetScalarParameterValue / SetVectorParameterValue / SetTextureParameterValue
  on it. Also covers Lumen (dynamic global illumination + reflections, the UE5
  default), Nanite (virtualized geometry / automatic LODs), light types &
  mobility, the legacy Lightmass bake path, Post Process Volumes (bloom,
  tonemapping, color grading, depth of field) and custom Post Process Materials,
  decals/light-function material domains, and the world-building tools that
  shape the look (Landscape, World Partition, Level Streaming, PCG, Water,
  Sky/Atmosphere/Fog). Reach for it any time the task is "make it glow", "tint /
  flash this material on hit", "change the color/emissive/roughness at runtime",
  "animate a material parameter", "my SetScalarParameterValue does nothing", "the
  mesh shows the checker/world-grid material", "why is the Opacity pin greyed
  out", "make this glass/translucent", "add a damage vignette / screen effect",
  "bloom isn't showing", "set up Lumen / dynamic GI", "enable Nanite", "my Static
  light stopped working", "bake the lighting", "paint a landscape material", or
  "add a post-process outline". It has the doc-sourced Material vs Material
  Instance Constant vs Dynamic Material Instance model, the C++ DMI idiom, the
  PBR inputs, and the Lumen/Nanite framing. Covers Graphics Engineer, Technical
  Artist, and VFX Artist work. C++-primary (Blueprint path noted where the docs
  show it). Assumes a buildable project (unreal-project-setup).
---

# Unreal Rendering & Materials (UE 5.6/5.7)

The look layer: **Materials** (node-graph shaders that define a surface),
**Material Instances** (cheap variants), **Lumen** (dynamic global illumination +
reflections), **Nanite** (virtualized geometry), **lighting**, and
**post-processing**. This suite is **C++-primary**; Materials themselves are
authored as node graphs in the Material Editor — your C++ touches them to make
variants and push parameter values at runtime.

> Snippets are doc-sourced from the embedded UE 5.6/5.7 documentation
> (`references/api/`), **not compile-tested** in this environment (no engine
> installed). The Material/MaterialInstance class hierarchy and the PBR/Lumen/
> Nanite behavior are quoted from those pages; the exact C++ method signatures
> (`CreateDynamicMaterialInstance`, `SetScalarParameterValue`) follow the
> standard UE C++ API while the docs show the Blueprint path. Grep
> `references/api/` before extending an API call.

## The model in one paragraph

A **`UMaterial`** is an asset authored as a node graph — it computes shading
attributes and sets Blend Mode / Shading Model / Material Domain. A
**`UMaterialInstanceConstant` (MIC)** reuses that graph but overrides
**parameters** without recompiling — edited in the editor, fixed at runtime. A
**`UMaterialInstanceDynamic` (MID)** is the *only* one you can change while the
game runs. All three are `UMaterialInterface`. A mesh component points at one
material per **element (slot)**. To change a look at runtime you make a MID and
set **named** parameters on it. (Class table: `references/api/Designing_Visuals,
_Rendering,_and_Graphics_Graphics_Programming_Graphics_Programming_Overview.md`.)

## The one thing that trips everyone up

**You do NOT edit a Material's parameters at runtime. You create a Dynamic
Material Instance and set ITS parameters — and only parameters that were promoted
to NAMED Material Parameters in the graph can be touched.**

Two things must both be true:

1. **It must be a MID.** A `UMaterial` change recompiles and affects *everything*
   using it (not a runtime op). A `UMaterialInstanceConstant` is "only calculated
   prior to runtime… cannot change during gameplay"
   (`…Materials_Instanced_Materials.md`). The runtime-mutable type is
   `UMaterialInstanceDynamic` — "can be calculated during gameplay (at runtime)…
   you can use script… to change the parameters."
2. **The value must be a named parameter.** "To make Material attributes editable
   within an instance, you must designate them as parameters in the parent
   Material" (`…Instanced_Materials.md`). A value wired as a plain `Constant` is
   baked in. Promote it (right-click → **Convert to Parameter**, or place a
   **ScalarParameter**/**VectorParameter** node) and **name it**. That name is the
   exact string you pass to `SetScalarParameterValue`. Wrong name → silently
   ignored, nothing changes.

The Blueprint path the docs show is a **Create Dynamic Material Instance** node →
**Set Material** node (`…Instanced_Materials.md`). The C++ equivalent below.

| You want | Use | When |
|----------|-----|------|
| One shared look, edit-time variants (car colors, prop tints) | **Material Instance Constant** | Fixed during play; no recompile |
| Change a look **at runtime** (damage, hit flash, charge glow, paint) | **Dynamic Material Instance** | Per-actor, set named params each frame |
| Edit the actual surface logic / add nodes | **the base Material** | Authoring only — recompiles, affects all users |

## The C++ DMI idiom — verified shape

`UPrimitiveComponent::CreateDynamicMaterialInstance(ElementIndex)` makes the MID
**and** assigns it back to the component in one call, so changes affect this
actor only — the base asset is untouched:

```cpp
#include "Components/StaticMeshComponent.h"
#include "Materials/MaterialInstanceDynamic.h"

void AMyActor::BeginPlay()
{
    Super::BeginPlay();

    // Clone element 0's material into a per-instance MID (and set it on the mesh).
    DynamicMaterial = MeshComponent->CreateDynamicMaterialInstance(0);
    if (DynamicMaterial)
    {
        DynamicMaterial->SetScalarParameterValue(TEXT("EmissiveStrength"), 5.0f);
        DynamicMaterial->SetVectorParameterValue(TEXT("Tint"), FLinearColor::Red);
        // DynamicMaterial->SetTextureParameterValue(TEXT("Detail"), SomeTexture);
    }
}
```

Hold the MID in a `UPROPERTY()` (`TObjectPtr<UMaterialInstanceDynamic>`) so it
isn't garbage-collected, **create it once** (BeginPlay), and reuse it every frame
— never call `CreateDynamicMaterialInstance` in Tick. The lower-level form is
`UMaterialInstanceDynamic::Create(BaseMaterial, Outer)` + `SetMaterial(slot,
MID)`. Static-switch params **cannot** be set on a MID at all (they're
compile-time) — branch with a Scalar/`If` instead.

**Don't hand-type the boilerplate — run
`scripts/new_dynamic_material_user.sh <ClassName> [out_dir] [API_MACRO]`** to
scaffold an `AActor` (.h/.cpp) that creates the MID in `BeginPlay` and animates a
scalar parameter in `Tick`. Full decision table, parameter types, parameter
collections, layered materials: **`references/materials_and_instances.md`**.

## PBR inputs (the Main Material Node)

`…Materials_Material_Inputs.md` / `…Materials_Physically_Based_Materials.md` —
all designed for 0–1 values:

- **Base Color** — surface diffuse color (RGB).
- **Metallic** — 0 = nonmetal, 1 = metal (mostly either/or).
- **Roughness** — 0 = mirror, 1 = matte. Drives reflection sharpness *and* Lumen
  reflection cost.
- **Specular** — reflectivity, default 0.5 (~4%); rarely changed.
- **Normal** — tangent-space normal map for surface detail.
- **Emissive Color** — glow; **values > 1 are HDR** and bloom / light the scene
  under Lumen.
- **Opacity / Opacity Mask** — gated by Blend Mode (Translucent / Masked).

Which inputs are even enabled is controlled by **Material Domain + Blend Mode +
Shading Model** (`…Materials_Material_Inputs.md`). Greyed-out pin = wrong trio.

- **Material Domain**: Surface (default), Deferred Decal, Light Function, Volume,
  Post Process, User Interface, Virtual Texture.
- **Blend Mode**: Opaque, Masked, Translucent, Additive, Modulate, AlphaComposite,
  AlphaHoldout. Translucent/Additive/Modulate are **NOT compatible with dynamic
  lighting** and don't show specular reflections (`…Material_Blend_Modes.md`).
- **Shading Model**: Unlit, Default Lit, Subsurface, Clear Coat, Hair, Cloth, Eye,
  Single Layer Water, Thin Translucent, … (`…Materials_Material_Properties.md`).

## Lumen + Nanite — the UE5 defaults that reframe lighting & LODs

- **Lumen** is "the **default** global illumination and reflections system" —
  fully dynamic, infinite diffuse bounces, dynamic reflections. New projects ship
  with it on. **When it's on, precomputed static lighting is disabled and
  lightmaps are hidden**, and **Static-mobility lights stop contributing** — use
  **Movable** lights. Emissive materials >1 light the scene through Final Gather.
  (`…Lumen_Global_Illumination_and_Reflections.md`.)
- **Nanite** is virtualized geometry — "a Nanite mesh is a Static Mesh with Nanite
  enabled," with **automatic LOD** (no manual LOD setup) and fine-grained
  streaming. Enable it wherever possible. Materials still assign per-section and
  **swap dynamically (MIDs work on Nanite)**; mind **Max World Position Offset
  Displacement** to avoid cluster-culling pops.
  (`…Optimizing_and_Debugging_Projects_for_Nanite_Virtualized_Geometry.md`.)
- **Lightmass** is the legacy *baked* GI path (Static/Stationary lights + Build
  Lighting). Still valid for low-end/mobile or fully static scenes — but you pick
  *one* model. Full treatment, light types/mobility, and the Lumen knobs:
  **`references/lumen_nanite_lighting.md`**.

## Post-processing — bloom, tonemap, custom screen effects

A **Post Process Volume (PPV)** carries bloom, auto-exposure, color grading /
filmic tonemapper, depth of field, and the Lumen overrides. **Prefer built-in PPV
settings** — the docs say so explicitly for bloom/DoF/color
(`…Post_Process_Effects_Post_Process_Materials.md`). **Bloom needs HDR**: an
emissive (or specular) value > 1 plus a PPV with Bloom.

For bespoke full-screen effects (damage vignette, outline, scanlines), write a
**Post Process Material**: Material **Domain = Post Process**, output through
**Emissive Color**, read the prior pass via **SceneTexture → PostProcessInput0**,
pick a **Blendable Location**, and assign it in the PPV's **Blendables** array.
Because blendables can be **Material Instances**, you can blend an effect's
intensity by camera position. Recipes + the Blendable Location table:
**`references/world_building_and_postprocess.md`**.

## World-building tools (the geometry behind the look)

This skill points at the visual framing of: **Landscape** (terrain + layer-blended
Landscape Materials), **World Partition** (the UE5 default large-world streaming —
grid cells, One File Per Actor, Data Layers, HLOD), **Level Streaming** (manual
sublevel load/unload, incl. the C++ page), **PCG**, **Water**, and
**Sky/Atmosphere/Fog**. Setup detail and pointers:
**`references/world_building_and_postprocess.md`**. For the *gameplay-side* control
of streaming, hand to **unreal-gameplay-cpp**.

## Verifying

Materials are authored in the editor (node graphs aren't text you hand-write), and
material C++ compiles like any gameplay code. There is **no Unreal Engine in this
environment**, so build/cook/run verification goes through `scripts/unreal.sh`
(exits 127 with install guidance until `$UE_ROOT` points at a UE 5.7 install). To
prove "the parameter actually moves the visual," drive it from a build and capture
a frame — hand that to **unreal-build-deploy-multiplayer** (automation tests /
headless run).

## Troubleshooting

`references/troubleshooting.md`: `SetScalarParameterValue` does nothing (wrong
object — not a MID / not a named parameter / name mismatch / MID GC'd), mesh shows
the checker/world-grid material (missing **Used with …** usage flag), greyed-out
input pin (wrong Domain/Blend/Shading trio), translucent object has no reflections,
emissive doesn't glow (no HDR / no Bloom PPV), Static light does nothing under
Lumen, lightmaps vanished (Lumen disables static lighting), Nanite WPO popping,
post-process material draws garbage, too many shader permutations (static params).

## What this covers / hands off to

**Covers:** Graphics Engineer (materials, Lumen, Nanite, post-processing, lighting
pipeline), Technical Artist (material instances, parameter setups, look pipelines,
landscape materials), VFX Artist (emissive/translucent looks, post-process screen
effects). Built on **unreal-project-setup** (the buildable project); drives looks
from gameplay logic written with **unreal-gameplay-cpp**.

**Hands off to:** **unreal-niagara-vfx** (particle systems — Niagara owns the VFX
emitters; this skill owns the materials they render with), **unreal-animation**
(skeletal-mesh materials / morph targets), **unreal-ui-umg** (UI-domain materials,
HUD visuals), **unreal-build-deploy-multiplayer** (packaging + running a build to
verify an effect on screen), **unreal-blueprints** (exposing material params to
designers, BP material nodes). For physics-driven looks (a hit that triggers a
flash), pair with **unreal-physics-and-ai**.
