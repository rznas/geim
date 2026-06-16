# Troubleshooting — Graphics, Shaders, Particles (URP, Unity 6)

The handful of failures that account for most graphics bugs. Doc-sourced from the
Unity 6 (6000.x) docs in `references/api/`; **not compile-tested** (no Editor here).

---

## 1. Everything (or one object) renders solid MAGENTA / pink

**The #1 graphics bug.** Magenta is Unity's "no valid shader for this pipeline" error
color.

- **Pipeline mismatch.** The material's shader is a **Built-in** shader and the
  project runs **URP** (or vice versa). A Built-in shader has no `"RenderPipeline" =
  "UniversalPipeline"` SubShader and no URP pass, so URP can't render it → magenta.
  Fix: swap the material to a URP shader ("Universal Render Pipeline/Lit",
  "…/Unlit", or a Shader Graph), or **Edit > Rendering > Materials > Convert…** the
  old materials. Custom shaders must carry the URP tag + include
  (`references/api/MeshRenderer.SetShaderUserValue.md`,
  `references/api/SL-RenderPipeline.md`).
- **Shader failed to compile / missing.** A shader compile error or a deleted shader
  asset also shows magenta. Check the Console for shader errors and the material's
  Shader dropdown for "Hidden/InternalErrorShader".
- **Imported asset materials.** FBX/glTF imports often bring Built-in-style or
  standard materials that go pink under URP — convert them.

