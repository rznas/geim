<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Cursor.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Cursor API for setting the cursor (mouse pointer).

Supports hardware cursors on macOS, Windows and Linux. Falls back to software cursors on unsupported platforms.

**Windows Store Apps**: Supports only one hardware cursor, set via PlayerSettings.defaultCursor, cursors created at runtime using Cursor.SetCursor are treated as software cursors.

**Android**: Supports custom hardware cursors on version 7.0 and later. There is no hardware or software custom cursor support before 7.0.

Textures used as cursors should be marked as such in their import settings.

### Static Properties

| Property | Description |
| --- | --- |
| lockState | Determines whether the hardware pointer is locked to the center of the view, constrained to the window, or not constrained at all. |
| visible | Determines whether the hardware pointer is visible or not. |

### Static Methods

| Method | Description |
| --- | --- |
| SetCursor | Sets a custom cursor to use as your cursor. |
