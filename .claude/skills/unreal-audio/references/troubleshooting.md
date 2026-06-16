# Audio troubleshooting (UE 5.6/5.7, C++)

Doc-sourced from `references/api/`, not compile-tested here (no engine). Symptoms
→ cause → fix. When in doubt, run the in-editor debug commands at the bottom to
see what is *actually* playing.

## No sound at all

| Likely cause | Check / fix |
|--------------|-------------|
| `Sound` is null | The UPROPERTY wasn't assigned in the editor. Confirm `Sound != nullptr` before `Play()`/`PlaySound*`. |
| Never called `Play()` | A `UAudioComponent` with `bAutoActivate = false` is silent until you `Play()` it. Either call it or set `bAutoActivate = true`. |
| Sound Class volume is 0 / muted by a Sound Mix | A pushed Sound Mix may have driven the class to 0. Check active mixes; `ClearSoundMixClassOverride` / `PopSoundMixModifier`. |
| Voice/polyphony or concurrency limit hit | The sound lost a priority contest. Raise its `Priority`, or relax the Sound Concurrency cap. `stat soundwave` shows active voices. |
| No audio listener | Panning/3D needs a listener (default: active PlayerController camera). In a server/headless context there may be none. |
| Played on the wrong net role | On a dedicated server there's no audio device — play SFX on clients (Client RPC / multicast), not server-only code. See `unreal-build-deploy-multiplayer`. |
| Null/dummy audio device | A `-nosound` / headless run renders no real audio. Assert on `IsPlaying()` state, not sound output. |
| Asset didn't cook / wasn't referenced | A runtime-loaded sound that isn't referenced by a UPROPERTY/soft ref may be stripped at cook. Reference it or mark it. |

## Sound plays "flat" / everywhere — no panning or falloff

- **No attenuation asset.** `PlaySoundAtLocation`/`SpawnSoundAtLocation` with
  `AttenuationSettings = nullptr` (or a `UAudioComponent` with no
  `AttenuationSettings`) is **2D**: "no panning will be applied, regardless of the
  sound's source position relative to the listener." Assign a `USoundAttenuation`.
- **Attenuation present but Enable Spatialization is off** — still 2D. Turn it on.
- **Enable Volume Attenuation is off** — full volume at any distance even if it
  pans. Turn it on and set Inner Radius / Falloff Distance.
- **Falloff Distance too large** — it does attenuate, just not noticeably within
  the play area. Shrink it.
- Used `PlaySound2D` / `SpawnSound2D` by mistake — those are always 2D. Use the
  `…AtLocation` / `…Attached` variants for positional sound.

## Volume slider does nothing

- You changed a **single source's** volume instead of the **Sound Class** via a
  Sound Mix. A master/music/SFX slider should call
  `SetSoundMixClassOverride(...) + PushSoundMixModifier(...)` on the right
  `USoundClass`, not set `AudioComponent->SetVolumeMultiplier` on one source.
- Wrong Sound Class / the sounds aren't assigned to it. Verify each sound's class.
- You converted 0–1 to dB. **Sound Class/Mix volume is a LINEAR multiplier** — a
  0–1 slider maps directly; no `log10`. (That conversion is for Unity/Godot, not
  UE's class/mix system.)
- The mix override was set but the mix was never pushed. `SetSoundMixClassOverride`
  alone isn't enough — `PushSoundMixModifier` the owning mix.

## Ducking doesn't trigger

- **Active path:** the duck Sound Mix wasn't pushed (or was popped early). Confirm
  `PushSoundMixModifier(DialogueDuckMix)` on VO start and `Pop…` on VO end.
- **Passive path:** the Passive Sound Mix Modifier is on the wrong Sound Class, or
  the VO sound isn't in that class. Also check the modifier's **min/max volume
  thresholds** — a faint VO below the threshold won't trigger it.
- Duck mix lowers the wrong class, or `bApplyToChildren` is false so nested music
  classes aren't affected.

## MetaSound parameter ignored

- **Wrong `FName`** — Inputs match by exact name. `FName("Intensity")` ≠ an Input
  named `intensity` or `Intensity ` (trailing space).
- **Wrong setter for the type** — `SetIntParameter` on a Float Input, etc., does
  nothing. Match `SetFloatParameter` / `SetIntParameter` / `SetBoolParameter` /
  `SetTriggerParameter` / `SetWaveParameter` to the Input type.
- **Constructor pin set after play** — `Is Constructor Pin` Inputs can only be set
  *before* the MetaSound plays. Set them in Details, or use a non-constructor
  Input for runtime control.
- **The MetaSound already finished** — its `UE.Source.OneShot` interface stopped
  it (see below), so there's nothing to set. Check `IsPlaying()`.
- Set on the wrong object — call the setter on the `UAudioComponent` that's
  playing this MetaSound, not on a different source.

## MetaSound (music/ambience) stops on its own

The `UE.Source.OneShot` interface is enabled by default and stops the MetaSound
via its **On Finished** output. For an indefinite-duration sound (music, room
tone, looping ambience), **remove `UE.Source.OneShot`** in the MetaSound Editor's
Interfaces panel. (Conversely, if a one-shot never stops, On Finished is never
being triggered in the graph.)

## No reverb

- No **Audio Volume** covering the listener's location (or it's disabled). Place
  one, set **Apply Reverb = true**, assign a **Reverb Effect** preset.
- The sound's **attenuation has Enable Reverb Send off** — it plays completely
  dry. Turn it on and set send levels/distances.
- The sound's **Sound Class disallows reverb** (Send to Master Reverb off).
- **Overlapping volumes** — a higher-**Priority** Audio Volume with no/less reverb
  is winning. Set priorities so the intended (usually smaller/inner) volume wins.
- **Fade Time** is long and you're moving fast — reverb hasn't interpolated in yet.

## SFX cuts itself off / robotic repetition

- Re-`Play()`ing one `UAudioComponent` restarts it, cutting the previous instance.
  For overlapping one-shots use `PlaySoundAtLocation` / `PlaySound2D` (each is a
  fresh voice) rather than replaying one component.
- Concurrency cap too low — raise the Sound Concurrency limit or change its
  resolution rule (stop-oldest vs reject-new).
- Robotic: add pitch jitter + random clip selection (or do it inside a Sound Cue
  Random node / MetaSound).

## Build / module errors

- `Sound/SoundBase.h` / `Kismet/GameplayStatics.h` / `Components/AudioComponent.h`
  not found → the playback APIs live in the **Engine** module, which is a default
  `PublicDependencyModuleNames` entry; confirm your `.Build.cs` lists `"Engine"`
  (and `"CoreUObject"`). MetaSound *authoring/builder* C++ (rare) needs the
  `MetaSoundEngine` / `MetaSoundGraphCore` modules — but playing and setting
  parameters via `UAudioComponent` does **not**. See `unreal-project-setup`.
- `.generated.h` / `GENERATED_BODY` errors on the scaffolded actor → standard
  reflection setup; see `unreal-gameplay-cpp`.

## In-editor debug commands

```
stat soundwave        # all actively playing Sound Wave instances
stat soundcues        # playing Sound Cues
au.Debug.Sounds 1     # on-screen overlay of active sounds + their volumes
Audio3DVisualize      # draw 3D sound positions/attenuation in the viewport
```

Use these in PIE to ground-truth: is the sound playing at all, which Sound Class
/ Submix did it route through, and what is its final computed volume? Grounded in
`api/…Audio_Engine_Overview.md` and `api/…Audio_Debugging*.md`.
