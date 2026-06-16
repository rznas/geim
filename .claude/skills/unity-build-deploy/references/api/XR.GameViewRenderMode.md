<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/XR.GameViewRenderMode.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Enumeration of available modes for XR rendering in the Game view or in the main window on a host PC. XR rendering only occurs when the Unity Editor is in Play Mode.

### Properties

| Property | Description |
| --- | --- |
| None | Disables rendering of any new frames from the eyes in the Game view or in the main window on a host PC. |
| LeftEye | Renders the left eye of the XR device in the Game View window or in main window on a host PC. |
| RightEye | Renders the right eye of the XR device in the Game View window or in main window on a host PC. |
| BothEyes | Renders both eyes of the XR device side-by-side in the Game view or in the main window on a host PC. |
| OcclusionMesh | Renders both eyes of the XR device, and the occlusion mesh, side-by-side in the Game view or in the main window on a host PC. |
| MotionVectors | Renders both eyes (motion vectors) of the XR device side-by-side in the Game view or in the main window on a host PC. Only works if the motion vector texture is in-use. |
