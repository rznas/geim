<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Experimental.AI.NavMeshQuery.GetPathResult.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| path | Data array to be filled with the sequence of NavMesh nodes that comprises the found path. |

### Returns

**int** Number of path nodes successfully copied into the provided array.

### Description

Copies into the provided array the list of NavMesh nodes that form the path found by the NavMeshQuery operation.

Must be called at the end of a successful NavMeshQuery.BeginFindPath - NavMeshQuery.UpdateFindPath - NavMeshQuery.EndFindPath sequence in order to obtain the resulting path.

Can be called multiple times as long as NavMeshQuery.BeginFindPath has not been called for that same query.

If the resulting path, stored in the query, is longer than the length of the provided array, the nodes are still copied (from the beginning of the path up to the array's length).

**Important:** If the start NavMesh node of the path has been removed by a NavMesh modification since the initial `BeginFindPath` call of the pathfinding operation, the returned path will be empty.
