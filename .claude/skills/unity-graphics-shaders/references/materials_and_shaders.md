# Materials, Shaders & the C# property API (URP, Unity 6)

Hand-written synthesis grounded in `references/api/`. Doc-sourced from the Unity 6
(6000.x) ScriptReference + Manual; **not compile-tested** (no Editor installed).

The mental model: a **Shader** is a program (`.shader` ShaderLab + HLSL, or a Shader
Graph `.shadergraph` asset). A **Material** is an asset that wraps one shader and
stores its property values. A **Renderer** (MeshRenderer, SkinnedMeshRenderer, the
Sprite/particle renderers) points at one or more materials and draws the geometry
with them. Your C# almost never writes shader code — it swaps materials and pushes
property values.

---

## 1. The pipeline matters: URP vs Built-in

Unity 6's default 3D template is **URP** (Universal Render Pipeline). URP is a
Scriptable Render Pipeline; the old **Built-in Render Pipeline (BiRP)** is a
different renderer with different shaders. A shader written for one pipeline does
**not** run on the other.

- **A Built-in shader under URP draws solid magenta** (the "error" color) — there
  is no matching pass for the active pipeline. This is the single most common "why
  is everything pink" symptom. See `references/troubleshooting.md`.
- URP material/shader differences are visible even at the property level: the main
  color is `_Color` in Built-in but **`_BaseColor` in URP**
  (`references/api/Material.SetColor.md` states this explicitly: *"`_Color` in
  Built-in Render Pipeline, `_BaseColor` in URP"*).
- **Surface Shaders do not exist in URP.** The compatibility table in
  `references/api/SL-RenderPipeline.md` lists Surface Shaders as **No** for URP/HDRP
  and **Yes** only for Built-in. In URP you write vertex/fragment HLSL by hand, or
  (recommended) use **Shader Graph**.

What marks a `.shader` as URP (verified, `references/api/MeshRenderer.SetShaderUserValue.md`):

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
        ...
        ENDHLSL
    }
}
```

The `"RenderPipeline" = "UniversalPipeline"` SubShader tag and the URP `Core.hlsl`
include are what make it URP. The clip-space transform is `TransformObjectToHClip`
(URP's helper), not Built-in's `mul(UNITY_MATRIX_MVP, v.vertex)`.

Built-in shaders look different — they `#include "UnityCG.cginc"`, use `tex2D`,
`UNITY_MATRIX_MVP`, and `appdata`/`v2f` structs. See
`references/api/built-in-shader-examples-unlit.md` for the BiRP unlit form (mentioned
for contrast only; you are on URP).

`scripts/new_urp_shader.sh` writes a correct minimal URP unlit `.shader` with one
color property — start there instead of hand-typing the boilerplate.

---

## 2. Three ways to author a shader

| Path | What | When |
|------|------|------|
| **Shader Graph** (`.shadergraph`) | Node-based, visual, no HLSL | Default for URP. Artist-friendly, the Unity-recommended way (`SL-RenderPipeline.md`). Author in the Editor. |
| **ShaderLab + HLSL** (`.shader`) | Hand-written `Properties`/`SubShader`/`Pass` with `HLSLPROGRAM` blocks | Full control, effects Shader Graph can't express. Text file — author directly. |
| **VFX/particle shaders** | special variants | Note: URP/HDRP lit & unlit shaders are SRP-Batcher-compatible **except the particle versions** (`references/api/SRPBatcher-Materials.md`). |

ShaderLab structure pages in `references/api/`: `SL-Shader.md` (top-level),
`SL-SubShader.md`, `SL-SubShader-pass.md`, `SL-SubShaderTags.md`,
`writing-shader-programs-introduction.md`, `writing-shader-programs-pragma-directives.md`.

A `.shader` is plain text, so a malformed one errors loudly on import — there is no
silent failure. Shader Graph assets are authored in the Editor, not by hand.

### Properties block — the values exposed to the inspector and to C#

The `Properties { }` block declares the named, settable properties. Common types:
`Color`, `Float`/`Range`, `Vector`, `2D` (texture). The **name string** (e.g.
`_BaseColor`) is the exact key your C# uses with `SetColor("_BaseColor", …)`. Case
matters.

