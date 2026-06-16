<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Experimental.AI.NavMeshQuery.IsValid.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| polygon | Identifier of the NavMesh node to be checked. |

### Description

Returns true if the node referenced by the specified PolygonId is active in the NavMesh.

You can make NavMesh nodes invalid when you remove the NavMesh surface or the links they belong to, or when you modify the NavMesh in their region, replacing them. You can remove the NavMesh surface and links with calls to NavMesh.RemoveNavMeshData, NavMesh.RemoveLink. To modify the NavMesh, call NavMeshBuilder.UpdateNavMeshData or use a NavMeshObstacle to carve it.

### Parameters

| Parameter | Description |
| --- | --- |
| location | Location on the NavMesh to be checked. Same as checking `location.polygon` directly. |

### Description

Returns `true` if the node referenced by the PolygonId contained in the NavMeshLocation is active in the NavMesh.
