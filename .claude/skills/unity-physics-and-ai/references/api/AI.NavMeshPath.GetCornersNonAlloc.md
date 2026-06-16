<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/AI.NavMeshPath.GetCornersNonAlloc.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| results | Array to store path corners. |

### Returns

**int** The number of corners along the path - including start and end points.

### Description

Calculate the corners for the path.

This function is similar to the corners property except that the results are returned in the supplied array.

Note that this function expects the supplied array to have at least 2 elements.
