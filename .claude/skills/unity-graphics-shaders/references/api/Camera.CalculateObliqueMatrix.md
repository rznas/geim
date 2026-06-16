<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Camera.CalculateObliqueMatrix.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| clipPlane | Vector4 that describes a clip plane. |

### Returns

**Matrix4x4** Oblique near-plane projection matrix.

### Description

Calculates and returns oblique near-plane projection matrix.

Given a clip plane vector, this function returns camera's projection matrix which has this clip plane set as its near plane.
