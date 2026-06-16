# AudioMixer, groups, exposed params, volume & snapshots (Unity 6, C#)

An **AudioMixer** is an asset that sits between your AudioSources and the
AudioListener (`api/AudioMixerOverview.md`): you route sources into named
**AudioMixerGroups** (Master / Music / SFX / Dialogue…), apply DSP effects per
group, expose parameters to control from C#, and capture whole-mixer states as
**snapshots** you transition between at runtime.

Grounded in `api/Audio.AudioMixer.md`, `api/Audio.AudioMixer.SetFloat.md`,
`api/Audio.AudioMixer.GetFloat.md`, `api/Audio.AudioMixerGroup.md`,
`api/Audio.AudioMixer.FindSnapshot.md`, `api/Audio.AudioMixerSnapshot.TransitionTo.md`,
`api/Audio.AudioMixer.TransitionToSnapshots.md`, `api/AudioMixerOverview.md`,
`api/AudioMixerSpecifics.md`, `api/AudioSource-outputAudioMixerGroup.md`.

## You build the mixer in the editor; you drive it from C#

`api/Audio.AudioMixerGroup.md` is explicit: "**Create your AudioMixerGroups in
the editor before referencing them in code.**" The mixer asset, its group
hierarchy, the effects on each group, the exposed parameter names, and the
snapshots are all authored in the Audio Mixer window. C# only *reads/sets*
exposed params, transitions snapshots, and routes sources. There is no Editor
in this environment, so the setup steps below are doc-described, not run here.

## Routing a source to a group

