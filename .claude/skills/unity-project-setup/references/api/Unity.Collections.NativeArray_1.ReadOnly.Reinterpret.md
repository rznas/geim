<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Unity.Collections.NativeArray_1.ReadOnly.Reinterpret.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Returns

**ReadOnly<U>** An alias of the ReadOnly, but reinterpreted as the target type.

### Description

Reinterpret a ReadOnly with a different data type (type punning).

The sizes of `T` and `U` must match. You can use this method to create a view into memory that has a different element size and length compared to the source array. For example, an array of float triples can be reinterpreted as an array of 3D vector structs.
