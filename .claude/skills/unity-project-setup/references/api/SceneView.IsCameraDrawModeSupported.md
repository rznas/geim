<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/SceneView.IsCameraDrawModeSupported.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| mode | A CameraMode to check. |

### Returns

**bool** Returns true if the current rendering configuration supports the CameraMode.

### Description

Checks if the current rendering configuration supports the CameraMode. The check includes custom validators.

A rendering configuration might not support a CameraMode if the mode has a feature that the current render pipeline does not support. For example, if the render pipeline does not support Enlighten Realtime Global Illumination, and CameraMode has a property DrawCameraMode.RealtimeAlbedo, this method returns false.

To register support for a draw mode feature in a custom render pipeline, use SceneView.onValidateCameraMode to add a draw mode validation callback.
