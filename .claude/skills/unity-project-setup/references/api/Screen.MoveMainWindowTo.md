<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Screen.MoveMainWindowTo.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| display | The target display where the window should move to. |
| position | The position the window moves to. Relative to the top left corner of the specified display in pixels. |

### Returns

**AsyncOperation** Returns AsyncOperation that represents moving the window.

### Description

Moves the main window to the specified position relative to the top left corner of the specified display. Position value is represented in pixels. Moving the window is an asynchronous operation, which can take multiple frames.

Window movement adheres to the current fullscreen mode. If the current fullscreen mode is set to fullscreen, then Unity snaps the position to the top left corner of the display and resizes it to fit.

This API is only supported on Linux, macOS and Windows Standalone.
