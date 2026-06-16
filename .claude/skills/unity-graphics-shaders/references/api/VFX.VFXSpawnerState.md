<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/VFX.VFXSpawnerState.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

The spawn state of a Spawn system.

This class is useful for debugging a Visual Effect's spawner. For example, you can see if the effect is currently playing, the number of loops the spawner has processed, as well as the current state of the spawner.

 To access the state of a Visual Effect's Spawn system, either use VisualEffect.GetSpawnSystemInfo or, in a class that inherits from VFXSpawnerCallbacks, override the OnUpdate method.

```csharp
using UnityEngine;
using UnityEngine.VFX;class ConstantRateEquivalent : VFXSpawnerCallbacks
{
    public class InputProperties
    {
        [Min(0), Tooltip("Sets the number of particles to spawn per second.")]
        public float Rate = 10;
    }    static private readonly int rateID = Shader.PropertyToID("Rate");    public sealed override void OnPlay(VFXSpawnerState state, VFXExpressionValues vfxValues, VisualEffect vfxComponent)
    {
    }    public sealed override void OnUpdate(VFXSpawnerState state, VFXExpressionValues vfxValues, VisualEffect vfxComponent)
    {
        if (state.playing)
        {
            float currentRate = vfxValues.GetFloat(rateID);
            state.spawnCount += currentRate * state.deltaTime;
        }
    }    public sealed override void OnStop(VFXSpawnerState state, VFXExpressionValues vfxValues, VisualEffect vfxComponent)
    {
    }
}
```

### Properties

| Property | Description |
| --- | --- |
| delayAfterLoop | The current delay time that the VFXSpawner waits for after it finishes a loop. |
| delayBeforeLoop | The current delay time that the VFXSpawner waits for before it starts a loop. |
| deltaTime | The current delta time. |
| loopCount | The current loop count. |
| loopDuration | The duration of the looping state. |
| loopIndex | The current index of loop. |
| loopState | The current state of VFXSpawnerState. |
| newLoop | This boolean indicates if a new loop has just started. |
| playing | The current playing state. |
| spawnCount | The current Spawn count. |
| totalTime | The accumulated delta time since the last Play event. |
| vfxEventAttribute | Gets the modifiable current event attribute (Read Only). |
