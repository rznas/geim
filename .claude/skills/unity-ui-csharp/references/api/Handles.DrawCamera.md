<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Handles.DrawCamera.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| position | The area to draw the camera within in GUI coordinates. |
| camera | The camera to draw. |
| drawMode | How the camera is drawn (textured, wireframe, etc.). |

### Description

Draws a camera inside a rectangle.

This function also sets Camera.current to `camera`. It sets the camera's pixelRect to `position`, but in screen coordinates. This might be different from GUI coordinates if you are using a high DPI display.

**Note:** Use HandleUtility.GetHandleSize where you might want to have constant screen-sized handles.

See Also EditorGUIUtility.pixelsPerPoint.
