<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/VFX.VFXCameraXRSettings.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Represents settings that specify how the Visual Effect Graph should handle an XR Camera.

### Properties

| Property | Description |
| --- | --- |
| viewCount | The number of views to render in the pass. In Unity, there are different methods of rendering a Camera in XR. For multiple pass rendering, viewTotal is 2 and viewCount will be 1. For other XR rendering methods, both viewTotal and viewCount are 2. |
| viewOffset | Indicates where to start rendering views in this pass. Currently, the Visual Effect Graph uses this for multiple pass XR rendering. In this case, the first pass value is 0 and the second pass is 1. For other XR rendering methods, this is 0. |
| viewTotal | The number of views the camera has in total. For a normal Camera, this is 1. For a Camera in XR, this is 2. |
