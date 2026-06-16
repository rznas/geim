<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/TransparencySortMode.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Transparent object sorting mode of a Camera.

By default, perspective cameras sort objects based on distance from camera position to the object center; and orthographic cameras sort based on distance along the view direction.

If you're making a 2D game with a perspective camera, you might want to use TransparencySortMode.Orthographic sort mode so that objects are sorted based on distance along the camera's view.

Additional resources: Camera.transparencySortMode.

### Properties

| Property | Description |
| --- | --- |
| Default | Default transparency sorting mode. |
| Perspective | Perspective transparency sorting mode. |
| Orthographic | Orthographic transparency sorting mode. |
| CustomAxis | Sort objects based on distance along a custom axis. |
