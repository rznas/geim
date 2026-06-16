# Playing sound & attenuation (C++)

Doc-sourced from `references/api/` (UE 5.6/5.7), not compile-tested here (no
engine). Ground pages: `Working_with_Audio_Audio_in_Unreal_Engine_Audio_Engine_Overview.md`,
`Working_with_Audio_Spatialization_and_Sound_Attenuation_Sound_Attenuation.md`,
`Working_with_Audio_Audio_in_Unreal_Engine_Audio_Engine_Overview.md` (Gameplay
Audio API), `Working_with_Audio_Sound_Sources_*`.

## Sound asset types — all are `USoundBase`

Every playable sound derives from `USoundBase`, so the play APIs accept any of:

| Asset | C++ type | Use for |
|-------|----------|---------|
| **Sound Wave** | `USoundWave` | a single imported clip. Internally stored 16-bit uncompressed `.wav`; compressed per-platform at cook. |
| **Sound Cue** | `USoundCue` | *legacy* node graph: randomization, concatenation, simple distance/volume logic. Still supported. |
| **MetaSound Source** | a `UMetaSoundSource` (a `USoundBase`) | the *modern* procedural graph; runtime-settable Inputs. Preferred for parameterized/procedural sound. |

Reference them with a UPROPERTY so designers assign in the editor and the GC
keeps them alive:

```cpp
UPROPERTY(EditAnywhere, BlueprintReadWrite, Category = "Audio")
TObjectPtr<USoundBase> Sound;
```

## The Gameplay Audio API: PlaySound vs SpawnSound

From the Audio Engine Overview, the API splits into two families:

- **PlaySound functions** (`PlaySound2D`, `PlaySoundAtLocation`, `PlayDialogue2D`,
  …) — *fire-and-forget*: "Once the sound is playing, you can't modify its
  playback from Blueprint, or attach it to objects." Cheapest; for one-shots that
  need no further control.
- **SpawnSound functions** (`SpawnSound2D`, `SpawnSoundAtLocation`,
  `SpawnSoundAttached`) — return a **`UAudioComponent`** you can keep: "create an
  audio component to dynamically control parameters on a sound, attach the sound
  to other actors, and control looping sounds."

```cpp
#include "Kismet/GameplayStatics.h"
#include "Sound/SoundBase.h"
#include "Sound/SoundAttenuation.h"
#include "Components/AudioComponent.h"

// --- PlaySound: fire-and-forget ---
UGameplayStatics::PlaySound2D(WorldContextObject, Sound,
    /*VolumeMultiplier*/ 1.0f, /*PitchMultiplier*/ 1.0f, /*StartTime*/ 0.0f);

UGameplayStatics::PlaySoundAtLocation(WorldContextObject, Sound,
    Location, /*Rotation*/ FRotator::ZeroRotator,
    /*VolumeMultiplier*/ 1.0f, /*PitchMultiplier*/ 1.0f, /*StartTime*/ 0.0f,
    /*AttenuationSettings*/ Attenuation, /*ConcurrencySettings*/ nullptr,
    /*OwningActor*/ this);

// --- SpawnSound: returns a controllable component ---
UAudioComponent* Comp2D = UGameplayStatics::SpawnSound2D(WorldContextObject, Sound);

UAudioComponent* CompAt = UGameplayStatics::SpawnSoundAtLocation(
    WorldContextObject, Sound, Location, FRotator::ZeroRotator,
    /*VolumeMultiplier*/ 1.0f, /*PitchMultiplier*/ 1.0f, /*StartTime*/ 0.0f,
    Attenuation, /*ConcurrencySettings*/ nullptr, /*bAutoDestroy*/ true);

UAudioComponent* CompAttached = UGameplayStatics::SpawnSoundAttached(
    Sound, AttachToComponent, /*AttachPointName*/ NAME_None,
    /*Location*/ FVector::ZeroVector, EAttachLocation::KeepRelativeOffset,
    /*bStopWhenAttachedToDestroyed*/ true,
    /*VolumeMultiplier*/ 1.0f, /*PitchMultiplier*/ 1.0f, /*StartTime*/ 0.0f,
    Attenuation, /*ConcurrencySettings*/ nullptr, /*bAutoDestroy*/ true);
```

> Exact argument lists vary slightly by engine version. Treat the names/order
> above as the documented shape and let your IDE/intellisense confirm the
> signature against the installed engine. The first parameter to the
> `UGameplayStatics::PlaySound*` / `SpawnSound2D`/`SpawnSoundAtLocation` calls is a
> `UObject* WorldContextObject` (pass `this` from an actor).

### Which one to use

- **One-shot, no control** (impact, footstep, UI click) → `PlaySound2D` /
  `PlaySoundAtLocation`.
- **Looping / needs to follow a moving actor** (engine hum, character VO,
  ambience emitter) → `SpawnSoundAttached` or a `UAudioComponent` on the actor.
- **Controllable but 2D** (music you crossfade/duck, set MetaSound params on) →
  `SpawnSound2D` (returns a component) or a `UAudioComponent`.

## The `UAudioComponent` — most control

