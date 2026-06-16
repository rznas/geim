<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/CameraProjectionCache.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Project points from world to screen space.

Projection from world to screen space depends on internal camera matrices that Unity must recalculate whenever they are accessed. When accessed in a loop where the camera state does not change, these calculations are not necessary, which results in significant performance improvements.

### Constructors

| Constructor | Description |
| --- | --- |
| CameraProjectionCache | Creates a CameraProjectionCache with the camera's current state. |

### Public Methods

| Method | Description |
| --- | --- |
| GUIToScreenPoint | Converts a point from GUI position to screen space relative to the cached camera viewport. |
| ScreenToGUIPoint | Converts a point from screen space to GUI position relative to the viewport at the time the CameraProjectionCache was created. |
| WorldToGUIPoint | Converts a world space point to a 2D GUI position. |
| WorldToScreenPoint | Transforms position from world space into screen space using the cached camera projection and viewport. |
