<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Matrix4x4.Inverse3DAffine.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| input | Input matrix to invert. |
| result | The result of the inversion. Equal to the input matrix if the function fails. |

### Returns

**bool** Returns true and a valid result if the function succeeds, false and a copy of the input matrix if the function fails.

### Description

Computes the inverse of a 3D affine matrix.

This function is dedicated to a non-singular matrix (typically, a transform matrix), otherwise, returns false and the result is a copy of the input matrix.
