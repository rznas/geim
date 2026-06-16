---
name: unity-graphics-shaders
description: >
  Write shaders, materials, particles, lighting, and visual effects for a
  Unity 6 (6000.x) C# game on URP (the Unity 6 default render pipeline). Use this
  whenever you are creating or tweaking a Material, assigning/swapping a Shader,
  writing a .shader (ShaderLab + HLSL) or a Shader Graph, driving shader
  properties from C# at runtime (material.SetFloat / SetColor / SetVector,
  Shader.PropertyToID, MaterialPropertyBlock), building particle effects
  (Shuriken ParticleSystem or VFX Graph / VisualEffect), adding post-processing
  via a URP Volume (bloom, tonemapping, color grading), setting up lights, or
  making something glow / dissolve / flash / tint. Reach for it any time the task
  is about how things *look* on screen — "make it glow", "add a dissolve
  effect", "tint the enemy red on hit", "everything is pink/magenta", "spawn
  sparks/explosion", "outline the player", "bloom isn't showing", "my SetColor
  does nothing", "the framerate drops over time and material count climbs". It
  has the verified Unity 6 C# material/shader API, the URP shader skeleton, the
  ParticleSystem + VisualEffect control API, and the material-vs-sharedMaterial
  gotcha that leaks materials and breaks batching. Covers Graphics Engineer, VFX
  Artist, and Technical Artist work. URP-primary (Built-in mentioned for
  contrast). Assumes a buildable project (unity-project-setup).
---

# Unity Graphics & Shaders (URP, Unity 6)

The visual layer: **shaders** (per-vertex/per-pixel programs), **materials** (assets
that carry a shader + its values onto an object), **particles**, **lights**, and
**post-processing**. Targets **URP** (Universal Render Pipeline) — the Unity 6 default
— with Built-in noted only for contrast. Shaders are written in **ShaderLab + HLSL**
(`.shader`) or **Shader Graph** (`.shadergraph`), **not** C#. Your C# touches them
only to swap materials and push property values.

> Snippets are doc-sourced from the embedded Unity 6 ScriptReference + Manual
> (`references/api/`), **not compile-tested** in this environment (no Editor
> installed). Before extending an API call, grep `references/api/` for the exact
> signature.

## The model in one paragraph

A **Shader** declares `Properties` and `SubShader`/`Pass` blocks. A **Material** is an
asset that wraps one shader and stores its property values. A **Renderer**
(`MeshRenderer`, `SkinnedMeshRenderer`, sprite/particle renderers) points at one or
more materials. At runtime your C# sets material properties by **name string** or
cached **int ID**. URP and Built-in are different renderers with incompatible
shaders — get the pipeline wrong and you get magenta.

## The one thing that trips everyone up

**`renderer.material` returns an INSTANCED COPY** — the moment you touch it you've
cloned the material asset for that object. From `references/api/Renderer-material.md`:
*"Returns the first **instantiated** Material… this will **clone** the shared material…
It is your responsibility to **destroy** the materials."* The clone leaks, it breaks
SRP-Batcher batching, and doing it per-frame on many objects tanks performance with a
climbing material count.

Pick the right tool for the job:

| Goal | Use | Effect |
|------|-----|--------|
| Change **all** objects sharing the material (persists to asset) | `renderer.sharedMaterial.SetColor(id, c)` | edits asset, no clone |
| Per-**instance** override, no clone | `MaterialPropertyBlock` + `renderer.SetPropertyBlock(b)` | no new material, no leak |
| One object needs a **unique** material | `renderer.material` | clone you must `Destroy()` in `OnDestroy` |

**URP twist:** `MaterialPropertyBlock` is *not* SRP-Batcher-compatible — the docs warn
it "will likely result in a drop in performance" in URP
(`references/api/MaterialPropertyBlock.md`). It fixes the leak but drops that object
off the batcher fast path. Fine for a few objects; profile before using it on hundreds.

Two more that bite:
- **Magenta everywhere** = a **Built-in shader under URP** (no matching pass) or a
  shader compile error. URP needs the `"RenderPipeline" = "UniversalPipeline"` tag.
- **`SetColor("_Color", …)` does nothing on URP** — URP's main color is **`_BaseColor`**
  (`references/api/Material.SetColor.md`: *"`_Color` in Built-in… `_BaseColor` in URP"*).

## Driving shader properties from C# — the verified idiom

Set by name (verbatim from `references/api/Material.SetColor.md`, note the URP name):

```csharp
var cubeRenderer = cube.GetComponent<Renderer>();
cubeRenderer.material.SetColor("_Color", Color.red);       // Built-in
// cubeRenderer.material.SetColor("_BaseColor", Color.red); // URP
```

