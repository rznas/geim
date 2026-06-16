<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Handles-currentCamera.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Gets or sets the camera that is currently rendering.

When set in the lifecycle of SceneView.OnGUI, Handles.currentCamera determines where 3D handles are drawn. Handles.currentCamera only sets the currently rendering camera, it does not set up the viewport. It is best practice to use Handles.SetCamera and not set the camera directly.
