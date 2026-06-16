<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Scripting.GarbageCollector-isIncremental.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Reports whether incremental garbage collection is enabled.

`IsIncremental` is true if incremental garbage collection is enabled in the project PlayerSettings and supported on the currently running platform. The value is false otherwise.

Set the target length of an incremental collection step with incrementalTimeSliceNanoseconds. Manually trigger an incremental garbage collection step with CollectIncremental.

Additional resources: PlayerSettings.gcIncremental.
