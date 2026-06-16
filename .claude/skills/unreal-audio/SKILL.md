---
name: unreal-audio
description: >
  Implement sound and music in an Unreal Engine 5.6/5.7 C++ game — playing
  sounds, spatialization/attenuation, the Sound Class / Sound Mix / Submix mixing
  hierarchy, reverb via Audio Volumes, and MetaSounds (the modern procedural
  audio graph) with parameters set from C++. Use this whenever you are adding
  sound effects or background music, playing a USoundBase from C++
  (UGameplayStatics::PlaySoundAtLocation / PlaySound2D / SpawnSoundAttached /
  SpawnSound2D, or a UAudioComponent on an actor), making a sound positional/3D,
  attaching a USoundAttenuation asset so a 3D sound actually pans and falls off,
  routing sounds through Sound Classes and ducking with a Sound Mix, sending to a
  Submix or adding submix effects, applying reverb with an Audio Volume, or
  driving a MetaSound's Input parameters at runtime (SetFloatParameter /
  SetIntParameter / SetTriggerParameter / SetBoolParameter on the audio
  component). Reach for it any time the task is "play a sound when X", "add
  background music", "make footsteps 3D / positional", "the sound plays
  everywhere / won't pan", "duck the music when dialogue plays", "add reverb in
  this room", "why is there no sound", "the volume slider does nothing", "use a
  MetaSound instead of a Sound Cue", or "set a MetaSound parameter from gameplay".
  It has the verified C++ playback API (UGameplayStatics PlaySound/SpawnSound,
  UAudioComponent), the attenuation/spatialization model, the Sound Class → Sound
  Mix → Submix volume hierarchy, and the MetaSound parameter interface. Covers
  Composer and Sound Designer implementation work (and Agent 5's Audio Director
  direction realized in code). Assumes a buildable project (unreal-project-setup).
---

# Unreal Audio (C++)

Sound in Unreal Engine flows: a **Sound asset** (`USoundWave` from an imported
`.wav`, a `USoundCue` node graph, or a **MetaSound Source** — all are
`USoundBase`) → played either fire-and-forget (`UGameplayStatics::PlaySound*`) or
through a controllable **`UAudioComponent`** (`SpawnSound*` / a component on an
actor) → optionally a **`USoundAttenuation`** asset for 3D positioning → a
**Sound Class** (grouped volume) modulated by **Sound Mixes** → one or more
**Submixes** (DSP/effects) → the master submix → speakers. You implement audio by
playing `USoundBase`s from C++, attaching attenuation for 3D, and controlling the
mix through the Sound Class / Mix / Submix hierarchy.

> UE 5.6/5.7. Snippets are doc-sourced from the embedded UE 5.6/5.7 documentation
> (`references/api/`), not compile-tested in this environment (no engine
> installed). Sound assets, attenuation, the mix hierarchy, and MetaSounds are
> authored in the editor; this skill wires playback and runtime control in C++.

## The one thing that trips everyone up

Three Unreal-specific audio facts cause most failures:

1. **A 3D/positional sound needs a `USoundAttenuation` asset — without one the
   sound is 2D and plays flat everywhere.** Per `api/…Spatialization_and_Sound_Attenuation_Sound_Attenuation.md`:
   when an attenuation asset has **Enable Spatialization** off (or no attenuation
   asset is provided at all), the sound "will be non-spatialized, and will
   effectively become a 2D 'flat' sound … no panning will be applied, regardless
   of the sound's source position relative to the listener." 2D is correct for
   music/UI; for a world sound the player should localize, you **must** pass a
   `USoundAttenuation*` (and it must have spatialization + volume attenuation
   enabled). `PlaySoundAtLocation` / `SpawnSoundAtLocation` take an
   `AttenuationSettings` argument; leave it null and you get a flat 2D sound.

2. **Use a MetaSound, not a Sound Cue, for anything procedural or parameterized.**
   MetaSounds are "a high-performance audio system that provides … complete
   control over a DSP graph" and "easily integrate with game data and player
   interactions" — their Inputs are settable from C++ through the audio
   component's **parameter interface**
   (`api/…MetaSounds_The_Next_Generation_Sound_Sources.md`). The legacy
   **Sound Cue** is still fine for simple randomization/concatenation, but the
   modern choice for runtime-controlled sound (engine RPM, footstep surface, music
   intensity) is a MetaSound Source whose Inputs you drive with
   `SetFloatParameter` / `SetTriggerParameter` on the component.

