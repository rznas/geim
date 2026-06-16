<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/CameraEditorUtils.TryGetFrustum.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| camera | Camera to use. |
| near | The corners of the near plane. (A minimum size of 4 elements is required.) |
| far | The corners of the far plane. (A minimum size of 4 elements is required.) |
| frustumAspect | The aspect ratio of the frustrum. |

### Returns

**bool** Whether the frustrum was calculated.

### Description

Calculate the frustrum corners.

Corners are calculated in this order: left bottom, left top, right top, right bottom.
