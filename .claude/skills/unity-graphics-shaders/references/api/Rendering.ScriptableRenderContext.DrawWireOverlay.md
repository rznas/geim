<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Rendering.ScriptableRenderContext.DrawWireOverlay.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| camera | The Scene view Camera to draw the overlay for. |

### Description

Schedules the drawing of a wireframe overlay for a given Scene view Camera.

Note that `DrawWireOverlay` works only in the Unity Editor, when the Camera.cameraType is set to CameraType.SceneView, and the SceneView.CameraMode.drawMode is set to DrawCameraMode.TexturedWire. If these conditions are not met, calling `DrawWireOverlay` has no effect.

To draw gizmos on top of the wireframe overlay in your Scene view, call `DrawWireOverlay` and then call DrawGizmos.
