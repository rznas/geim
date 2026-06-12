# Audio buses, the dB scale & effects (Godot 4.6)

## Buses

A bus is a mixer channel with a volume, mute/solo, and an effect chain. Players
route to a bus via their `Bus` property; every bus ultimately feeds `Master`.

A typical game layout:
```
Master
├── Music
├── SFX
└── UI
```

Define it in the editor's Audio panel (saved as a bus layout `.tres`, by default
`res://default_bus_layout.tres`). You can also create buses at runtime via
`AudioServer.AddBus()` + `SetBusSend(bus, "Master")`, but a designed layout is
the norm.

## The decibel scale (volume is dB, not 0–1)

Bus and player volumes are **decibels**:
- `0 dB` = full / unchanged. **Don't exceed 0 dB on Master** or you clip.
- every `-6 dB` ≈ halves perceived loudness.
- `-80 dB` is effectively silent (treat as the mute floor).

A UI slider is linear `0..1`; convert it:

```csharp
// slider 0..1 -> dB for a bus
int bus = AudioServer.GetBusIndex("Music");
AudioServer.SetBusVolumeDb(bus, Mathf.LinearToDb(slider01));   // 0->-inf, 1->0dB
AudioServer.SetBusMute(bus, slider01 <= 0.0005f);              // hard-mute at 0

// dB -> slider for displaying current value
float slider01 = Mathf.DbToLinear(AudioServer.GetBusVolumeDb(bus));
```

`Mathf.LinearToDb(0)` is `-inf`; guard the zero case with an explicit mute.

## Effects on a bus

Effects process everything routed through the bus. Add and tweak from C#:

```csharp
int bus = AudioServer.GetBusIndex("SFX");

// Add a low-pass to muffle SFX (e.g. underwater)
var lp = new AudioEffectLowPassFilter { CutoffHz = 800f };
AudioServer.AddBusEffect(bus, lp);

// Tweak an existing effect by index
var fx = (AudioEffectLowPassFilter)AudioServer.GetBusEffect(bus, 0);
fx.CutoffHz = 400f;

// Toggle an effect on/off
AudioServer.SetBusEffectEnabled(bus, 0, false);
```

Common effects: `AudioEffectReverb` (space/room), `AudioEffectLowPassFilter`
(muffle), `AudioEffectCompressor` / `AudioEffectLimiter` (glue/protect Master),
`AudioEffectEQ`, `AudioEffectDelay`. Put a `Limiter` on Master to catch peaks.

## Ducking via a bus

Lower the Music bus while dialogue/important SFX plays:

```csharp
int music = AudioServer.GetBusIndex("Music");
// duck
AudioServer.SetBusVolumeDb(music, -12f);
// ... when VO Finished fires, restore
AudioServer.SetBusVolumeDb(music, 0f);
```

For smooth ducking, tween the value rather than snapping it (use a `Tween` on a
proxy, or lerp in `_Process`). A sidechain compressor on the Music bus keyed off
the dialogue bus is the pro approach but more setup.

## Headless note

`--headless` uses a dummy audio driver — no sound comes out, but bus/player state
and signals (`Finished`) still behave, so volume logic and playback flow are
testable in CI.
