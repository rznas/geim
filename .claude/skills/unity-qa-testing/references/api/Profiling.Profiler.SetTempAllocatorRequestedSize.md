<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Profiling.Profiler.SetTempAllocatorRequestedSize.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| size | Size in bytes. |

### Returns

**bool** Returns true if requested size was successfully set. Will return false if value is disallowed (too small).

### Description

Sets the size of the temp allocator.

Can be used to change the size of the stack-based runtime allocator used for temporary allocations. Raise if TempAlloc.Overflow profiler markers affect runtime performance. Lower to save peak memory used.
