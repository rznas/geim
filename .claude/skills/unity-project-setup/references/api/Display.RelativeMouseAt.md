<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Display.RelativeMouseAt.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| inputMouseCoordinates | Mouse Input Position as Coordinates. |

### Description

Query relative mouse coordinates.

RelativeMouseAt can be used to query relative mouse input coordinates and the screen in which Mouse Input is recorded. x, y returns the coordinates in relative space and z returns the screen in which Mouse Input is handled, returns Vector3.zero when Multiple Displays are not supported. Currently implemented for Windows and macOS Standalone players.
