<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Unity.VectorGraphics.VectorUtils.BezierSegmentsToPath.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| segments | An array of BezierSegment |

### Returns

**BezierPathSegment[]** An array of path segments

### Description

Converts an array of BezierSegments into a connected path.

If two consecutive segments are disconnected, a straight line will be added between the two endpoints.
