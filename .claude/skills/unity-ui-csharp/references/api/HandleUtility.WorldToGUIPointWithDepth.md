<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/HandleUtility.WorldToGUIPointWithDepth.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| world | Point in world space. |

### Returns

**Vector3** A Vector3 where the x and y values relate to the 2D GUI position. The z value is the distance in world units from the camera.

### Description

Convert a world space point to a 2D GUI position.

Uses the current camera to calculate the projection.

Additional resources: WorldToGUIPoint. GUIPointToWorldRay, RaySnap.
