<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Experimental.AI.NavMeshQuery.MoveLocations.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| locations | Array of positions to be moved across the NavMesh surface. At the end of the method call this array contains the resulting locations. |
| targets | World positions to be used as movement targets by the agent. |
| areaMasks | Filters for the areas which can be traversed during the movement to each of the locations. |

### Description

Translates a series of NavMesh locations to other positions without losing contact with the surface.

Does the exact same thing as NavMeshQuery.MoveLocation only it acts sequentially on a batch of locations, given their respective targets and area filters. All three array parameters must have the same length.

The results are returned in-place in the `locations` array.

Additional resources: NavMeshQuery.MoveLocationsInSameAreas, NavMeshLocation.