```
Properties
{
    [MainColor] _BaseColor ("Base Color", Color) = (1,1,1,1)
    _MainTex ("Texture", 2D) = "white" {}
    _Glow ("Glow", Range(0,5)) = 1.0
}
```

`[MainColor]` / `[MainTexture]` attributes alias a property to `material.color` /
`material.mainTexture` (see `references/api/Material.md` Properties table).

---

## 3. SRP Batcher: keep material props in `UnityPerMaterial`

URP's fast draw path is the **SRP Batcher**. For a custom shader to use it
(`references/api/SRPBatcher-Materials.md`):

- declare **all material properties** in one CBUFFER named `UnityPerMaterial`;
- declare built-in per-object values in `UnityPerDraw`.

```
CBUFFER_START(UnityPerMaterial)
    half4 _BaseColor;
    float _Glow;
CBUFFER_END
```

All stock URP lit/unlit shaders already satisfy this (except particle variants).
Note from the same page: **`MaterialPropertyBlock` and the SRP Batcher are mutually
exclusive** — a GameObject using a MaterialPropertyBlock drops off the batcher's
fast path. See the gotcha discussion below.

---

## 4. Driving shader properties from C# — the verified idiom

`Material` exposes typed get/set per property (`references/api/Material.md`):
`SetFloat` / `SetColor` / `SetVector` / `SetTexture` / `SetInt`→`SetInteger` /
`SetMatrix` (+ array variants), and matching `Get*`. Each takes either a property
**name string** or an **int name ID**.

Unity's own example (`references/api/Material.SetColor.md`, verbatim) — note the URP
property name:

```csharp
using UnityEngine;
public class Example : MonoBehaviour
{
   void Start()
   {
       GameObject cube = GameObject.CreatePrimitive(PrimitiveType.Cube);
       var cubeRenderer = cube.GetComponent<Renderer>();
       // Built-in:
       cubeRenderer.material.SetColor("_Color", Color.red);
       // URP: use _BaseColor instead
       // cubeRenderer.material.SetColor("_BaseColor", Color.red);
   }
}
```

### Cache the name ID with `Shader.PropertyToID`

String lookups happen every call. `Shader.PropertyToID(name)` returns a stable int
ID for the run — cache it once (a `static readonly int`) and pass the int instead.
Straight from `references/api/Shader.PropertyToID.md`: *"Using property identifiers
is more efficient than passing strings… if you are calling Material.SetColor a lot,
or using MaterialPropertyBlock, then it is better to get the identifiers of the
properties you need just once."*

The IDs are **not stable across runs or machines** — never serialize or network
them; recompute each run.

Verified caching pattern (from `references/api/VFX.VisualEffect.SetFloat.md`, same
idiom applies to Material):

```csharp
using UnityEngine;
public class Pulse : MonoBehaviour
{
    [SerializeField] Renderer m_Renderer;
    static readonly int s_BaseColor = Shader.PropertyToID("_BaseColor");

    void Update()
    {
        float t = Mathf.PingPong(Time.time, 1f);
        // sharedMaterial edits the asset (see gotcha) — fine when one instance uses it.
        m_Renderer.sharedMaterial.SetColor(s_BaseColor, Color.Lerp(Color.black, Color.red, t));
    }
}
```

---

## 5. THE GOTCHA — `material` vs `sharedMaterial` vs MaterialPropertyBlock

This is the one that bites everyone.

**`renderer.material` returns an INSTANCED COPY.** From
`references/api/Renderer-material.md`: *"Returns the **first instantiated** Material…
If the material is used by any other renderers, this will **clone** the shared
material… **It is your responsibility to destroy the materials when the game object
is being destroyed.**"* So:

- The first `renderer.material.Set…` (or even just reading `renderer.material`)
  silently **duplicates the material asset** for that one object.
- That leaks a Material you must `Destroy()` yourself, and it **breaks batching**
  (each instance is now a unique material).
- Do this every frame / on many objects → material count climbs, draw calls climb.

Three correct tools depending on intent:

