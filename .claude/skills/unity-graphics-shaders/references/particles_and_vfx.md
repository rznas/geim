# Particles & VFX (URP, Unity 6)

Hand-written synthesis grounded in `references/api/`. Doc-sourced from the Unity 6
(6000.x) ScriptReference + Manual; **not compile-tested** (no Editor installed).

Unity 6 ships **two** particle solutions (`references/api/ChoosingYourParticleSystem.md`):

| | **Built-in Particle System** ("Shuriken") | **Visual Effect Graph** (VFX Graph) |
|---|---|---|
| Component | `ParticleSystem` | `UnityEngine.VFX.VisualEffect` |
| Simulated on | CPU | GPU (needs compute-shader support) |
| Scale | thousands | millions |
| Pipelines | Built-in, **URP**, HDRP | **URP**, HDRP (not Built-in) |
| C# control | full read/write of every particle + playback API | exposed graph properties + events + playback API |
| Authoring | modules in the Inspector | node graph editor |

Rule of thumb: **Shuriken** for gameplay-reactive effects you script (hit sparks,
pickups, footstep dust) and where you need per-particle C# access or CPU physics
collisions; **VFX Graph** for large-scale GPU spectacle (magic, weather, dense
debris). Both run on URP.

---

## 1. Built-in Particle System (Shuriken)

The component is `ParticleSystem`. Its settings are grouped into **modules**, each a
struct-like interface you read off the system (`references/api/ParticleSystem-main.md`):

> "Particle System modules do not need to be reassigned back to the system; they are
> interfaces and not independent objects."

Verified module-edit pattern (`references/api/ParticleSystem-main.md`, verbatim):

```csharp
using UnityEngine;
[RequireComponent(typeof(ParticleSystem))]
public class ExampleClass : MonoBehaviour
{
    void Start()
    {
        ParticleSystem ps = GetComponent<ParticleSystem>();
        var main = ps.main;        // grab the MainModule
        main.startDelay = 5.0f;
        main.startLifetime = 2.0f;
    }
}
```

The `var main = ps.main;` line matters: modules are accessor structs. You mutate the
local `main` and the changes apply to the system (it is an interface to it, not a
copy you must write back).

Key modules (pages in `references/api/`):
- `ParticleSystem-main.md` — `MainModule`: `startLifetime`, `startSpeed`,
  `startSize`, `startColor`, `startDelay`, `duration`, `loop`, `maxParticles`,
  `simulationSpace`, `prewarm`. (full list: `ParticleSystem.MainModule.md`)
- `ParticleSystem-emission.md` / `ParticleSystem.EmissionModule.md` — emission
  `rateOverTime`, `rateOverDistance`, and **Bursts** (`ParticleSystem.Burst.md`).
- Shape, Velocity over Lifetime, Color over Lifetime, Size over Lifetime,
  Noise, Collision (`ParticleSystem.CollisionModule.md` — Shuriken can collide with
  scene physics), Sub Emitters, Texture Sheet Animation, Trails, Renderer
  (`ParticleSystemRenderer.md`).

### Playback control from C#

Verified (`references/api/ParticleSystem.Play.md` and `ParticleSystem.Stop.md`):

```csharp
ps.Play();      // start / restart, resets playback time to 0
ps.Pause();
ps.Stop();      // default: StopEmitting (lets live particles finish)
ps.Stop(true, ParticleSystemStopBehavior.StopEmittingAndClear);  // hard clear
bool busy = ps.isPlaying || ps.isEmitting;
int n = ps.particleCount;
```

`Play()` notes worth knowing (from the page):
- If already playing, it resets playback time to 0; for looping systems that may be
  invisible, for non-looping systems it can re-emit.
- **If you call `Play()` again before the system has spawned a single particle, it
  restarts internal counters** — calling it continuously on a low-rate system means
  it "will never start to play." Don't spam `Play()` every frame.
- `prewarm` is not applied when resuming from pause; call `Clear` after `Stop` to
  re-prewarm.

For a one-shot effect (explosion, hit spark): set the Main module `loop = false`,
add a Burst in the Emission module, and instantiate the prefab + `Play()` on the
event. Set the Renderer module's **Stop Action** to Destroy (Editor) or destroy the
GameObject yourself when `!isAlive`.

