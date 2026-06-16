<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/EdgeCollider2D.SetPoints.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| points | A list of Vector2 used to set the points. This list must contain at least two points. |

### Returns

**bool** Returns true if the list contains two or more points and the points are correctly set. Returns false otherwise.

### Description

Sets all the points that define a set of continuous edges.

If the provided `points` list contains less than two points then `false` is returned indicating the points were not set. Any points that are not valid such as them being NaN or Infinite are set to Vector2.zero.
