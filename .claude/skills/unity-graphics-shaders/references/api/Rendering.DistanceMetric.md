<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Rendering.DistanceMetric.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Type of sorting to use while rendering.

By default, perspective cameras sort objects based on distance from camera position to the object center; and orthographic cameras sort based on distance along the view direction.

If you're making a 2D game with a perspective camera, you might want to use DistanceMetric.Orthographic sort mode so that objects are sorted based on distance along the camera's view direction.

### Properties

| Property | Description |
| --- | --- |
| Perspective | Perspective sorting mode. |
| Orthographic | Orthographic sorting mode. |
| CustomAxis | Sort objects based on distance along a custom axis. |
