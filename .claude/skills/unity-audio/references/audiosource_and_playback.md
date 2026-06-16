# AudioSource & playback (Unity 6, C#)

The playback chain: an **AudioClip** (imported `.wav`/`.ogg`/`.mp3`) → an
**AudioSource** component → (optionally) an **AudioMixerGroup** → the single
**AudioListener** → speakers. You play sound by putting an AudioSource on a
GameObject, giving it a clip, and calling `Play()` / `PlayOneShot()` from C#.

Grounded in `api/AudioSource.md`, `api/AudioSource.Play.md`,
`api/AudioSource.PlayOneShot.md`, `api/AudioSource.PlayClipAtPoint.md`,
`api/AudioSource-spatialBlend.md`, `api/AudioSource-pitch.md`,
`api/AudioSource-volume.md`, `api/AudioListener.md`, `api/AudioSource-overview.md`.

## Getting the component

An AudioSource is a component on a GameObject — fetch it like any other. The
canonical Unity pattern (`api/AudioSource.Play.md`):

```csharp
using UnityEngine;

[RequireComponent(typeof(AudioSource))]
public class ExampleScript : MonoBehaviour
{
    AudioSource audioData;
    void Start()
    {
        audioData = GetComponent<AudioSource>();
        audioData.Play();          // plays AudioSource.clip
    }
}
```

`[RequireComponent(typeof(AudioSource))]` guarantees the component exists so
`GetComponent<AudioSource>()` never returns null.

## Play / Pause / Stop a single clip

From `api/AudioSource.md`: "To play, pause, and stop a single audio clip, use
Play, Pause and Stop." One AudioSource plays **one** `clip` at a time — calling
`Play()` again **restarts** it (cuts the previous instance).

```csharp
audioSource.clip = someClip;      // assign an AudioClip (inspector or code)
audioSource.Play();   // restarts if already playing this clip
audioSource.Pause();  // resume with UnPause()
audioSource.UnPause();
audioSource.Stop();
```

Assigning `clip` does NOT auto-play — from `api/AudioSource-clip.md`: "the new
clip doesn't automatically play so you need to use AudioSource.Play". Swap clips
then `Play()`:

```csharp
audioSource.clip = otherClip;
audioSource.Play();
```

## PlayOneShot — overlapping SFX (the workhorse)

For SFX that fire repeatedly and may overlap (gunshots, footsteps, UI clicks)
use `PlayOneShot`. From `api/AudioSource.PlayOneShot.md`: it "does not cancel
clips that are already being played by AudioSource.PlayOneShot and
AudioSource.Play" — so multiple one-shots **layer** on one source. The second
arg scales this shot's volume (negative clamps to 0; >1 may clip):

```csharp
[RequireComponent(typeof(AudioSource))]
public class ExampleClass : MonoBehaviour
{
    public AudioClip impact;
    AudioSource audioSource;
    void Start() { audioSource = GetComponent<AudioSource>(); }
    void OnCollisionEnter() { audioSource.PlayOneShot(impact, 0.7F); }
}
```

### Play vs PlayOneShot — when to use which

| Use | For |
|-----|-----|
| `Play()` / `clip` | one persistent sound: music, a looping engine hum, ambience. `Play()` restarts. |
| `PlayOneShot(clip, vol)` | many short overlapping SFX off **one** source — they don't cut each other. |
| `PlayClipAtPoint(clip, pos)` | a fire-and-forget sound at a world position with **no existing source** (auto-creates + disposes one). |

## PlayClipAtPoint — fire-and-forget at a position

Static; spawns a temporary AudioSource at a world position and self-disposes
when the clip ends. From `api/AudioSource.PlayClipAtPoint.md`:

```csharp
public AudioClip clip;   // assign in inspector
void Start() { AudioSource.PlayClipAtPoint(clip, new Vector3(5, 1, 2)); }
```

Signature: `PlayClipAtPoint(AudioClip clip, Vector3 position, float volume = 1.0f)`.
Convenient, but you can't tweak the temp source afterward (no mixer routing
control, etc.). For anything you need to control, use a real AudioSource.

