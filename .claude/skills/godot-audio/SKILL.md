---
name: godot-audio
description: >
  Implement sound and music in a Godot 4.6 C# game — playing audio, mixing
  through buses, effects, and dynamic music. Use this whenever you are adding
  sound effects or background music, setting up AudioStreamPlayer / 2D / 3D
  nodes, building an audio bus layout (Master/Music/SFX), wiring volume sliders,
  applying bus effects (reverb, lowpass, compressor), adding positional/spatial
  audio, randomizing SFX, or syncing/crossfading music. Reach for it any time the
  task is "play a sound when X", "add background music", "make footsteps
  positional", "the gun should sound different each shot", "duck the music when
  dialogue plays", or "hook the volume slider to the SFX bus". It has the verified
  C# audio API (AudioStreamPlayer.Play, AudioServer bus volume in dB) and the
  bus/dB model. Covers Composer and Sound Designer integration work. Assumes a
  buildable project (godot-project-setup).
---

# Godot Audio (C#)

Sound in Godot flows: an **AudioStream** (a loaded `.ogg`/`.wav`) → an
**AudioStreamPlayer** node → an **audio bus** → speakers. You implement SFX/music
by placing players, routing them to buses, and driving playback + volume from C#.

## Players — pick by positioning

| Node | Use for |
|------|---------|
| `AudioStreamPlayer` | non-positional: music, UI clicks, global SFX |
| `AudioStreamPlayer2D` | 2D positional: pans/attenuates by screen position |
| `AudioStreamPlayer3D` | 3D positional: full spatialization, doppler, reverb areas |

Each holds a `Stream` and targets a `Bus` (default `Master`). Verified C#:

```csharp
var sfx = GetNode<AudioStreamPlayer>("Shoot");
sfx.Stream = GD.Load<AudioStream>("res://assets/audio/shoot.ogg");
sfx.Bus = "SFX";
sfx.Play();                 // optional from_position seconds
sfx.Finished += () => GD.Print("done");   // fires when a non-looping stream ends
```

More patterns (one-shot fire-and-forget players, `AudioStreamRandomizer` for
varied SFX, positional players, `max_polyphony` for overlapping sounds) are in
`references/audio_csharp.md`.

## Buses & the dB scale — the mental model

A **bus** is a mixer channel. Route players to buses (`SFX`, `Music`, `UI`) that
feed `Master`. Volume is in **decibels**, not 0–1: `0 dB` = full, `-6 dB` ≈ half
as loud, `-80 dB` ≈ silence. This trips people up — a volume *slider* (0–1) must
be converted to dB.

```csharp
// Hook a 0..1 slider to the SFX bus:
int bus = AudioServer.GetBusIndex("SFX");
AudioServer.SetBusVolumeDb(bus, Mathf.LinearToDb(slider01));   // 0..1 → dB
AudioServer.SetBusMute(bus, slider01 <= 0.001f);
```

Define the bus layout in a `.tres` bus layout / Audio panel; the model and the
`Mathf.LinearToDb`/`DbToLinear` conversions are in `references/buses_and_mixing.md`.

## Effects on buses

Reverb, low-pass (muffle), compressor, EQ, limiter attach to a bus and process
everything routed there — e.g. a `Reverb` on a "Cave" bus, a `LowPass` you sweep
when the player is underwater. Adding effects and tweaking their params from C#
(`AudioServer.AddBusEffect`, `GetBusEffect`) is covered in
`references/buses_and_mixing.md`.

## Dynamic music

Crossfade tracks by tweening two players' bus volumes; layer stems on parallel
players; duck music under dialogue by lowering the Music bus while a VO plays;
sync gameplay to the beat via `AudioStreamPlayer.GetPlaybackPosition()`. Patterns
in `references/audio_csharp.md`.

## Importing audio

`.ogg` (Vorbis) for music (compressed, loops well), `.wav` for short SFX (low
latency). Loop settings live on the import. Use `godot-art-pipeline`'s
`check_assets.sh` to import + verify, and always `GD.Load` audio (never
`FileAccess`) so it survives export.

## Verifying

Audio C# compiles like any gameplay code. For "did the sound actually fire",
drive a player headlessly and assert on a `Finished` signal or a state flag —
`godot-qa-headless` can do this (note: `--headless` uses a dummy audio driver, so
you assert on playback *state*, not actual sound output).

## Troubleshooting

`references/troubleshooting.md`: no sound (stream null / wrong bus / volume in
dB not 0–1 / muted Master), slider does nothing (forgot `LinearToDb`), SFX cut
off (max_polyphony too low / player reused mid-play), positional audio silent
(no listener / 3D attenuation maxed), music doesn't loop (loop not set on import).