| Goal | Use | Why |
|------|-----|-----|
| Change the look of **all** objects sharing the material (and persist to the asset) | `renderer.sharedMaterial.SetColor(id, c)` | Edits the asset in place, no clone. `references/api/Renderer-sharedMaterial.md`: *"Modifying sharedMaterial will change the appearance of all objects using this material, and change material settings… in the project too."* |
| Change **one object** at runtime, and you accept owning/destroying the clone | `renderer.material.SetColor(id, c)` | Intentional per-object instance; remember `Destroy(m_Material)` in `OnDestroy`. |
| Per-instance override **without** cloning the material | `MaterialPropertyBlock` + `renderer.SetPropertyBlock(block)` | No new material, no leak. Best for "tint each enemy differently". |

MaterialPropertyBlock (verified, `references/api/MaterialPropertyBlock.md`):

```csharp
using UnityEngine;
public class TintPerInstance : MonoBehaviour
{
    static readonly int s_BaseColor = Shader.PropertyToID("_BaseColor");
    MaterialPropertyBlock _mpb;
    Renderer _r;

    void Start()
    {
        _r = GetComponent<Renderer>();
        _mpb = new MaterialPropertyBlock();
    }

    public void SetTint(Color c)
    {
        _r.GetPropertyBlock(_mpb);          // read current overrides into the block
        _mpb.SetColor(s_BaseColor, c);      // set/replace the override
        _r.SetPropertyBlock(_mpb);          // apply (the block is copied on apply)
    }
}
```

Reuse one block instance (the docs say it is copied on `SetPropertyBlock`, so the
efficient pattern is one block reused).

**The URP caveat — read this before reaching for MaterialPropertyBlock.** The same
page warns: *"this is **not compatible with SRP Batcher**. Using this in the
Universal Render Pipeline (URP)… will likely result in a drop in performance."* And
`references/api/SRPBatcher-Materials.md` confirms a GameObject using a
MaterialPropertyBlock is not SRP-Batcher-compatible. So in URP the decision is a
trade-off: MaterialPropertyBlock avoids material leaks/clones but kicks that object
off the SRP Batcher fast path. For a handful of objects it's fine; for hundreds,
prefer one shared material driven by an editor-set variant, GPU instancing, or
per-instance data via other means. Measure.

Rule of thumb: **never `renderer.material.Set…` in `Update` on many objects.** Use
`sharedMaterial` for global changes, a MaterialPropertyBlock for a few per-instance
ones, and a deliberately-owned instanced material (with `Destroy` cleanup) only when
you truly need a unique material on one object.

### Swapping the whole material / changing the shader

```csharp
renderer.sharedMaterial = someOtherMaterial;     // swap material asset
someMaterial.shader = Shader.Find("Example/MyUnlit");  // swap the shader on a material
```

`Shader.Find(name)` (`references/api/Shader.Find.md`) looks a shader up by its
ShaderLab name string (the `Shader "Example/MyUnlit"` line), useful for runtime
material construction: `new Material(Shader.Find("Universal Render Pipeline/Lit"))`.

---

## 6. Quick reference — which `api/` page for what

- Material class + full method list: `Material.md`, `Material.SetColor.md`,
  `Material.SetFloat.md`, `Material.SetVector.md`, `Material.SetTexture.md`.
- Property IDs: `Shader.PropertyToID.md`; find a shader: `Shader.Find.md`.
- Per-instance: `MaterialPropertyBlock.md`, `Renderer-SetPropertyBlock` /
  `Renderer.SetPropertyBlock.md`, `Renderer.GetPropertyBlock.md`.
- Instance vs shared: `Renderer-material.md`, `Renderer-sharedMaterial.md`.
- ShaderLab: `SL-Shader.md`, `SL-SubShader.md`, `SL-SubShader-pass.md`,
  `SL-SubShaderTags.md`, `SL-RenderPipeline.md` (pipeline compatibility).
- SRP Batcher: `SRPBatcher-Materials.md`.
- Compute shaders (GPGPU): `class-ComputeShader-introduction.md`,
  `class-ComputeShader-run.md`, `ComputeShader.*`.
