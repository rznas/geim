<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/VFX.VFXSpawnerLoopState.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

This enum describes the state of VFXSpawner.

### Properties

| Property | Description |
| --- | --- |
| Finished | If the VFXSpawner is in this state then it has finished and is currently awaiting a Play invocation. This is the default and final state. |
| DelayingBeforeLoop | If the VFXSpawner is in this state, then it is waiting before it starts a loop. |
| Looping | If the VFXSpawner is in this state, then it is currently looping. When in this state, VFXSpawnerState.playing is true. |
| DelayingAfterLoop | If the VFXSpawner is in this state, then it is waiting after a loop has reached the end. |
