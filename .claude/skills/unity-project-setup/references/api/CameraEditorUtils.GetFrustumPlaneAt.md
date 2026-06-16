<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/CameraEditorUtils.GetFrustumPlaneAt.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| clipToWorld | Clip space to world space matrix. |
| viewPosition | View position in world space. |
| distance | Distance from the view position of the plane. |
| points | Calculated points. (A minimum size of 4 elements is required). |

### Description

Calculate the points of the frustrum plane facing the viewer at a specific distance.

The points array will be filled with the calculated points in the following order: left bottom, left top, right top and right bottom.
