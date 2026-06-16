<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Rect.NormalizedToPoint.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| rectangle | Rectangle to get a point inside. |
| normalizedRectCoordinates | Normalized coordinates to get a point for. |

### Description

Returns a point inside a rectangle, given normalized coordinates.

The rectangle has coordinates between zero and one for the x and y axes. This function will compute the real screen coordinates and return as a `Vector2`.
