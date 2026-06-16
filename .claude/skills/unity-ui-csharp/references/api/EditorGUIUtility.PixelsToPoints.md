<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/EditorGUIUtility.PixelsToPoints.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Convert from pixel space to point space.

Use this to convert values from custom content for use in GUI. For instance, you might be rendering a camera to a render texture, and then drawing GUI on top of that. Screen positions from the camera will be in pixel space, and need to be converted to points before being used for your UI.

Additional resources: PointsToPixels, pixelsPerPoint.

### Parameters

| Parameter | Description |
| --- | --- |
| position | A GUI position in pixel space. |

### Returns

**Vector2** A vector representing the same position in point space.

### Description

Convert a position from pixel to point space.

### Parameters

| Parameter | Description |
| --- | --- |
| rect | A GUI rect measured in pixels. |

### Returns

**Rect** A rect representing the same area in points.

### Description

Convert a Rect from pixel space to point space.
