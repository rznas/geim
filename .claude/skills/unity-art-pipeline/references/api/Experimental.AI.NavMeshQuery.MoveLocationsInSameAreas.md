<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Experimental.AI.NavMeshQuery.MoveLocationsInSameAreas.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| locations | Array of positions to be moved across the NavMesh surface. At the end of the method call this array contains the resulting locations. |
| targets | World positions you want the agent to reach when moving to each of the locations. |
| areaMask | Filters for the areas which can be traversed during the movement to each of the locations. |

### Description

Translates a series of NavMesh locations to other positions without losing contact with the surface, given one common area filter for all of them.

Does the exact same thing as NavMeshQuery.MoveLocations only it applies the same area filter to all the movements.

Additional resources: NavMeshQuery.MoveLocation, NavMeshLocation.
