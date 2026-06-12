# Audio troubleshooting (Godot 4.6)

## No sound at all

- **`Stream` is null** — the player has no AudioStream assigned. Set it
  (inspector or `player.Stream = GD.Load<AudioStream>(...)`).
- **Volume set as 0–1 instead of dB** — `VolumeDb = 0.5f` is *nearly full*
  (0 dB ≈ full, 0.5 dB is louder than 0). To set half volume use
  `Mathf.LinearToDb(0.5f)` (≈ -6 dB). Setting `VolumeDb = 0` is full, not silent.
- **Master muted or at -80 dB**, or the player's `Bus` points at a bus that's
  muted / doesn't exist (typo). Check `AudioServer.GetBusIndex("X")` ≠ -1.
- **`--headless`** uses the dummy audio driver — there is genuinely no output;
  assert on state, not ears.

## Volume slider does nothing

You wired the raw 0–1 value into `SetBusVolumeDb`. dB ≠ linear — wrap it:
`SetBusVolumeDb(bus, Mathf.LinearToDb(slider01))`, and mute explicitly at 0.

## SFX cut off / only one plays at a time

A single `AudioStreamPlayer` replays from the start each `Play()`, cutting the
previous instance. Raise `MaxPolyphony`, or spawn a fire-and-forget player per
shot (see audio_csharp.md).

## Music doesn't loop

Looping is an **import setting** on the audio file (Loop on/off, loop points),
not a player property for streamed formats. Re-import the `.ogg` with loop
enabled. Some formats also expose loop in the AudioStream resource.

## Positional (2D/3D) audio is silent or wrong

- 3D needs a listener: an `AudioListener3D`, or the active `Camera3D` acts as
  one. No listener = no spatial audio.
- The emitter is past `MaxDistance` / attenuation curve floored it to silence —
  check the player's attenuation settings and unit size.
- 2D pans by screen position relative to the viewport; off-screen far can be
  inaudible by design.

## Crossfade pops or both tracks audible

Start the incoming player at `-80 dB` *before* `Play()`, then tween up while
tweening the outgoing down, and `Stop()` the outgoing only after the tween
finishes (see the crossfade snippet). Snapping volumes causes pops.

## Bus effect has no audible result

- The effect is disabled (`SetBusEffectEnabled(bus, idx, true)`).
- It's on the wrong bus, or the players aren't routed to that bus.
- Parameter is a no-op value (e.g. low-pass cutoff at 20 kHz lets everything
  through). Lower `CutoffHz` to hear it.