Each AudioSource has `outputAudioMixerGroup` — "the target group to which the
AudioSource should route its signal" (`api/AudioSource-outputAudioMixerGroup.md`).
Set it in the inspector (the source's **Output** field) or in code. Find groups
by path with `FindMatchingGroups` (`api/Audio.AudioMixer.md`):

```csharp
using UnityEngine;
using UnityEngine.Audio;

public class AudioManager : MonoBehaviour
{
    public AudioMixer audioMixer;
    public AudioSource musicSource;
    public AudioSource sfxSource;

    void Start()
    {
        // FindMatchingGroups returns all groups whose path matches the substring.
        musicSource.outputAudioMixerGroup = audioMixer.FindMatchingGroups("Music")[0];
        sfxSource.outputAudioMixerGroup   = audioMixer.FindMatchingGroups("SFX")[0];
    }
}
```

(Pattern from `api/Audio.AudioMixerGroup.md`.) Group paths look like
`Master/AMBIENCE/CROWD`; `FindMatchingGroups("AMBIENCE")` returns every group
under that name (`api/Audio.AudioMixer.md`).

If a source's `outputAudioMixerGroup` is **None**, the signal **bypasses the
mixer** entirely — your group effects and volume control won't touch it
(`api/AudioSource-overview.md`). That's a common "the slider does nothing" cause.

## Exposed parameters — the only way to set mixer values from script

You cannot set a group's volume by name directly. You must **expose** the
parameter in the editor first. From `api/Audio.AudioMixer.SetFloat.md`: "To
expose a parameter, go to the Audio Mixer group's Inspector window, right click
the parameter you want to expose, and choose **Expose [parameter name] to
script**." Then name it (e.g. `MusicVol`) in the Exposed Parameters list.

`SetFloat`/`GetFloat` operate on that exposed string name and return `false` if
it isn't found (`api/Audio.AudioMixer.SetFloat.md`, `.GetFloat.md`):

```csharp
bool ok = mixer.SetFloat("MusicVol", -6f);   // false => name not exposed (typo / not exposed)
mixer.GetFloat("MusicVol", out float current);
```

Two gotchas straight from the docs:

- **Timing:** don't call `SetFloat` in `Awake`, `OnEnable`, or
  `AfterSceneLoad` — "it can result in unexpected behavior." Call it in `Start`
  or later (`api/Audio.AudioMixer.SetFloat.md`).
- **It overrides snapshots:** "Once you call this function, mixer snapshots will
  no longer control the exposed parameter, and you can only modify the parameter
  using AudioMixer.SetFloat." Use `ClearFloat(name)` to hand control back to the
  current snapshot (`api/Audio.AudioMixer.md`).

## Mixer volume is DECIBELS, not 0–1

This is THE mixer gotcha. An AudioMixer group's exposed volume parameter is in
**decibels** (the mixer Inspector volume runs along a dB scale —
`api/AudioMixerSpecifics.md`; the official `SetFloat` example ranges the value
over `[-80, 20]` dB — `api/Audio.AudioMixer.SetFloat.md`). Roughly: `0 dB` =
full, `-6 dB` ≈ half perceived loudness, `-80 dB` ≈ silence, positive dB =
boost (can clip). A 0–1 UI slider must be **converted** to dB.

The standard conversion is `dB = log10(linear) * 20`:

```csharp
// Hook a 0..1 slider to an exposed mixer param. Call from a UI Slider's onValueChanged.
public void SetGroupVolume(string exposedParam, float linear01)
{
    // log10(0) is -infinity, which would push the param to -inf dB and misbehave.
    // Clamp linear 0 to -80 dB (effective silence) instead.
    float dB = linear01 <= 0.0001f ? -80f : Mathf.Log10(linear01) * 20f;
    mixer.SetFloat(exposedParam, dB);
}
```

Why `log10*20`: decibels for amplitude are `20 * log10(amplitude_ratio)`. A
slider at 1.0 → `20*log10(1)` = `0 dB` (full). At 0.5 → `20*log10(0.5)` ≈
`-6 dB`. At 0.1 → `-20 dB`. **Never feed 0 into `Mathf.Log10`** — `log10(0)` is
`-Infinity`; special-case it to `-80f`. (`scripts/new_audio_manager.sh`
generates exactly this `SetGroupVolume`.)

> Pitfall: do **not** copy the raw `mixer.SetFloat("MusicVolume", volume)` from
> `api/Audio.AudioMixerGroup.md` that passes a linear 0..1 value — for a real
> volume slider that's wrong (mixer params are dB). Use the conversion above.

A linear AudioSource.volume slider (0..1, no conversion) is the simpler
alternative when you only have one source and don't need group-wide control —
see `audiosource_and_playback.md`. Use the **mixer** path when one slider must
control a whole category (all SFX, all music) routed through a group.

## Snapshots — capture & blend whole-mixer states

A **snapshot** captures the value of every parameter in the mixer (volumes,
pitch, send levels, effect params) — `api/AudioMixerOverview.md`. Author them in
the Snapshot panel; one is the **Start Snapshot** the mixer loads with
(`api/AudioMixerSpecifics.md`). Transition between them at runtime for moods
(combat vs calm, underwater, paused).

Find a snapshot by exact name and transition to it over a time interval
(`api/Audio.AudioMixer.FindSnapshot.md`, `api/Audio.AudioMixerSnapshot.TransitionTo.md`):

```csharp
public AudioMixer mixer;

void EnterCombat()
{
    AudioMixerSnapshot combat = mixer.FindSnapshot("Combat");  // exact name match
    combat.TransitionTo(0.5f);   // interpolate to it over 0.5 seconds
}
```

Blend multiple snapshots by weight with
`AudioMixer.TransitionToSnapshots(snapshots, weights, timeToReach)` for a
continuum of states (`api/Audio.AudioMixer.md`).

## Ducking music under dialogue

Ducking — temporarily lowering one category so another cuts through — is a core
mixer concept (`api/AudioMixerOverview.md`: "Reduce the volume of all the gun
and explosion sounds … to ensure that an NPC talking to you can be heard"). Two
ways:

1. **Snapshot ducking (cleanest):** author a `Dialogue` snapshot that drops the
   Music/SFX group volumes, and a default snapshot at normal levels. When VO
   starts, `dialogueSnapshot.TransitionTo(0.2f)`; when it ends,
   `defaultSnapshot.TransitionTo(0.4f)`. The mixer interpolates the whole mix.
2. **Direct param duck:** lower the exposed Music param while VO plays —
   `mixer.SetFloat("MusicVol", -12f)` on start, restore (or `ClearFloat`) on end.
   Remember `SetFloat` then *holds* the param away from snapshot control until
   you `ClearFloat`.

The AudioGroup Inspector also has a built-in **Ducking** unit (a Send/Receive
sidechain) you configure in-editor (`api/AudioMixerOverview.md`,
`api/AudioMixerSpecifics.md`) — no script needed, the loud category ducks the
quiet one automatically.

## Recommended starter layout

Master → { Music, SFX, UI, Dialogue }, each with an exposed `*Vol` parameter
(`MusicVol`, `SfxVol`, `UiVol`, `DialogueVol`). Route every AudioSource to its
group, wire each settings slider to `SetGroupVolume("…Vol", value)`, and keep
two snapshots (Default + Dialogue) for ducking. This is the structure the
`new_audio_manager.sh` scaffold and `unity-ui-csharp`'s settings screen assume.
