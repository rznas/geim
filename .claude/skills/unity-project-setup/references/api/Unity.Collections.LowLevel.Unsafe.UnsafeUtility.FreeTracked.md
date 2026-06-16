<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Unity.Collections.LowLevel.Unsafe.UnsafeUtility.FreeTracked.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| memory | Memory pointer. |
| allocator | Allocator. |

### Description

Free memory with leak tracking.

### Parameters

| Parameter | Description |
| --- | --- |
| memory | Memory pointer. |
| label | The memory label that was used to allocate the memory. The memory label must match the one used during allocation to ensure correct deallocation. |

### Description

Free memory with leak tracking, using the specified memory label.