Note: a Built-in pipeline shader's HLSL looks unmistakable — `#include
"UnityCG.cginc"`, `tex2D`, `UNITY_MATRIX_MVP`
(`references/api/built-in-shader-examples-unlit.md`). URP uses `Core.hlsl` and
`TransformObjectToHClip`. If you see the former in a "URP" shader, that's your bug.

---

## 2. Material leak / batching dies / FPS drops over time — THE big C# gotcha

Reading or writing **`renderer.material`** silently **clones** the material.

From `references/api/Renderer-material.md`: *"Returns the first **instantiated**
Material… If the material is used by any other renderers, this will **clone** the
shared material… It is your responsibility to **destroy** the materials when the game
object is being destroyed."*

Symptoms: material count climbs (each object now has its own copy), draw calls climb,
SRP Batcher stops batching those objects, and the clones leak unless you `Destroy()`
them.

Fixes by intent:
- **Change all objects sharing the material** → `renderer.sharedMaterial.Set…`
  (edits the asset; `references/api/Renderer-sharedMaterial.md`).
- **Per-instance override without cloning** → `MaterialPropertyBlock` +
  `renderer.SetPropertyBlock(block)` (`references/api/MaterialPropertyBlock.md`).
- **Genuinely need a unique instanced material on one object** → `renderer.material`
  is fine, but `Destroy(m_Material)` it in `OnDestroy`
  (`references/api/Renderer-material.md` example does exactly this).

**Never `renderer.material.Set…` in `Update` across many objects.** See the full
decision table in `references/materials_and_shaders.md` §5.

**URP twist:** `MaterialPropertyBlock` is **not** SRP-Batcher-compatible — the docs
warn it *"will likely result in a drop in performance"* in URP
(`references/api/MaterialPropertyBlock.md`, `references/api/SRPBatcher-Materials.md`).
So MPB fixes the leak but takes that object off the batcher fast path. For a few
objects it's the right call; for hundreds, profile and consider shared-material
variants or GPU instancing instead.

---

## 3. A shader property won't update from C#

`material.SetColor("...", c)` runs but nothing changes on screen.

- **Wrong property name.** The string must match the shader's `Properties` name
  **exactly, including case and leading underscore.** The classic: URP's main color
  is **`_BaseColor`**, not Built-in's `_Color`
  (`references/api/Material.SetColor.md` says so explicitly). Setting `_Color` on a
  URP Lit material does nothing.
- **Editing a clone you then throw away.** If you do `GetComponent<Renderer>()
  .material.SetColor(...)` on a fresh renderer each call, or set it on a copy, you
  may be mutating an instance that isn't the one being drawn. Cache the material
  reference once.
- **Property is keyword-gated.** Some features only apply once a shader keyword is
  enabled — e.g. emission: `material.EnableKeyword("_EMISSION")` before
  `_EmissionColor` shows (`references/api/Material.EnableKeyword.md`,
  `references/api/Material.SetColor.md` notes Standard shader features may need
  `EnableKeyword`).
- **String typo'd but cached as an ID.** `Shader.PropertyToID("_BaseColr")` returns a
  valid (wrong) ID — no error, just no effect. Double-check the spelling.
- **Verify the property exists**: `material.HasProperty("_BaseColor")` /
  `HasColor(...)` (`references/api/Material.HasProperty.md`).

Also: cache the ID once with `Shader.PropertyToID` and reuse it — not a correctness
bug, but per-frame string lookups are the documented slow path
(`references/api/Shader.PropertyToID.md`).

---

## 4. Particles are invisible

`ParticleSystem` is in the scene but nothing shows.

- **Not playing / not emitting.** Check `ps.isPlaying` / `ps.isEmitting`
  (`references/api/ParticleSystem.Play.md`). If `Play Awake` is off, you must call
  `ps.Play()`.
- **`Play()` spammed every frame.** Per the docs, calling `Play()` again before the
  system spawns a particle restarts the counters — *"a particle system with a low
  emission rate will never start to play"* (`references/api/ParticleSystem.Play.md`).
  Don't call `Play()` in `Update` unconditionally.
- **Emission rate / max particles is 0.** Check the Emission module
  (`references/api/ParticleSystem-emission.md`) and Main module `maxParticles`
  (`references/api/ParticleSystem.MainModule.md`).
- **No material / magenta particle material.** The `ParticleSystemRenderer`
  (`references/api/ParticleSystemRenderer.md`) needs a particle-compatible URP
  material; a Built-in particle shader goes magenta. Note from
  `references/api/SRPBatcher-Materials.md`: particle shader variants are the
  exception that is **not** SRP-Batcher-compatible.
- **Behind/inside geometry, or scaled wrong.** Check `simulationSpace`, start size,
  and the system's transform.
- **VFX Graph specifically:** needs compute-shader support and a URP/HDRP project
  (`references/api/ChoosingYourParticleSystem.md` — VFX Graph does **not** run on the
  Built-in pipeline). Confirm with `m_Vfx.aliveParticleCount`.

---

## 5. Bloom / glow isn't showing

Emissive material or bright object refuses to bloom. Bloom is post-processing, and
**every link in the chain must be present** (`references/api/ts-emissive-mats-not-rendering.md`,
`references/lighting_and_postprocessing.md`):

1. **No Volume with a Bloom override.** There must be a (Global or Local) Volume whose
   Profile contains a **Bloom** override with **Intensity > 0** and a **Threshold**
   below the bright pixels.
2. **HDR is off.** Bloom keys on pixels brighter than 1.0, which only exist in HDR.
   Enable HDR on the URP Asset / camera (`references/api/Camera-allowHDR.md`). With
   HDR off, color clamps at 1.0 and there's nothing to bloom.
3. **Post Processing not enabled on the Camera** (and its renderer).
4. **The object isn't actually bright enough.** An emissive material needs
   `_EmissionColor` intensity **> 1** (an HDR color) — and emission may be
   keyword-gated (`EnableKeyword("_EMISSION")`). Plain albedo color at 1.0 won't
   cross the threshold. (`references/api/ts-emissive-mats-not-rendering.md`: enable
   Bloom; set Emission/GI correctly.)

Tune threshold down or emission intensity up if it's too subtle; up if the whole
screen blooms.

---

## 6. Quick triage table

| Symptom | Most likely cause | Page |
|---|---|---|
| Pink / magenta object | Built-in shader under URP, or shader compile error | `SL-RenderPipeline.md`, `MeshRenderer.SetShaderUserValue.md` |
| FPS degrades, material count grows | `renderer.material` cloning every frame | `Renderer-material.md` |
| `SetColor` does nothing | wrong name (`_Color` vs `_BaseColor`), or keyword off | `Material.SetColor.md`, `Material.EnableKeyword.md` |
| Particles invisible | not playing, no material, rate 0, or VFX on Built-in | `ParticleSystem.Play.md`, `ChoosingYourParticleSystem.md` |
| No glow/bloom | no Volume+Bloom, HDR off, PP off camera, not HDR-bright | `ts-emissive-mats-not-rendering.md`, `Camera-allowHDR.md` |
| MPB tanks URP perf | MaterialPropertyBlock breaks SRP Batcher | `MaterialPropertyBlock.md`, `SRPBatcher-Materials.md` |
