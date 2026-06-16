<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Experimental.AI.NavMeshQuery.BeginFindPath.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| costs | Array of custom cost values for all of the 32 possible area types. Each value must be at least `1.0f`. This parameter is optional and defaults to the area costs configured in the project settings. Additional resources: NavMesh.GetAreaCost. |
| areaMask | Bitmask with values of 1 set at the indices for areas that can be traversed, and values of 0 for areas that are not traversable. This parameter is optional and defaults to NavMesh.AllAreas, if omitted. Additional resources: Areas and Costs. |
| start | The start location on the NavMesh for the path. |
| end | The location on the NavMesh where the path ends. |

### Returns

**PathQueryStatus** `InProgress` if the operation was successful and the query is ready to search for a path.
 `Failure` if the query's NavMeshWorld or any of the received parameters are no longer valid.

### Description

Initiates a pathfinding operation between two locations on the NavMesh.

The path always begins at the specified location. If the desired end location is not directly accessible, the search algorithm tries to find a valid location nearby.
 Calling this method overrides the progress made by this NavMeshQuery in the previous pathfinding operation.

NavMeshQuery.UpdateFindPath should be called after this method to process the path search.

Additional resources: PathQueryStatus.