### Driving particle colors/properties at runtime

Edit module properties from C# (as above). Many module fields are
`ParticleSystem.MinMaxCurve` / `MinMaxGradient` types — set their `.constant`,
`.curve`, or `.gradient`. The particle **material** (on the
`ParticleSystemRenderer`) is a normal Material — drive its shader properties with the
same `SetColor`/`PropertyToID` idiom from `references/materials_and_shaders.md`
(remember: the particle renderer's material is still subject to the
`material` vs `sharedMaterial` instancing gotcha).

---

## 2. Visual Effect Graph (VFX Graph)

The runtime component is `UnityEngine.VFX.VisualEffect` (the `.vfx` graph asset is
authored in the Editor). C# drives it by setting **exposed blackboard properties**
and sending **events**.

### Set exposed properties — same `PropertyToID` caching idiom

Verified, verbatim (`references/api/VFX.VisualEffect.SetFloat.md`):

```csharp
using UnityEngine;
using UnityEngine.VFX;

class SetFloatExample : MonoBehaviour
{
    [SerializeField] VisualEffect m_Vfx;
    [SerializeField] float m_Frequency = 1f;
    [SerializeField] float m_Phase = 0f;

    static readonly int k_MyValuePropertyNameID = Shader.PropertyToID("MyValueProperty");

    void Update()
    {
        m_Vfx.SetFloat(k_MyValuePropertyNameID, Mathf.Cos(Time.time * m_Frequency + m_Phase));
    }
}
```

Note: `VisualEffect` reuses `Shader.PropertyToID` for its property IDs — same caching
rule as materials. Typed setters mirror the Material API: `SetFloat`, `SetInt`,
`SetBool`, `SetVector2/3/4`, `SetTexture`, `SetGradient`, `SetAnimationCurve`,
`SetMesh`, plus `Get*`/`Has*` (see `references/api/VFX.VisualEffect.SetFloat.md` and
sibling `VFX.VisualEffect.*` pages). Setting a property automatically flips its
overridden state to true.

### Playback & events

```csharp
m_Vfx.Play();                 // VFX.VisualEffect.Play.md
m_Vfx.Stop();                 // VFX.VisualEffect.Stop.md
m_Vfx.SendEvent("OnExplode"); // VFX.VisualEffect.SendEvent.md — trigger a graph event
m_Vfx.Reinit();               // VFX.VisualEffect.Reinit.md — full reset
int alive = m_Vfx.aliveParticleCount; // VFX.VisualEffect-aliveParticleCount.md
```

`VFX.VisualEffect.SendEvent` with a `VFXEventAttribute`
(`VFX.VisualEffect.CreateVFXEventAttribute.md`) lets you attach data (position,
color, count) to the event the graph spawns from.

---

## 3. Choosing for *this* project

The benchmark targets short sessions and mid-tier hardware (mobile→PC). Prefer
**Shuriken** for the common case — it is fully scriptable, CPU-cheap at the
thousands scale, and runs everywhere. Reach for **VFX Graph** only when an effect
genuinely needs GPU-scale particle counts and you've confirmed compute-shader
support on target platforms.

## 4. Where in `api/`

- Choice/comparison: `ChoosingYourParticleSystem.md`.
- Shuriken: `ParticleSystem-main.md`, `ParticleSystem.MainModule.md`,
  `ParticleSystem-emission.md`, `ParticleSystem.EmissionModule.md`,
  `ParticleSystem.Burst.md`, `ParticleSystem.Play.md`, `ParticleSystem.Stop.md`,
  `ParticleSystem.CollisionModule.md`, `ParticleSystemRenderer.md`,
  `ParticleSystem.EmitParams.md` / `ParticleSystem.Emit.md`.
- VFX Graph: `VFX.VisualEffect.SetFloat.md` (+ `SetInt/SetVector3/SetTexture/…`),
  `VFX.VisualEffect.Play.md`, `VFX.VisualEffect.Stop.md`,
  `VFX.VisualEffect.SendEvent.md`, `VFX.VisualEffect.Reinit.md`,
  `VFX.VisualEffect.CreateVFXEventAttribute.md`, `VFX.VFXRenderer.md`,
  `VFX.VFXManager.md`.
