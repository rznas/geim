<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Unity.VectorGraphics.VectorUtils.SegmentsInPath.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| segments | The path segments to iterate from |
| closed | Whether to return the segment connecting the last point to the beginning of the path |

### Returns

**IEnumerable<BezierSegment>** An enumerable of every segments in the path

### Description

Iterates through every segment in a list of path segments.
