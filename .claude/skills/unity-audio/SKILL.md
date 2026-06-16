---
name: unity-audio
description: >
  Implement sound and music in a Unity 6 (6000.x) C# game — playing clips,
  mixing through an AudioMixer, spatial audio, and dynamic music. Use this
  whenever you are adding sound effects or background music, setting up an
  AudioSource (Play / PlayOneShot / PlayClipAtPoint), placing the single
  AudioListener, routing sources to AudioMixer groups (Master/Music/SFX),
  exposing a mixer parameter and wiring a 0–1 volume slider to it (the dB
  conversion), making a sound positional/3D via spatialBlend, randomizing
  pitch/clip for SFX variety, or ducking music under dialogue with snapshots.
  Reach for it any time the task is "play a sound when X", "add background
  music", "make footsteps positional / 3D", "the gun should sound different each
  shot", "hook the volume slider to the SFX mixer group", "duck the music when
  dialogue plays", "why is there no sound", or "the slider does nothing". It has
  the verified C# audio API (AudioSource.PlayOneShot, AudioMixer.SetFloat in dB
  via an exposed param) and the source→mixer→listener model. Covers Composer and
  Sound Designer implementation work. Assumes a buildable project
  (unity-project-setup).
---

# Unity Audio (C#)

Sound in Unity flows: an **AudioClip** (imported `.wav`/`.ogg`/`.mp3`) → an
**AudioSource** component on a GameObject → (optionally) an **AudioMixerGroup**
in an **AudioMixer** asset → the one **AudioListener** (usually on the Main
Camera) → speakers. You implement SFX/music by putting AudioSources in the
scene, routing them to mixer groups, and driving playback + volume from C#.

> Unity 6 (6000.x). Snippets are doc-sourced from the embedded Unity 6
> ScriptReference (`references/api/`) and **compile-verified against Unity
> 6000.4.10f1** — the `new_audio_manager.sh` output compiles clean headless.

## The one thing that trips everyone up

Three Unity-specific audio facts that cause most failures:

1. **Exactly ONE AudioListener.** `api/AudioListener.md`: "You can only have one
   listener in a Scene." **Zero = total silence; two+ = warnings and a wrong
   mix.** It lives on the Main Camera by default — if you swap cameras, make sure
   exactly one active object carries it.
2. **Mixer volume is DECIBELS, not 0–1, and only settable via an EXPOSED
   parameter.** You can't set a group's volume by name directly — first
   right-click it in the mixer Inspector → "Expose … to script", name it (e.g.
   `MusicVol`), then `mixer.SetFloat("MusicVol", dB)`. A 0–1 UI slider must be
   converted: `mixer.SetFloat("MusicVol", Mathf.Log10(linear) * 20)`. And a
   slider at **0** must map to **-80 dB**, never `log10(0)` (= `-infinity`).
   (`api/Audio.AudioMixer.SetFloat.md`.)
3. **3D audio needs `spatialBlend = 1`.** Default `spatialBlend = 0` is full 2D —
   no attenuation, no panning. A world sound left at 0 plays flat everywhere.
   (`api/AudioSource-spatialBlend.md`.)

`AudioSource.volume` is the one place audio is linear 0–1; mixer-group volume is
dB. Don't confuse the two.

## Playing sound — verified idioms

Get the component, then play. From `api/AudioSource.Play.md` / `.PlayOneShot.md`:

```csharp
using UnityEngine;

[RequireComponent(typeof(AudioSource))]
public class Gun : MonoBehaviour
{
    public AudioClip shot;
    AudioSource audioSource;

    void Start() { audioSource = GetComponent<AudioSource>(); }

    void Fire()
    {
        // PlayOneShot layers overlapping SFX (does NOT cut the previous shot).
        audioSource.PlayOneShot(shot, 0.7f);   // 2nd arg scales this shot's volume
    }
}
```

| Call | Use for |
|------|---------|
| `audioSource.Play()` (plays `clip`) | one persistent sound: music, looping hum. Calling again **restarts** it. |
| `audioSource.PlayOneShot(clip, vol)` | many short overlapping SFX off one source — they don't cut each other. |
| `AudioSource.PlayClipAtPoint(clip, pos)` | static fire-and-forget at a world position; auto-creates + disposes a temp source. |

Assigning `clip` does **not** auto-play — call `Play()` after
(`api/AudioSource-clip.md`). Full Play/Pause/Stop, 2D-vs-3D, looping, and the
single-listener rules are in `references/audiosource_and_playback.md`.

## 2D vs 3D — `spatialBlend`

```csharp
audioSource.spatialBlend = 1.0f;   // full 3D: attenuates + pans by world position
// 0.0f = full 2D (music, UI, narration); in-between morphs the two
```

`spatialBlend = 0` for non-positional (music/UI), `1` for sounds the player
should localize in the world. Attenuation runs between `minDistance` and
`maxDistance` per `rolloffMode`. Details in
`references/audiosource_and_playback.md`.