A `UAudioComponent` on an actor is the most flexible source. Set its `Sound`,
then drive it:

```cpp
// in the constructor:
AudioComponent = CreateDefaultSubobject<UAudioComponent>(TEXT("AudioComponent"));
RootComponent  = AudioComponent;
AudioComponent->bAutoActivate = false;           // we Play() it ourselves

// at runtime:
AudioComponent->SetSound(Sound);
AudioComponent->AttenuationSettings = Attenuation;   // null = 2D, set = 3D
AudioComponent->Play(/*StartTime*/ 0.0f);
AudioComponent->FadeIn(/*FadeInDuration*/ 1.0f, /*FadeVolumeLevel*/ 1.0f);
AudioComponent->FadeOut(/*FadeOutDuration*/ 1.0f, /*FadeVolumeLevel*/ 0.0f);
AudioComponent->Stop();
AudioComponent->SetVolumeMultiplier(0.5f);
AudioComponent->SetPitchMultiplier(1.2f);
bool bPlaying = AudioComponent->IsPlaying();
```

Bind `OnAudioFinished` to know when a non-looping sound ends (useful for VO
queues and verification). `bAutoActivate = false` keeps it silent until you call
`Play()`; leave it `true` to start on spawn.

## SFX variety

Vary one-shots so they don't sound robotic — randomize pitch and pick from a set:

```cpp
const float Pitch = 1.0f + FMath::FRandRange(-0.1f, 0.1f);
USoundBase* Pick = Clips[FMath::RandRange(0, Clips.Num() - 1)];
UGameplayStatics::PlaySoundAtLocation(this, Pick, GetActorLocation(),
    FRotator::ZeroRotator, 1.0f, /*PitchMultiplier*/ Pitch);
```

A **Sound Cue** can do this internally (Random node), and a **MetaSound** can do
it with a Wave Player driven by a Random/Trigger graph — preferring those keeps
the C++ side simple. Use a **Sound Concurrency** asset to cap how many of a sound
type play at once (`api/…Sound_Concurrency_Reference_Guide.md`).

## Attenuation & spatialization — the 2D/3D switch

There is **no `spatialBlend` float** like Unity. Whether a sound is 3D is decided
by a **`USoundAttenuation`** asset (a *Sound Attenuation Settings* asset) attached
to the sound:

- **No attenuation asset** → the sound is **2D / flat**: "no panning will be
  applied, regardless of the sound's source position relative to the listener."
  Correct for music, UI, room tone.
- **Attenuation asset with Enable Spatialization = true** → the sound is
  positional: it pans and (if Enable Volume Attenuation is on) falls off by
  distance.

Spatialization and volume attenuation are **orthogonal** — you can have distance
falloff without panning, and vice versa.

### Attenuation asset properties (set in the editor)

- **Attenuation Function** — Linear (default), Logarithmic (good 3D spot sounds),
  Inverse (very near-focused), Log Reverse, Natural Sound, Custom curve.
- **Attenuation Shape** — Sphere (default spot sound), Capsule (pipes), Box (room
  tone), Cone (directional, e.g. PA speakers).
- **Inner shape** (full volume) — Inner Radius / Capsule Half Height + Radius /
  Extents / Cone Radius + Angle.
- **Falloff Distance** — outer edge measured from the inner area; min volume here.
- **Spatialization Method** — Panning (loudspeakers; linear or equal-power, set in
  Project Settings) or Binaural (headphones, via a spatialization plugin).
- **Non-Spatialized Radius** — within this, the sound bleeds to all channels (big
  sounds fill the field up close).
- **Air Absorption** — distance-based low-pass (and optional high-pass) to model
  air; min/max distance + cutoff.
- **Focus** — boost/scale sounds in front of the listener.
- **Reverb Send** — how much to send to reverb by distance (needs reverb set up).
- **Occlusion** — async trace (default Visibility channel) that low-passes +
  attenuates a sound when something blocks the line to the listener; physics
  traces tie in here (see `unreal-physics-and-ai`).
- **Submix / Source Data Override** — distance-based submix sends, plugin hooks.

```cpp
// Reference + apply an attenuation asset:
UPROPERTY(EditAnywhere, Category = "Audio")
TObjectPtr<USoundAttenuation> Attenuation;

AudioComponent->AttenuationSettings = Attenuation;          // on a component
// or pass it to PlaySoundAtLocation / SpawnSoundAtLocation as AttenuationSettings.
```

## The listener

3D panning is relative to the **audio listener** — by default the active
`PlayerController`'s view/camera. Multiple sounds compete via **polyphony /
voice management** (a project-setting cap) resolved by total volume + priority;
once the cap is hit, low-priority/quiet sounds are rejected or stopped
(`api/…Audio_Engine_Overview.md`). Keep this in mind when "a sound didn't play" —
it may have lost a concurrency/priority contest, not failed to fire.

## Blueprint equivalents

Every call here has a Blueprint node of the same name (PlaySound 2D, Play Sound
at Location, Spawn Sound Attached, Set Float Parameter, …). Lead with C++; expose
your wrappers with `UFUNCTION(BlueprintCallable)` when designers need them — see
`unreal-blueprints`.
