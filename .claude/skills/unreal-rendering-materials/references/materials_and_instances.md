# Materials & Material Instances (UE 5.6/5.7)

Synthesis guide. Claims are grounded in the embedded pages under
`references/api/` (each cited by its real filename). Doc-sourced, **not
compile-tested** — no Unreal Engine is installed in this environment.

The single most-cited file here is the long Materials path prefix
`Designing_Visuals,_Rendering,_and_Graphics_Materials_…`. It is abbreviated
below as **`…Materials_…`**.

---

## The hierarchy (authoritative class names)

From `…Graphics_Programming_Graphics_Programming_Overview.md` (a real C++ class
table — this is the source of truth for the type names):

| Class | What it is |
|-------|------------|
| `UMaterialInterface` | abstract game-thread interface; everything material-shaped derives from it. A function that takes "any material" takes `UMaterialInterface*`. |
| `UMaterial` | the **Material asset** — authored as a node graph, computes shading attributes, sets blend mode/shading model. |
| `UMaterialInstance` | abstract; an instance that reuses the parent's graph but supplies different parameter values (scalars, vectors, textures, static switches). Its parent may be a `UMaterial` **or another** `UMaterialInstance`, forming a chain that eventually resolves to a `UMaterial`. |
| `UMaterialInstanceConstant` (MIC) | "may only be modified in the editor." Provides scalar/vector/texture/static-switch params. The asset you make in the Content Browser (`MI_` prefix). |
| `UMaterialInstanceDynamic` (MID) | "may be modified at runtime." Provides scalar/vector/**texture** params. **Cannot** provide static-switch params, and **cannot** be the parent of another `UMaterialInstance`. |

Naming convention (`…Materials_Instanced_Materials.md`): `M_` prefix for a parent
Material (`M_Chair`), `MI_` for an instance (`MI_Chair_Red`).

## Why instances exist

`…Materials_Instanced_Materials.md`: a plain Material "cannot be changed without
recompiling (something that must happen prior to gameplay)." A **parameterized**
Material can be edited in an instance **without recompilation** — that is the
whole point. Editing the base Material recompiles it and affects every object
using it; instancing gives you per-variant (MIC) and per-runtime (MID) changes
cheaply.

## Parameterizing the parent (you must do this first)

"To make Material attributes editable within an instance, you must designate
them as parameters in the parent Material" (`…Instanced_Materials.md`). A plain
`Constant` is fixed; the parameterized version is a **ScalarParameter**. Key
parameter types:

- **ScalarParameter** — single float (Roughness, Metallic, emissive strength).
- **VectorParameter** — 4-channel value (usually a color, plugged into Base Color).
- **TextureSampleParameter2D** (and Cube/Flipbook/MeshSubUV variants) — swap a
  texture per instance.
- **Static** parameters (`StaticSwitchParameter`, `StaticComponentMaskParameter`)
  — applied at **compile time**: editable in the MIC editor, but **NOT from
  script or at runtime** (this is exactly why a MID cannot carry them). A new
  shader is compiled for every used combination of static params — minimize them.

Two ways to add them (`…Instanced_Materials_Creating_and_Using_Material_Instances.md`):
place a parameter node from the palette (shortcuts: hold **S**+click = Scalar,
**V**+click = Vector), or **right-click an existing expression → Convert to
Parameter**. Give every parameter a **unique, descriptive name** in the Details
panel — that name is the conduit data flows through, and it is exactly the
string you pass to `SetScalarParameterValue` / `SetVectorParameterValue`.

Organize many parameters with **Parameter Groups** + **Sort Priority** (set on
the parent, surfaces in the MIC editor).

## Constant vs Dynamic instance

`…Instanced_Materials.md`, "Constant and Dynamic Instances":

- **Material Instance Constant (MIC)** — "calculates only once, prior to
  runtime… cannot change during gameplay." Created in the Content Browser
  (right-click Material → **Create Material Instance**), edited in the Material
  Instance Editor. Use for static variants (car colors, prop tints) that never
  change while playing. Still skips recompilation.
- **Material Instance Dynamic (MID)** — "can be calculated during gameplay (at
  runtime)… you can use script (either compiled code or Blueprint) to change the
  parameters." Created **in script**, from a parameterized Material or a MIC.
  Use for damage states, charge glow, hit flashes, paint changes.

## THE GOTCHA — runtime parameter changes need a MID

You do **not** edit a `UMaterial` (or a `UMaterialInstanceConstant`) at runtime:

1. A `UMaterial` change means a recompile and affects **everything** using it —
   it is not a runtime operation.
2. A `UMaterialInstanceConstant` is, by definition, "only calculated prior to
   runtime."

So at runtime you create a **`UMaterialInstanceDynamic`** and set **named**
parameters on it. And the parameter must have been **promoted to a named
Material Parameter** in the graph first — a value wired as a plain `Constant`
expression is baked in and unreachable. Wrong name → the call is silently
ignored and nothing changes.

### The C++ idiom

The docs present the Blueprint path: a **Create Dynamic Material Instance** node
fed by a parameterized Material, whose result is fed to a **Set Material** node
(`…Instanced_Materials.md`, with the construction-script screenshot). The
equivalent standard C++ — the names follow the UE C++ API; the *concept* and
class hierarchy are doc-sourced (above), the exact signatures are not in the
embedded pages, so treat as doc-grounded-but-not-compile-tested:

```cpp
// In an AActor with a UStaticMeshComponent* MeshComponent whose element 0 has a
// parameterized material assigned.
#include "Components/StaticMeshComponent.h"
#include "Materials/MaterialInstanceDynamic.h"

void AMyActor::BeginPlay()
{
    Super::BeginPlay();

    // Clones element 0's material into a per-instance MID AND assigns it back to
    // the component. Anything you set on this MID affects THIS actor only.
    UMaterialInstanceDynamic* MID = MeshComponent->CreateDynamicMaterialInstance(0);
    if (MID)
    {
        MID->SetScalarParameterValue(TEXT("EmissiveStrength"), 5.0f);
        MID->SetVectorParameterValue(TEXT("Tint"), FLinearColor::Red);
        // MID->SetTextureParameterValue(TEXT("Detail"), SomeTexture);
    }
}
```

`UPrimitiveComponent::CreateDynamicMaterialInstance(ElementIndex, OptionalParent)`
is the convenient form — it makes the MID **and** sets it on the component in one
call. The lower-level form is `UMaterialInstanceDynamic::Create(BaseMaterial,
Outer)`, after which you assign it yourself with `MeshComponent->SetMaterial(0,
MID)`. The element index is the material slot (a mesh can have several). Cache
the returned `MID` (a `UPROPERTY()` so it is not GC'd) and reuse it every
frame — do not call `CreateDynamicMaterialInstance` in Tick.

`scripts/new_dynamic_material_user.sh <ClassName> [out_dir] [API_MACRO]`
scaffolds exactly this Actor (.h/.cpp), animating a scalar parameter in Tick.

## Material Parameter Collections (global parameters)

For values shared across **many** materials (time-of-day, a global wetness
slider), `…Instanced_Materials_Material_Parameter_Collections.md` describes a
`UMaterialParameterCollection` asset: reference a collection parameter in any
material's graph, then set it once from C++/Blueprint
(`UKismetMaterialLibrary::SetScalarParameterValue(WorldContext, Collection,
Name, Value)`) and every referencing material updates. Use this instead of
hunting down dozens of MIDs.

## Layered materials & material functions (reuse)

- **Material Functions** (`…Material_Functions_*`) — reusable node sub-graphs
  with inputs/outputs; author once, drop into many materials.
- **Layered Materials** (`…Layered_Materials_*`) — blend whole material layers
  (a "Use Material Attributes" workflow) to composite e.g. base metal + rust +
  paint. Good for asset-library / Megascans-style pipelines.

## Where to look in `references/api/`

- Overview + MIC/MID concept: `…Materials_Instanced_Materials.md`
- Step-by-step parameterization: `…Instanced_Materials_Creating_and_Using_Material_Instances.md`
- Class hierarchy (C++ types): `…Graphics_Programming_Graphics_Programming_Overview.md`
- Parameter expression catalog: `…Material_Expressions_Reference_Material_Parameter_Expressions.md`
- Global params: `…Instanced_Materials_Material_Parameter_Collections.md`
- Essential concepts / data types: `…Materials_Essential_Material_Concepts*.md`
- Substrate (the newer multi-lobe material system): `…Materials_Substrate_Materials*.md`
