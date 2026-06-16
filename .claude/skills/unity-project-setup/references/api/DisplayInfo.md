<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/DisplayInfo.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Represents a connected display.

### Properties

| Property | Description |
| --- | --- |
| height | The display height in pixels. |
| name | Human-friendly display name. |
| physicalDpi | The current pixel density of the display measured in dots-per-inch (DPI). |
| refreshRate | The current refresh rate of the display. |
| resolutions | Returns all full-screen resolutions supported on the display (Read Only). |
| width | The display width in pixels. |
| workArea | Specifies the work area rectangle of the display relative to the top left corner. For example, it excludes the area covered by the macOS Dock or the Windows Taskbar. |

### Static Methods

| Method | Description |
| --- | --- |
| GetLayout | Retrieves information about the connected displays and populates a list with properties such as display name, resolution, refresh rate, and other relevant attributes. |
