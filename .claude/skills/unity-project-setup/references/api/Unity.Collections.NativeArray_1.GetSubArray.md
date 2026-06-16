<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Unity.Collections.NativeArray_1.GetSubArray.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| start | The start index of the sub array. |
| length | The length of the sub array. |

### Returns

**NativeArray<T>** A view into the array that aliases the original array, which can't be disposed.

### Description

Gets a view into an array starting at the specified index.
