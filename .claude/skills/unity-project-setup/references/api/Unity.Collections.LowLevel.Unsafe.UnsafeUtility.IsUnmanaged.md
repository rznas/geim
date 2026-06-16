<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Unity.Collections.LowLevel.Unsafe.UnsafeUtility.IsUnmanaged.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| type | The `System.Type` of a struct. |

### Returns

**bool** True if `type` is unmanaged, otherwise false.

### Description

Checks whether the struct or type is unmanaged.

An unmanaged type contains no managed fields, and can be freely copied in memory.
