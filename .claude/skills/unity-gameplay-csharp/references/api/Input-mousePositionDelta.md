<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Input-mousePositionDelta.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

The current mouse position delta in pixel coordinates. (Read Only).

**Note**: This API is part of the legacy Input Manager. The recommended best practice is that you don't use this API in new projects. For new projects, use the Input System package. To learn more about input, refer to Input.

Input.mousePositionDelta is a Vector3 for compatibility with functions that have Vector3 arguments. The z component of the Vector3 is always 0.

Note: You should use Input.mousePositionDelta instead of [[Input.mousePosition] when Cursor.lockState is set to CursorLockMode.Locked, since when cursor is locked, the mouse position remains stationary when moving the mouse, thus only position delta gives you the information about mouse movement.
