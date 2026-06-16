<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/CameraType.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Describes different types of camera.

The Unity Editor sets the type of a camera based on what it is used for. When selecting a model asset in the project the preview in the Inspector will be rendered with a camera that has the type Preview. A camera in the Scene Hierarchy will have the type Game. The preview window shown when selecting a camera in the Scene Hierarchy is a copy of the selected camera, and will therefore have the type Game as well.

### Properties

| Property | Description |
| --- | --- |
| Game | Used to indicate a regular in-game camera. |
| SceneView | Used to indicate that a camera is used for rendering the Scene View in the Editor. |
| Preview | Used to indicate a camera that is used for rendering previews in the Editor. |
| VR | Used to indicate that a camera is used for rendering VR (in edit mode) in the Editor. |
| Reflection | Used to indicate a camera that is used for rendering reflection probes. |
