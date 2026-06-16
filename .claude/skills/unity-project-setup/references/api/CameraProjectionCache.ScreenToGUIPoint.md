<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/CameraProjectionCache.ScreenToGUIPoint.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| screenPoint | A point in screen space. |

### Returns

**Vector2** `screenPoint` converted to GUI space relative to the cached camera viewport.

### Description

Converts a point from screen space to GUI position relative to the viewport at the time the CameraProjectionCache was created.

The screen space y coordinate varies from zero at the top edge of the window to a maximum at the bottom edge of the window.
