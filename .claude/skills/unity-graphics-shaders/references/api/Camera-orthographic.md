<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Camera-orthographic.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Is the camera orthographic (*true*) or perspective (*false*)?

When ortho is *true*, camera's viewing volume is defined by orthographicSize.
 When orthographic is *false*, camera's viewing volume is defined by fieldOfView.

NOTE: Deferred rendering is not supported when using Orthographic projection. If the camera's projection mode is set to Orthographic, the camera will always use Forward rendering.

Additional resources: camera component, transparencySortMode.
