<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/EdgeCollider2D.GetPoints.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| points | A list of Vector2 used to receive the points. |

### Returns

**int** Returns the number of points placed in the `points` list.

### Description

Gets all the points that define a set of continuous edges.

Ensure the provided list capacity is large enough to contain all retrieved points you need. Unity automatically increases the list capacity if it is not large enough to contain all retrieved points. As the list is usually reused, it is recommended to make the list large enough to return a reasonable quantity of points for its expected use. If the list capacity does not need to be increased, then this function will not allocate any memory and no additional work is produced for the garbage collector.