**Cache the property ID** with `Shader.PropertyToID` — string lookups every call are
the documented slow path (`references/api/Shader.PropertyToID.md`: *"if you are calling
Material.SetColor a lot… it is better to get the identifiers… just once"*). IDs are
**not** stable across runs/machines — never serialize them. Verified caching shape
(from `references/api/VFX.VisualEffect.SetFloat.md`, same idiom for Material):

```csharp
using UnityEngine;
public class Pulse : MonoBehaviour
{
    [SerializeField] Renderer m_Renderer;
    static readonly int s_BaseColor = Shader.PropertyToID("_BaseColor");

    void Update()
    {
        float t = Mathf.PingPong(Time.time, 1f);
        m_Renderer.sharedMaterial.SetColor(s_BaseColor, Color.Lerp(Color.black, Color.red, t));
    }
}
```

`Material` has typed `Set/Get` for every property kind: `SetFloat`, `SetColor`,
`SetVector`, `SetTexture`, `SetInteger`, `SetMatrix` (+ array variants), plus
`HasProperty`/`HasColor` to check existence and `EnableKeyword`/`DisableKeyword` for
keyword-gated features like `_EMISSION`. Full method list and the
material-vs-sharedMaterial-vs-MPB decision table: **`references/materials_and_shaders.md`**.

## Writing a shader: Shader Graph or ShaderLab+HLSL

In URP, **Surface Shaders don't exist** (`references/api/SL-RenderPipeline.md`) — use
**Shader Graph** (node-based, the Unity-recommended URP path, authored in the Editor)
or hand-written **ShaderLab + HLSL**. A URP `.shader` is marked by its SubShader tag +
include (verified, `references/api/MeshRenderer.SetShaderUserValue.md`):

```
SubShader
{
    Tags { "RenderType" = "Opaque" "RenderPipeline" = "UniversalPipeline" }
    Pass
    {
        HLSLPROGRAM
        #pragma vertex vert
        #pragma fragment frag
        #include "Packages/com.unity.render-pipelines.universal/ShaderLibrary/Core.hlsl"
        // material props in UnityPerMaterial CBUFFER -> SRP Batcher compatible
        ...
        ENDHLSL
    }
}
```

**Don't hand-type the boilerplate — run `scripts/new_urp_shader.sh MyUnlit Assets/Shaders`**
to write a correct minimal URP unlit shader with one `_BaseColor` property. Details,
the Properties block, and SRP-Batcher CBUFFER rules: `references/materials_and_shaders.md`.

## Particles & VFX

Unity 6 ships two solutions (`references/api/ChoosingYourParticleSystem.md`):
**Built-in ParticleSystem ("Shuriken")** — CPU, thousands of particles, full C#
read/write, runs on every pipeline; and **VFX Graph (`VisualEffect`)** — GPU, millions,
URP/HDRP only. Prefer Shuriken for gameplay-reactive effects you script.

```csharp
ParticleSystem ps = GetComponent<ParticleSystem>();
var main = ps.main;              // modules are accessor structs, not copies
main.startLifetime = 2.0f;       // references/api/ParticleSystem-main.md
ps.Play();                       // don't spam in Update — see Play() notes
ps.Stop(true, ParticleSystemStopBehavior.StopEmittingAndClear);
```

Setup, modules (emission/bursts/shape/collision), and the `VisualEffect`
`SetFloat`/`Play`/`SendEvent` API: **`references/particles_and_vfx.md`**.

## Lighting & post-processing (glow / bloom)

Lights are the `Light` component (`color`, `intensity` 0–8, `type`, `range`, `shadows`)
— see `references/api/Light.md`, `Light-intensity.md`. Post-processing in URP is the
**Volume** framework (a Volume + Profile + overrides), **not** the legacy per-camera
stack. **Bloom is a Volume override**, and glow only appears when the whole chain holds:
**HDR on** + a **Volume with Bloom (intensity>0)** + **Post Processing enabled on the
camera** + the object is **HDR-bright** (emissive `_EmissionColor` > 1). Recipe and the
Volume API caveat (the concrete URP Volume classes aren't in the embedded `api/` — they
live in the URP package): **`references/lighting_and_postprocessing.md`**.

## Verifying

`.shader` files are text — author them directly; a malformed one errors loudly on
import. C# material/light/particle code compiles like any gameplay code. There is **no
Unity Editor in this environment**, so build/play verification runs through
`scripts/unity.sh` (fails clear with install instructions until `$UNITY_PATH` points at
a Unity 6 Editor). For "does the property actually move the visual", drive it from a
batch-mode/PlayMode test and screenshot — hand that to **unity-qa-testing**.

## Troubleshooting

`references/troubleshooting.md`: magenta material (Built-in shader under URP / compile
error), material leak + batching death (`material` vs `sharedMaterial` vs MPB), shader
property not updating (wrong name `_Color` vs `_BaseColor` / keyword off / not cached),
particles invisible (not playing / no material / rate 0 / VFX on Built-in), bloom not
showing (no Volume / HDR off / not HDR-bright).

## What this covers / hands off to

**Covers:** Graphics Engineer (rendering, shaders, effects), VFX Artist (particles,
explosions), Technical Artist (materials, look pipelines). Built on **unity-project-setup**
(the buildable project) and drives visuals from gameplay logic written with
**unity-gameplay-csharp**.

**Hands off to:** **unity-art-pipeline** (importing models/sprites/textures + Mecanim
animation — that brings in materials this skill then tunes), **unity-ui-csharp** (UI/HUD
visuals), **unity-qa-testing** (running a build to verify an effect on screen),
**unity-build-deploy** (shipping the build). For physics-driven effects (hit detection
that triggers a particle), pair with **unity-physics-and-ai**.
