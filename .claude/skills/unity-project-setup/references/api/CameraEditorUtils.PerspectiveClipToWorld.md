<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/CameraEditorUtils.PerspectiveClipToWorld.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| clipToWorld | Clip to world matrix to use. |
| viewPositionWS | The viewer's position in world space. |
| positionCS | The position in clip space. |

### Returns

**Vector3** The corresponding world space position.

### Description

Calculate the world space position of a point in clip space.

The z component will be used to get the point at the distance z from the viewer.
