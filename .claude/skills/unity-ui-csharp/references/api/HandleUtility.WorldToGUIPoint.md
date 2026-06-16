<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/HandleUtility.WorldToGUIPoint.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| world | Point in world space. |

### Description

Convert a world space point to a 2D GUI position..

Uses the current camera to calculate the projection. Returns GUI x/y and view-space z. Use this to place editor GUI elements based on world positions.

If the world point is outside the camera's frustrum, `WorldToGUIPoint` returns x/y coordinates that might be outside the SceneView’s pixel rect and a positive z value. If the world point is behind the camera, it returns a Vector3 with a negative z component.

Additional resources: GUIPointToWorldRay, RaySnap.
