# Audio troubleshooting (Unity 6, C#)

The handful of failures that account for most "why is there no sound / wrong
sound" in Unity. Grounded in `api/AudioListener.md`, `api/AudioSource.md`,
`api/AudioSource-spatialBlend.md`, `api/Audio.AudioMixer.SetFloat.md`,
`api/AudioSource-overview.md`, `api/AudioSource-clip.md`, `api/AudioSource-mute.md`.

## No sound at all

- **No AudioListener (silence) or two (warnings/wrong mix).** `api/AudioListener.md`:
  "You can only have one listener in a Scene." Exactly one active AudioListener
  must exist — normally on the Main Camera. Zero = total silence; two+ = Unity
  warns and the mix is ambiguous. If you destroyed/swapped the camera, the
  listener may have gone with it; if you have two cameras active, both may carry
  one. Keep exactly one.
- **No clip assigned.** `audioSource.clip` is null, or `PlayOneShot(clip)` got a
  null clip. Assign it (inspector or `audioSource.clip = …`). Note: setting
  `clip` does **not** auto-play (`api/AudioSource-clip.md`) — you still call `Play()`.
- **Muted.** `audioSource.mute == true` forces volume to 0 (`api/AudioSource-mute.md`);
  or `AudioListener.volume` (global, 0..1) is 0; or `AudioListener.pause` is true.
- **Routed to the wrong / a muted mixer group.** If `outputAudioMixerGroup`
  points at a group that's muted or whose volume is floored, you hear nothing.
  Conversely **None** means the source bypasses the mixer (`api/AudioSource-overview.md`).
- **`playOnAwake` off and you never called Play().** Expected for code-triggered
  sources — make sure something calls `Play()`/`PlayOneShot()`.
- **Headless.** Running Unity `-batchmode -nographics` uses a null/dummy audio
  driver — there is genuinely no output. Assert on `isPlaying`/state in a
  PlayMode test, not on ears (hand to `unity-qa-testing`).

## Volume slider does nothing

Two distinct cases — know which slider you wired:

- **Mixer-group slider, fed linear 0–1 into `SetFloat`.** Mixer params are
  **decibels**, not 0–1 (`api/Audio.AudioMixer.SetFloat.md` ranges over
  `[-80, 20]`). `SetFloat("MusicVol", 0.5f)` sets it to *+0.5 dB* — essentially
  full, barely changing. Convert: `mixer.SetFloat("MusicVol", Mathf.Log10(v)*20)`.
  See `mixer_and_volume.md`.
- **Parameter not exposed (or name typo).** `SetFloat`/`GetFloat` return `false`
  when the exposed name isn't found (`api/Audio.AudioMixer.SetFloat.md`). Check
  the return value; expose the parameter in the mixer Inspector and match the
  string exactly (case-sensitive).
- **`SetFloat` called too early.** Don't call it in `Awake`/`OnEnable`/
  `AfterSceneLoad` — "can result in unexpected behavior"
  (`api/Audio.AudioMixer.SetFloat.md`). Call it in `Start` or later.
- **A `SetFloat` you forgot is pinning the param.** Once you `SetFloat` a param,
  snapshots no longer drive it until you `ClearFloat(name)` — so a snapshot-based
  slider may appear stuck.
- **(AudioSource.volume slider)** `AudioSource.volume` *is* linear 0–1
  (`api/AudioSource-volume.md`) — no conversion there. Don't run it through the
  dB formula by mistake.

## -inf dB / NaN from the volume conversion

`Mathf.Log10(0)` is `-Infinity`, and a slider that hits 0 then pushes the mixer
param to `-inf` dB, which misbehaves. **Special-case 0:** map `linear <= 0` to
`-80f` (effective silence) before calling `SetFloat`:

```csharp
float dB = linear01 <= 0.0001f ? -80f : Mathf.Log10(linear01) * 20f;
```

(This is exactly what `scripts/new_audio_manager.sh` generates.)

## 3D audio plays flat / isn't positional

`api/AudioSource-spatialBlend.md`, `api/AudioSource.md`: `spatialBlend = 0.0f`
is **full 2D** (no attenuation, same in both ears), `1.0f` is full 3D. A source
you expect to localize that's left at `spatialBlend = 0` plays flat everywhere —
**set `spatialBlend = 1f`**. `PlayClipAtPoint` likewise needs the temp source to
be 3D to be positional. Also check the listener (above) and that the emitter
isn't past `maxDistance` (attenuated to silence — `api/AudioSource-maxDistance.md`,
`-minDistance.md`, `-rolloffMode.md`).

## SFX cut each other off / restart instead of overlapping

A single AudioSource plays one clip — calling `Play()` again restarts it
(`api/AudioSource.Play.md`). For overlapping fire (rapid shots, footsteps) use
**`PlayOneShot`**, which layers and "does not cancel clips that are already being
played" (`api/AudioSource.PlayOneShot.md`), or use a pool / `PlayClipAtPoint`.

## Every repeat sounds identical (robotic)

You're playing the same clip at `pitch = 1` every time. Randomize pitch (clamped
[-3..3], `api/AudioSource-pitch.md`) and/or pick from a clip set:

```csharp
audioSource.pitch = 1f + Random.Range(-0.1f, 0.1f);
audioSource.PlayOneShot(clips[Random.Range(0, clips.Length)]);
```

## Music doesn't loop

Set `audioSource.loop = true` (`api/AudioSource-loop.md`) — or tick **Loop** on
the AudioSource component. Seamlessness also depends on the clip's import
settings / loop points on the audio asset.

## Mixer group effect / snapshot has no audible result

- The source bypasses the mixer (`outputAudioMixerGroup == None`) or routes to a
  different group than the one carrying the effect (`api/AudioSource-overview.md`).
- A snapshot transition is overridden by a stale `SetFloat` on that param —
  `ClearFloat(name)` to return control to snapshots (`api/Audio.AudioMixer.md`).
- `FindSnapshot`/`FindMatchingGroups` name didn't match — names are exact /
  case-sensitive (`api/Audio.AudioMixer.FindSnapshot.md`, `api/Audio.AudioMixer.md`).
