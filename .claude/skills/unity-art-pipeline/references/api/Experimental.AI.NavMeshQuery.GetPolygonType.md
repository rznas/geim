<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Experimental.AI.NavMeshQuery.GetPolygonType.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| polygon | Identifier of a node from a NavMesh surface or link. |

### Returns

**NavMeshPolyTypes** `Ground` when the node is a polygon on a NavMesh surface.
 `OffMeshConnection` when the node is a NavMeshLink or an OffMeshLink.

### Description

Returns whether the NavMesh node is a polygon or a link.

The type can be determined even after the specified node has become invalid in the query's NavMeshWorld.

**Known issue, to be fixed:** If the query's NavMeshWorld is invalid for any reason, the method returns NavMeshPolyTypes.OffMeshConnection.

Additional resources: NavMeshPolyTypes, NavMeshQuery.IsValid, NavMeshWorld.IsValid.
