<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Matrix4x4-lossyScale.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Attempts to get a scale value from the matrix. (Read Only)

Scale can only be represented correctly by a 3x3 matrix instead of a 3 component vector, if the given matrix has been skewed for example. `lossyScale` is a convenience property which attempts to match the scale from the matrix as much as possible. If the given matrix is orthogonal, the value will be correct.