3. **Volume/mixing is the Sound Class → Sound Mix → Submix hierarchy, not
   per-source magic.** A **Sound Class** groups sounds and "control[s] volumes of
   sounds as a group"; a **Sound Mix** "applies dynamic Sound Class volume and
   pitch adjusters" and is "the traditional method … to perform Class-based volume
   control, including ducking"
   (`api/…Audio_in_Unreal_Engine_Audio_Engine_Overview.md`). You change a group's
   loudness by pushing a Sound Mix (`UGameplayStatics::PushSoundMixModifier` /
   `SetSoundMixClassOverride`), not by writing volume on every source. **Submixes**
   sit underneath for DSP/effects and are a separate, parallel graph.

`USoundBase`/`UAudioComponent` volume args are linear multipliers (1.0 = full).
Don't confuse a per-call `VolumeMultiplier` with the group-level Sound Mix.

## Playing sound from C++ — verified idioms

All four below take a `USoundBase*` (a `USoundWave`, `USoundCue`, **or** a
MetaSound Source — they share the base). Per the Gameplay Audio API
(`api/…Audio_Engine_Overview.md`), **PlaySound** functions are fire-and-forget
("Once the sound is playing, you can't modify its playback … or attach it to
objects") while **SpawnSound** functions return a `UAudioComponent` you can keep
controlling.

```cpp
#include "Kismet/GameplayStatics.h"
#include "Sound/SoundBase.h"
#include "Sound/SoundAttenuation.h"
#include "Components/AudioComponent.h"

// 2D, fire-and-forget — music, UI, narration. No world position, no panning.
UGameplayStatics::PlaySound2D(this, MyMusic /*USoundBase* */, /*Volume*/ 1.0f);

// 3D one-shot at a world location. Pass an attenuation asset or it plays FLAT.
UGameplayStatics::PlaySoundAtLocation(
    this,
    ImpactSound,                 // USoundBase*
    GetActorLocation(),          // FVector
    /*VolumeMultiplier*/ 1.0f,
    /*PitchMultiplier*/  1.0f,
    /*StartTime*/        0.0f,
    Attenuation,                 // USoundAttenuation* — REQUIRED for 3D falloff/pan
    /*ConcurrencySettings*/ nullptr);

// 3D, controllable, follows an actor/component as it moves. Returns a component.
UAudioComponent* Loop = UGameplayStatics::SpawnSoundAttached(
    EngineLoop,                  // USoundBase* (often a MetaSound for params)
    GetRootComponent(),          // attach to this scene component
    NAME_None,                   // optional socket
    FVector::ZeroVector,
    EAttachLocation::KeepRelativeOffset,
    /*bStopWhenAttachedToDestroyed*/ true);
```

| Call | Use for |
|------|---------|
| `UGameplayStatics::PlaySound2D(World, Sound, Vol, Pitch)` | non-positional one-shot: UI, stingers, 2D music. |
| `UGameplayStatics::PlaySoundAtLocation(World, Sound, Loc, …, Attenuation)` | 3D one-shot at a fixed world point (explosion, footstep). Pass attenuation for falloff. |
| `UGameplayStatics::SpawnSound2D(World, Sound)` | 2D but **controllable** — returns a `UAudioComponent` you can `Stop()`/fade/set params on (looping music). |
| `UGameplayStatics::SpawnSoundAttached(Sound, Comp, …)` | 3D, follows a moving actor (engine hum, character voice). Returns the component. |
| a `UAudioComponent` added on an actor (set `Sound`, call `Play()`) | the most control: persistent looping source, MetaSound params, fades. |

A `UAudioComponent` set up on the actor is the most flexible path — set its
`Sound`, then `Play()` / `Stop()` / `FadeIn()` / `FadeOut()` and set MetaSound
parameters on it. The scaffold script writes exactly this actor. Full call
signatures and one-shot-vs-component trade-offs are in
`references/playing_sound_and_attenuation.md`.

## 2D vs 3D — the attenuation asset

There is no per-source `spatialBlend` slider as in Unity — **spatialization lives
on a `USoundAttenuation` asset** (assigned on the sound, in a Sound Cue, passed
to `PlaySoundAtLocation`, or set on a `UAudioComponent`). With **Enable
Spatialization** + **Enable Volume Attenuation** on, the sound pans and falls off
by distance using the chosen function (Linear / Logarithmic / Inverse / Natural)
and shape (Sphere / Capsule / Box / Cone), between an inner radius and a falloff
distance (`api/…Sound_Attenuation.md`).

```cpp
// Assign attenuation + sound on a UAudioComponent (e.g. in the .h as UPROPERTY)
UPROPERTY(EditAnywhere, Category = "Audio")
TObjectPtr<USoundBase> Sound;

UPROPERTY(EditAnywhere, Category = "Audio")
TObjectPtr<USoundAttenuation> Attenuation;   // null = 2D / flat

// at runtime:
AudioComp->SetSound(Sound);
AudioComp->AttenuationSettings = Attenuation;   // makes it positional
AudioComp->Play();
```

No attenuation asset = 2D. Attenuation present but spatialization disabled = still
2D, but distance volume attenuation can apply independently (the docs call
spatialization and attenuation "orthogonal"). Shapes, functions, occlusion, air
absorption, focus, and reverb-send curves are all on this asset — detail in
`references/playing_sound_and_attenuation.md`.

## The mixing hierarchy — Sound Class, Sound Mix, Submix

Author **Sound Classes** (group volume/pitch/LPF), assign each sound a class, then
change groups at runtime by **pushing a Sound Mix** — this is how you build a
Master/Music/SFX volume tree and how you duck:

```cpp
// Push a Sound Mix (e.g. a "DialogueDuck" mix that lowers the Music class):
UGameplayStatics::PushSoundMixModifier(this, DialogueDuckMix);   // USoundMix*
// … when dialogue ends:
UGameplayStatics::PopSoundMixModifier(this, DialogueDuckMix);

// Or override one class's volume/pitch within a mix at runtime (good for sliders):
UGameplayStatics::SetSoundMixClassOverride(
    this, MasterMix, MusicClass, /*Volume*/ 0.4f, /*Pitch*/ 1.0f,
    /*FadeInTime*/ 0.5f, /*bApplyToChildren*/ true);
UGameplayStatics::PushSoundMixModifier(this, MasterMix);
```

A Sound Class "control[s] volumes of sounds as a group"; a Sound Mix "applies
dynamic Sound Class volume and pitch adjusters … including ducking." Ducking can
also be **passive**: attach a Sound Mix as a *Passive Sound Mix Modifier* on a
class so it fires automatically when any sound in that class plays — no C++ needed
(`api/…Audio_Mixing_Sound_Classes.md`).

**Submixes** are the parallel DSP layer: "a DSP graph that is always running." A
sound's *base submix* gets 100% of its audio; *submix sends* route a portion
elsewhere. Add/replace submix effects, send dynamically, or set output volume
from C++/Blueprint (`api/…Submixes_Overview.md`). The full Class/Mix/Submix
model, a 0–1 slider → Sound Mix wiring, and reverb-via-Audio-Volume are in
`references/mixing_submixes_metasounds.md`.

## Reverb — Audio Volumes

Reverb is applied by placing an **Audio Volume** actor over a region: enable
**Apply Reverb**, pick a **Reverb Effect** preset, set **Volume** and **Fade
Time**. Overlapping volumes resolve by **Priority** (higher wins). A sound only
gets reverb if its attenuation has **Enable Reverb Send** on and its Sound Class
allows it. This is editor-placed level work; gameplay C++ rarely touches it.
Detail in `references/mixing_submixes_metasounds.md`
(`api/…Audio_Volume_Actors_Audio_Volumes.md`).

## MetaSounds — parameters from C++

A **MetaSound Source** is a `USoundBase`, so you play it exactly like any sound
(above). Its power is **Inputs** you set at runtime through the audio component's
parameter interface — the modern replacement for Sound Cue parameter mapping:

```cpp
// Play a MetaSound on a component, then drive its named Inputs from gameplay:
UAudioComponent* Music = UGameplayStatics::SpawnSound2D(this, MusicMetaSound);
Music->SetFloatParameter(FName("Intensity"), 0.8f);   // a Float Input named "Intensity"
Music->SetIntParameter(FName("Section"),   2);        // an Int32 Input
Music->SetBoolParameter(FName("Combat"),   true);     // a Bool Input
Music->SetTriggerParameter(FName("Stinger"));         // fire a Trigger Input
```

MetaSound Inputs are created in the **Members** panel of the MetaSound Editor and
matched by exact `FName`. A MetaSound Source has a `UE.Source.OneShot` interface
by default (it stops itself via **On Finished**) — **remove that interface** for
indefinite music/ambience or it ends. `UE.Spatialization` / `UE.Attenuation`
interfaces expose Azimuth/Elevation/Distance Inputs for in-graph spatial behavior.
Note: pins flagged **Is Constructor Pin** can only be set *before* play
(`api/…MetaSounds_Reference_Guide.md`,
`api/…MetaSounds_The_Next_Generation_Sound_Sources.md`). MetaSound vs Sound Cue,
the interfaces, and music patterns (incl. Quartz beat-sync) are in
`references/mixing_submixes_metasounds.md`.

## Scaffold

`scripts/new_audio_actor.sh <ModulePath> <ActorName> [Module]` writes a C++
`AActor` (`.h`/`.cpp`) with a `UAudioComponent`: it sets a `USoundBase` + optional
`USoundAttenuation` and `Play()`s on `BeginPlay`, plus a `PlayOneShotAtLocation()`
helper that calls `UGameplayStatics::PlaySoundAtLocation` with the attenuation
asset. File-only (no engine); add `"AudioMixer"`-free — only `Engine` is needed —
and wire the assets in the editor. Sound asset / attenuation / Sound Class
authoring stays editor work.

## Importing audio & assets

Drop a `.wav` into the Content Browser; the engine stores it as a `USoundWave`
(16-bit uncompressed internally, compressed per-platform at cook). `.wav` for
short low-latency SFX; build music/ambience as a MetaSound Source (remove its
OneShot interface) or a long `USoundWave`. Reference sounds via
`UPROPERTY(EditAnywhere) TObjectPtr<USoundBase>` and assign in the editor, or load
with `LoadObject`/a soft reference for runtime-chosen sounds. See
`api/…Sound_Waves_Importing_Audio_Files.md`.

## Verifying

Audio C++ compiles like any gameplay code. There's no engine here, so you can't
compile-test; for "did the sound actually fire", check `UAudioComponent::IsPlaying()`
or bind its `OnAudioFinished` delegate in an automation/functional test — hand to
your QA setup. Console debug commands ground truth in-editor: `stat soundwave`
(playing waves), `stat soundcues`, `au.Debug.Sounds 1`, `Audio3DVisualize`
(`api/…Audio_Engine_Overview.md`, `api/…Audio_Debugging*.md`). A headless/null
audio device renders no real sound, so assert on **playback state**, not output.

## Troubleshooting

`references/troubleshooting.md`: no sound (null `Sound`, no `Play()`, muted/zero
Sound Class volume, no AudioListener, played on a server-only context), sound
plays flat everywhere (no attenuation asset / spatialization disabled), volume
slider does nothing (changing a source instead of pushing a Sound Mix / wrong
class), ducking doesn't trigger (mix not pushed / passive thresholds), MetaSound
param ignored (wrong `FName`, constructor pin set after play, OneShot ended the
sound), reverb absent (no Audio Volume / reverb-send off / class disallows it),
music stops on its own (MetaSound `UE.Source.OneShot` interface not removed).

## What this covers / hands off to

Covers **Composer** (music, soundtracks, dynamic/interactive music) and **Sound
Designer** (SFX) implementation work, and Agent 5's Audio Director direction
realized in C++. Hands off to: **`unreal-project-setup`** (a buildable project +
module `.Build.cs` — prerequisite), **`unreal-gameplay-cpp`** (triggering sounds
from gameplay events, the actor/component lifecycle, `UPROPERTY`/`UFUNCTION`),
**`unreal-blueprints`** (the Blueprint equivalents — every audio API here has a
BP node), **`unreal-ui-umg`** (a settings screen whose volume slider calls
`SetSoundMixClassOverride`), **`unreal-physics-and-ai`** (occlusion traces feed
attenuation occlusion), **`unreal-build-deploy-multiplayer`** (shipping audio,
per-platform cook quality, and the play-sounds-on-the-right-client rule). Depth in
`references/playing_sound_and_attenuation.md`,
`references/mixing_submixes_metasounds.md`, `references/troubleshooting.md`, and
the exhaustive `references/api/`.
