# Audio playback in C# (Godot 4.6)

Verified API. Players hold a `Stream`, target a `Bus`, emit `Finished`.

## One-shot SFX

```csharp
public partial class Gun : Node2D
{
    private AudioStreamPlayer _shoot;
    public override void _Ready()
    {
        _shoot = GetNode<AudioStreamPlayer>("ShootSound");
        _shoot.Bus = "SFX";
    }
    public void Fire() => _shoot.Play();   // restarts from 0 each call
}
```

For many overlapping copies of one sound (rapid fire), raise `MaxPolyphony` so
`Play()` doesn't cut off the previous instance:
```csharp
_shoot.MaxPolyphony = 8;
```

## Fire-and-forget player (spawn, play, free)

```csharp
private void PlayOneShot(string path, string bus = "SFX")
{
    var p = new AudioStreamPlayer
    {
        Stream = GD.Load<AudioStream>(path),
        Bus = bus,
    };
    AddChild(p);
    p.Finished += p.QueueFree;   // self-destruct when done
    p.Play();
}
```

## Varied SFX with AudioStreamRandomizer

Avoid machine-gun repetition by letting the engine pick + pitch/volume-shift:
set the player's `Stream` to an `AudioStreamRandomizer` resource holding several
clips (authored as a `.tres`, or built in code). Each `Play()` picks one with
random pitch/volume — ideal for footsteps, impacts, UI.

## Positional audio

```csharp
var step = GetNode<AudioStreamPlayer2D>("Footstep");  // pans by screen position
step.Play();
// 3D: AudioStreamPlayer3D adds distance attenuation, doppler, reverb areas.
// 3D needs an AudioListener3D (or the active Camera3D acts as listener).
```

## Background music + crossfade

```csharp
private AudioStreamPlayer _musicA, _musicB;

private async void Crossfade(AudioStream next, float seconds = 1.5f)
{
    var from = _musicA.Playing ? _musicA : _musicB;
    var to   = from == _musicA ? _musicB : _musicA;
    to.Stream = next; to.VolumeDb = -80f; to.Play();

    var t = CreateTween();
    t.TweenProperty(to,   "volume_db", 0f,   seconds);
    t.Parallel().TweenProperty(from, "volume_db", -80f, seconds);
    await ToSignal(t, Tween.SignalName.Finished);
    from.Stop();
}
```

(Or crossfade the *bus* volumes instead of per-player.)

## Duck music under dialogue

```csharp
int music = AudioServer.GetBusIndex("Music");
AudioServer.SetBusVolumeDb(music, -12f);   // lower while VO plays
// restore to 0f when dialogue Finished fires
```

## Beat / rhythm sync

```csharp
double pos = GetNode<AudioStreamPlayer>("Music").GetPlaybackPosition();
// compare pos against known beat times to trigger on-beat events
```

`GetPlaybackPosition()` is the audio clock — far more accurate than counting
frames for rhythm games.
