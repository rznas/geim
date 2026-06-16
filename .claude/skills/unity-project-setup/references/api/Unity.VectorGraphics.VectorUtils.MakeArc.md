<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Unity.VectorGraphics.VectorUtils.MakeArc.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| center | The center of the arc |
| startAngleRads | The starting angle of the arc, in radians |
| sweepAngleRads | The "length" of the arc, in radians |
| radius | The radius of the arc |

### Returns

**BezierPathSegment[]** An array of up to four BezierSegments holding the arc

### Description

Approximates a circle arc with up to 4 segments.
