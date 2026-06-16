<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Windowing.GameWindow.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Represents a native OS window managed by Unity's windowing system. This API is currently available only in EmbeddedLinux and QNX platforms.

The GameWindow class provides APIs to query and control window properties such as title, size, position, display, and fullscreen mode. It also supports asynchronous operations for moving, resizing, and destroying windows.

### Static Properties

| Property | Description |
| --- | --- |
| Main | Gets the main window of the application. |

### Public Methods

| Method | Description |
| --- | --- |
| DisposeAsync | Asynchronously disposes of the window and releases its resources. |
| GetDisplayInfo | Gets the display information of the display that holds the window. |
| GetFullScreenMode | Gets the full-screen mode of the window. |
| GetHashCode | Returns the hash code for this window. |
| GetHeight | Gets the height of the window. |
| GetLogicalDpi | Gets the logical DPI of the window. |
| GetPosition | Gets the position of the window relative to the top-left corner of the screen. |
| GetResolution | Gets the resolution of the window. |
| GetTitle | Gets the title of the window. |
| GetWidth | Gets the width of the window. |
| IsMain | Returns true if this window is the main application window. |
| IsValid | Returns true if this window is valid and not destroyed. |
| MoveTo | Moves the window to a new position on its current display asynchronously. |
| PositionChangedThisFrame | Checks if the window's position changed during the current frame. |
| RegisterPositionChangedCallback | Registers a callback that is invoked when the window's position changes. |
| RegisterResolutionChangedCallback | Registers a callback that is invoked when the window's resolution changes. |
| ResolutionChangedThisFrame | Checks if the window's resolution changed during the current frame. |
| SetResolution | Sets the resolution of the window. |
| SetTitle | Sets the title of the window. |
| UnregisterPositionChangedCallback | Unregisters a callback so it is no longer invoked when the window's position changes. |
| UnregisterResolutionChangedCallback | Unregisters a callback so it is no longer invoked when the window's resolution changes. |
