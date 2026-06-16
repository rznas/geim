<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/CameraEditorUtils.TryGetSensorGateFrustum.html
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

Calculate the frustrum corners from the sensor physical properties, without taking gate fitting into account. To get the actual frustum with gate fit adjustment, use CameraEditorUtils.TryGetFrustum. This method is equivalent to CameraEditorUtils.TryGetFrustum for non-physical cameras.

Corners are calculated in this order: left bottom, left top, right top, right bottom.
