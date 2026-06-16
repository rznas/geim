<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Scripting.GarbageCollector.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

API to control the garbage collector on the Mono and IL2CPP scripting backends.

See GarbageCollector.GCMode for how to change the global garbage collector operation mode.

### Static Properties

| Property | Description |
| --- | --- |
| GCMode | Set and get global garbage collector operation mode. |
| incrementalTimeSliceNanoseconds | The target duration of a collection step when performing incremental garbage collection. |
| isIncremental | Reports whether incremental garbage collection is enabled. |

### Static Methods

| Method | Description |
| --- | --- |
| CollectIncremental | Perform an on-demand incremental garbage collection for a maximum duration specified by the nanoseconds parameter. |

### Events

| Event | Description |
| --- | --- |
| GCModeChanged | Subscribe to this event to get notified when GarbageCollector.GCMode changes. |
