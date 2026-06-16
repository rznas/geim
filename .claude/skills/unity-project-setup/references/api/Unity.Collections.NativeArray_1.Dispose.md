<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Unity.Collections.NativeArray_1.Dispose.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Disposes a NativeArray<T0>.

This methods disposes the memory owned by a NativeArray<T0>. The behavior of this methods depends on the Allocator used when the NativeArray was created.

### Parameters

| Parameter | Description |
| --- | --- |
| inputDeps | The dependency of the new job. |

### Returns

**JobHandle** The JobHandle] of the new job. The job depends upon `inputDeps` and releases all resources (memory and safety handles) of the NativeArray<T0>.

### Description

Creates and schedules a job that releases all resources (memory and safety handles) of a NativeArray<T0>.
