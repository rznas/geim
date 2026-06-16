<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Unity.Collections.LowLevel.Unsafe.NativeArrayUnsafeUtility.GetUnsafeReadOnlyPtr.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| nativeArray | The NativeArray to check. |

### Returns

**void*** The memory buffer pointer of the NativeArray.

### Description

Gets a pointer to the memory buffer of a NativeArray or NativeArray.ReadOnly.

When ENABLE_UNITY_COLLECTIONS_CHECKS is set (which is always the case in the Editor, but never in a built player), this method checks that the AtomicSafetyHandle associated with the NativeContainer can be read from and isn't written to from another thread. If it can't be read, a System.InvalidOperationException is raised. While you can write to the returned pointer, this is generally unsafe. When this method call succeeds, you're only guaranteed that reading from this pointer is safe. Writing to this pointer might lead to race conditions and crashes later during program execution.
