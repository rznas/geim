<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/VFX.VFXSpawnerState-spawnCount.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

The current Spawn count.

The Spawn count is relative to a unique frame. If this custom block is the first one in the stack, the Spawn count is 0.0f.

The Spawn system accumulates the Spawn count. Remaining integer values are consumed by a particles system.

For example, the internal constant Spawn rate is implemented this way:

```csharp
state.spawnCount += currentRate * state.deltaTime
```
