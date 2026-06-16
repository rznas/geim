# Lighting & Post-Processing (URP, Unity 6)

Hand-written synthesis grounded in `references/api/`. Doc-sourced from the Unity 6
(6000.x) ScriptReference + Manual; **not compile-tested** (no Editor installed).

Two layers cover most "make it look good on screen" work that isn't a custom shader:
**lights** (scene illumination) and **post-processing** (full-screen effects like
bloom, tonemapping, color grading). In URP, post-processing is driven by the
**Volume** framework, not by per-camera effect components.

---

## 1. Lights

The component is `Light` (`references/api/Light.md`): *"Script interface for light
components. The properties are an exact match for the values shown in the
Inspector."* Light types: Directional (sun), Point, Spot, Area (baked).

Create a light from script (verbatim, `references/api/Light.md`):

```csharp
using UnityEngine;
public class Example : MonoBehaviour
{
    void Start()
    {
        GameObject lightGameObject = new GameObject("The Light");
        Light lightComp = lightGameObject.AddComponent<Light>();
        lightComp.color = Color.blue;
        lightGameObject.transform.position = new Vector3(0, 5, 0);
    }
}
```

Drive light properties at runtime (verbatim, `references/api/Light-intensity.md`):

```csharp
using UnityEngine;
public class example : MonoBehaviour
{
    Light myLight;
    void Start() { myLight = GetComponent<Light>(); }
    void Update() { myLight.intensity = Mathf.PingPong(Time.time, 8); }
}
```

Key scriptable properties (pages in `references/api/`):
- `Light-type.md` — `LightType` (Directional/Point/Spot/Area).
- `Light-color.md`, `Light-intensity.md` (the doc notes intensity 0–8 for "over
  bright" lights), `Light-range.md` (point/spot only — *"does not apply to
  directional lights"*), `Light-shadows.md` (`LightShadows` None/Hard/Soft).
- `colorTemperature` / `useColorTemperature` (Kelvin; requires
  `GraphicsSettings.lightsUseLinearIntensity`), `cookie`, `cullingMask`
  (selectively light objects), `renderingLayerMask`, `innerSpotAngle`/`spotAngle`.

URP lighting specifics (real-time vs baked, light layers, shadow settings) are
configured on the **URP Asset** and per-light in the Inspector; the `Light`
component's C# surface is the same as above. Baking is done via the Lighting window
(Editor).

### Emissive materials as light sources

A material with **Emission** above zero glows on screen and (when set up) can
contribute baked GI. From `references/api/lighting-emissive-materials.md`: emissive
materials emit across their surface; *"materials with an emission above zero will
still appear to glow brightly on-screen even if they are not contributing to scene
lighting"* — useful for neons / visible light sources. To contribute to baked GI the
object must be **Contribute Global Illumination** + the material Emission GI set to
**Baked**, and only **static** geometry receives it; dynamic objects need **Light
Probes** (`references/api/LightProbes.md` family).

Drive emission color from C# with the standard idiom (`_EmissionColor` is the
property; see `references/materials_and_shaders.md`):

```csharp
static readonly int s_Emission = Shader.PropertyToID("_EmissionColor");
renderer.sharedMaterial.SetColor(s_Emission, Color.cyan * 4f); // >1 (HDR) to bloom
renderer.sharedMaterial.EnableKeyword("_EMISSION");            // emission may be keyword-gated
```

---

## 2. Post-processing in URP — the Volume framework

URP (and HDRP) do **not** use the legacy per-camera Post-Processing Stack v2. They
use the **Volume** system (`UnityEngine.Rendering.Volume` / `VolumeProfile` /
`VolumeComponent`, in the URP/SRP-Core package namespaces). The model:

1. Add a **Volume** component to a GameObject. Set it **Global** (affects everywhere)
   or **Local** (a trigger collider boundary the camera blends into).
2. Assign it a **Volume Profile** asset.
3. Add **overrides** to the profile — Bloom, Tonemapping, Color Adjustments, Vignette,
   Depth of Field, Motion Blur, Film Grain, Chromatic Aberration, etc. Each override
   has a checkbox per field; only checked fields apply, and overlapping volumes blend
   by weight/priority.
