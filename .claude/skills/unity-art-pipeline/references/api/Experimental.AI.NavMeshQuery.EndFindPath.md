<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Experimental.AI.NavMeshQuery.EndFindPath.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| pathSize | A reference to an int which will be set to the number of NavMesh nodes in the found path. |

### Returns

**PathQueryStatus** `Success` when the number of nodes in the path was retrieved correctly.
 `PartialPath` when a path was found but it falls short of the desired end location.
 `Failure` when the path size can not be evaluated because the preceding call to `UpdateFindPath` was not successful.

### Description

Obtains the number of nodes in the path that has been computed during a successful NavMeshQuery.UpdateFindPath operation.

This method prepares the path data so that NavMeshQuery.GetPathResult can be used afterward to retrieve the actual array of PolygonId values that make up the path.

**Important:** This method should only be called once at the end of the pathfinding operation. Calling it multiple times may ruin the stored path.

Additional resources: PathQueryStatus.
