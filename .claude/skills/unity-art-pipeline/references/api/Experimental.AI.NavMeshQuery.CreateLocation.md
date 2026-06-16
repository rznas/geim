<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Experimental.AI.NavMeshQuery.CreateLocation.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| position | World position of the NavMeshLocation to be created. |
| polygon | Valid identifier for the NavMesh node. |

### Returns

**NavMeshLocation** Object containing the desired position and NavMesh node.

### Description

Returns a valid NavMeshLocation for a position and a polygon provided by the user.

The returned position will be the point on the surface of the required NavMesh polygon that is closest to the specified position.

Other methods for obtaining reliable positions on the NavMesh are: NavMeshQuery.MapLocation, NavMeshQuery.MoveLocation and NavMeshQuery.GetPortalPoints.
