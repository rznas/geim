<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Unity.Collections.NativeArray_1.Reinterpret.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| expectedTypeSize | The expected size (in bytes, as given by sizeof) of the current element type of the array. |

### Returns

**NativeArray<U>** An alias of the same array, reinterpreted as the target type.

### Description

Reinterpret a NativeArray<T0> with a different data type (type punning).

If an expected element size isn't given, the sizes of `T` and `U` must match.

When an expected element size is given, this method allows you to create a view into memory that has a different element size and length compared to the source array. For example, you can reinterpret an array of float triples as an array of 3D vector structs. The expected element size serves as a checkpoint so that the underlying element size in the source array doesn't change size, which would otherwise make all future uses of the reinterpreted array invalid.