## SFX variety — randomize pitch + clip

The cheapest way to stop repeated SFX sounding robotic (`api/AudioSource-pitch.md`,
pitch clamped [-3..3]):

```csharp
audioSource.pitch = 1f + Random.Range(-0.1f, 0.1f);            // slight pitch jitter
audioSource.PlayOneShot(clips[Random.Range(0, clips.Length)]); // random clip from a set
```

## Routing & the volume slider — the dB conversion

Author the mixer + groups in the editor ("Create your AudioMixerGroups in the
editor before referencing them in code" — `api/Audio.AudioMixerGroup.md`), route
sources, then drive an **exposed** param from a 0–1 slider:

```csharp
using UnityEngine;
using UnityEngine.Audio;

public class AudioSettings : MonoBehaviour
{
    public AudioMixer mixer;
    public AudioSource sfxSource;

    void Start()
    {
        // Route a source to a group (or set it in the inspector's Output field):
        sfxSource.outputAudioMixerGroup = mixer.FindMatchingGroups("SFX")[0];
    }

    // Wire a UI Slider's onValueChanged (0..1) to this.
    public void SetGroupVolume(string exposedParam, float linear01)
    {
        // dB = log10(linear) * 20. Clamp 0 to -80 dB, NOT log10(0) = -infinity.
        float dB = linear01 <= 0.0001f ? -80f : Mathf.Log10(linear01) * 20f;
        mixer.SetFloat(exposedParam, dB);   // returns false if param not exposed
    }
}
```

`SetFloat`/`GetFloat` return `false` if the exposed name isn't found, and must
**not** be called in `Awake`/`OnEnable`/`AfterSceneLoad` — call in `Start` or
later (`api/Audio.AudioMixer.SetFloat.md`). The full group model, exposed-param
rules, and the dB scale are in `references/mixer_and_volume.md`.

## Dynamic music & ducking — snapshots

Capture whole-mixer states as snapshots and transition between them for moods
(combat/calm, underwater) and to duck music under dialogue
(`api/Audio.AudioMixerSnapshot.TransitionTo.md`, `api/AudioMixerOverview.md`):

```csharp
AudioMixerSnapshot combat = mixer.FindSnapshot("Combat");  // exact name match
combat.TransitionTo(0.5f);                                 // interpolate over 0.5s
```

Snapshot ducking (a `Dialogue` snapshot that drops Music/SFX) is the cleanest
way to make VO cut through. Patterns and the built-in mixer Ducking unit are in
`references/mixer_and_volume.md`.

## Scaffold

`scripts/new_audio_manager.sh <projdir> [ClassName] [subdir]` writes a singleton
`AudioManager` MonoBehaviour: `PlaySfx` (pitch-randomized one-shots + random
clip pick), `PlaySfxAt` (positional via `PlayClipAtPoint`), and `SetGroupVolume`
(the 0–1→dB conversion with the -80 floor). File-only; mixer setup and source
routing remain editor work.

## Importing audio

Drop `.wav`/`.ogg`/`.mp3` into `Assets/`; Unity creates an AudioClip with import
settings (Load Type, compression, loop) in the importer Inspector. `.wav` for
short low-latency SFX, compressed (`.ogg`/Vorbis) for music. Reference clips via
`[SerializeField]`/`public AudioClip` fields and assign in the inspector (or load
via Addressables/Resources for runtime-chosen clips).

## Verifying

Audio C# compiles like any gameplay code. There's no Editor here, so you can't
compile-test; for "did the sound actually fire", drive a source in a PlayMode
test and assert on `AudioSource.isPlaying` / a state flag — `unity-qa-testing`
does this. Note: `-batchmode -nographics` uses a dummy audio driver, so you
assert on playback **state**, not real sound output.

## Troubleshooting

`references/troubleshooting.md`: no sound (no/duplicate AudioListener, no clip,
muted, wrong/None mixer group), slider does nothing (param not exposed / linear
fed where dB expected / called too early), -inf dB from `log10(0)`, 3D audio
flat (`spatialBlend = 0`), SFX cut off (use `PlayOneShot`), music won't loop.

## What this covers / hands off to

Covers **Composer** and **Sound Designer** implementation work (and Agent 5's
Audio Director direction realized in code). Hands off to: **`unity-project-setup`**
(buildable project — prerequisite), **`unity-ui-csharp`** (the settings screen /
volume Slider whose `onValueChanged` calls `SetGroupVolume`),
**`unity-gameplay-csharp`** (triggering SFX from gameplay events),
**`unity-qa-testing`** (PlayMode verification of playback state),
**`unity-build-deploy`** (shipping the audio with the build). Depth lives in
`references/audiosource_and_playback.md`, `references/mixer_and_volume.md`,
`references/troubleshooting.md`, and the exhaustive `references/api/`.