## 2D vs 3D — `spatialBlend`

This is the single property that decides whether a sound is positional. From
`api/AudioSource-spatialBlend.md` and `api/AudioSource.md`:

- `spatialBlend = 0.0f` → **full 2D** (no attenuation/doppler; same in both ears).
- `spatialBlend = 1.0f` → **full 3D** (attenuates with distance, pans by
  position relative to the listener, doppler).
- in-between → a morph of the two.

```csharp
audioSource.spatialBlend = 1.0f;   // make it positional 3D
```

A 3D source attenuates between `minDistance` and `maxDistance` per `rolloffMode`
(`api/AudioSource-minDistance.md`, `-maxDistance.md`, `-rolloffMode.md`): inside
`minDistance` it's at full volume; beyond it falls off. **A 3D source left at
`spatialBlend = 0` plays flat (non-positional)** — the most common "my 3D audio
isn't positional" bug.

Use 2D (`spatialBlend = 0`) for music, UI, narration; 3D (`= 1`) for world
sounds the player should localize.

## The single AudioListener

From `api/AudioListener.md`: "This class implements a microphone-like device…
**You can only have one listener in a Scene.**" Practically:

- **Zero** AudioListeners → total silence (nothing is "hearing" the sources).
- **Two+** AudioListeners → Unity warns and the mix is wrong/ambiguous.
- The listener is normally on the **Main Camera** (created by default). If you
  swap cameras, make sure exactly one active camera carries the AudioListener.

`AudioListener.volume` (static, 0..1) is the global master gain;
`AudioListener.pause` (static bool) pauses all audio (sources with
`ignoreListenerPause = true` keep playing — handy for pause-menu music).

## Pitch — speed/tone, and SFX variety

`api/AudioSource-pitch.md`: `pitch = 1` is normal; higher = faster/higher,
lower = slower/lower. For an AudioClip it's **clamped to [-3..3]**. Randomizing
pitch slightly per shot is the cheapest way to stop repeated SFX sounding
identical:

```csharp
audioSource.pitch = 1f + Random.Range(-0.1f, 0.1f);  // +/- a semitone-ish
audioSource.PlayOneShot(footstep);
```

Combine with a random clip pick from a set for even more variety:

```csharp
AudioClip clip = footstepClips[Random.Range(0, footstepClips.Length)];
audioSource.PlayOneShot(clip);
```

(Unity 6 also has the **Audio Random Container** as a built-in randomizing
generator you can assign to a source's `resource` — but the C# pitch+clip pick
above needs no extra asset.) The `scripts/new_audio_manager.sh` scaffold wires
exactly this PlaySfx pattern.

## Volume — per-source vs the mix

`api/AudioSource-volume.md`: `AudioSource.volume` is **0.0–1.0** (1 = full,
0 = silent) — this is the one place audio is *linear*, not dB. Driving it from a
0..1 slider is direct:

```csharp
audioSource.volume = slider01;   // 0..1, no conversion needed here
```

`audioSource.mute` (`api/AudioSource-mute.md`) sets volume to 0 and restores it
on un-mute. **Mixer group volume is different — that's decibels** and is set via
an exposed parameter; see `mixer_and_volume.md`.

## Looping & playOnAwake

`api/AudioSource-loop.md`: set `audioSource.loop = true` for music/ambience to
replay forever; disabling it mid-play stops at the end of the current loop.
`playOnAwake` (component checkbox / `audioSource.playOnAwake`) auto-starts the
clip when the object activates — turn it **off** for sources you trigger from
code so they don't fire unexpectedly.

## Useful state for QA / logic

- `isPlaying` (read-only) — true while a clip is sounding (`api/AudioSource-isPlaying.md`).
- `time` / `timeSamples` — playback position (seek with these).
- `outputAudioMixerGroup` — the group this source routes into (see `mixer_and_volume.md`).

Since this environment has no Editor, you assert on `isPlaying` / state in a
PlayMode test rather than on actual sound output — hand verification to
`unity-qa-testing`.
