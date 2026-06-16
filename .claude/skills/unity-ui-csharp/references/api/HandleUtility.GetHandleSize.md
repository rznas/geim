<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/HandleUtility.GetHandleSize.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| position | The position of the handle in 3d space. |

### Returns

**float** A constant screen-size for the handle, based on the distance between from the supplied handle's position to the camera.

### Description

Get world space size of a manipulator handle at given position.

Uses the current camera to calculate suitable size.