4. Ensure **Post Processing is enabled on the Camera** and the camera's renderer.

> Note: the concrete Volume/Bloom/Tonemapping API classes live in the URP
> (`com.unity.render-pipelines.universal`) and SRP-Core packages, whose per-class
> ScriptReference pages are **not embedded** in `references/api/` (this skill's `api/`
> covers the core `UnityEngine` + `UnityEngine.Rendering` rendering surface).
> Volume *setup* is overwhelmingly done in the Editor/Inspector. For the exact
> `Volume.profile`, `VolumeProfile.TryGet<Bloom>(out var b)`, and
> `Bloom.intensity.value = …` runtime API, consult the live URP package docs in the
> project's installed URP version. The general pattern: get the `Volume`, get its
> profile, `TryGet<T>` the override component, set `<param>.value`. Confirm against
> the URP package before writing it.

### Bloom / glow — the recipe

This is the most-asked effect. Bloom is a **post-processing override**, not a light
property. From `references/api/ts-emissive-mats-not-rendering.md`: *"To create the
appearance of a glowing material, enable **Bloom** in the post processing stack."*
The full chain that must all be true for something to glow:

1. **HDR enabled** — bloom keys off pixels brighter than its threshold, which only
   exist in HDR. Enable HDR on the URP Asset (and the camera, see
   `references/api/Camera-allowHDR.md`). Without HDR, colors clamp at 1.0 and bloom
   has nothing to bleed.
2. A **Volume** (global or local) with a **Bloom** override added and its **Intensity
   > 0** and **Threshold** below your bright pixels.
3. **Post Processing checked on the Camera.**
4. The thing you want to glow must be **brighter than the threshold** — i.e. an
   **emissive material with `_EmissionColor` intensity > 1** (HDR color), or a bright
   lit surface.

If any link is missing, no glow (see `references/troubleshooting.md`).

### Other common overrides

Tonemapping (ACES/Neutral — needed for filmic HDR→LDR mapping), Color Adjustments
(post-exposure, contrast, color filter, saturation), Vignette, Depth of Field,
Chromatic Aberration, Film Grain. All are Volume overrides; all blend by volume
weight; many are animatable at runtime via the `<param>.value` on the override.

---

## 3. RenderTexture (off-screen / custom passes)

`references/api/RenderTexture.md` — a texture you render into. Uses: minimaps,
security cameras, mirror/portal surfaces, capturing the screen for a custom
full-screen effect, render-to-texture UI. Point a `Camera.targetTexture` at one, or
create with `new RenderTexture(width, height, depth)`
(`references/api/RenderTexture-ctor.md`) and bind it to a material's texture slot.
For custom full-screen post effects in URP, the modern path is a
**Renderer Feature** / **Full Screen Pass** on the URP renderer (authored in the
Editor) rather than the old `OnRenderImage` Built-in hook.

---

## 4. Built-in pipeline note (brief, for contrast)

In the Built-in RP, post-processing came from the Post-Processing Stack v2 package
and emissive/glow setup differs (`references/api/lighting-emissive-materials.md` and
`SL-RenderPipeline.md` describe Built-in behavior). HDR/Graphics Tiers are
Built-in-only (`references/api/Camera-allowHDR.md`: *"You can only set a Graphics
Tier in the Built-in Render Pipeline."*). You are on URP — use Volumes.

## 5. Where in `api/`

- Lights: `Light.md`, `Light-type.md`, `Light-color.md`, `Light-intensity.md`,
  `Light-range.md`, `Light-shadows.md`, `LightProbes.md`.
- Emissive: `lighting-emissive-materials.md`, `ts-emissive-mats-not-rendering.md`.
- HDR / camera: `Camera-allowHDR.md`, `Camera.md`.
- Off-screen: `RenderTexture.md`, `RenderTexture-ctor.md`,
  `CustomRenderTexture-ctor.md`.
- URP package landing: `com.unity.render-pipelines.universal.md`,
  `render-pipelines-feature-comparison.md` (Volume/Bloom class pages are NOT here —
  see the package docs note in §2).
