<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Unity.Collections.NativeArray_1.Equals.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| other | The NativeArray to compare against. |

### Returns

**bool** True if the two NativeArray instances are the same, false otherwise.

### Description

Compares two NativeArray<T0> instances.

Two NativeArray<T0> instances are considered the same if they point to the same underlying memory buffer, and have the same length.

### Parameters

| Parameter | Description |
| --- | --- |
| obj | The object to compare against. |

### Returns

**bool** True if the NativeArray and the object are the same, false otherwise.

### Description

Compares a NativeArray<T0> instance and an object.

A NativeArray and an object are considered the same if they point to the same underlying memory buffer, and have the same length.
