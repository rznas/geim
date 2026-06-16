<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Unity.Collections.LowLevel.Unsafe.NativeArrayUnsafeUtility.GetUnsafePtr.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| nativeArray | The NativeArray to check. |

### Returns

**void*** The memory buffer pointer of the NativeArray.

### Description

Gets the pointer to the memory buffer owner of a NativeArray, and checks whether there is write access to the NativeArray. If there is no write access to the NativeArray, an InvalidOperationException is thrown.
