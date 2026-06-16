<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/CameraProjectionCache.WorldToGUIPoint.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| worldPoint | A point in world space. |

### Returns

**Vector2** A point in GUI space.

### Description

Converts a world space point to a 2D GUI position.

Uses the cached camera matrices and viewport to calculate the projection.

See also HandleUtility.WorldToGUIPoint.
