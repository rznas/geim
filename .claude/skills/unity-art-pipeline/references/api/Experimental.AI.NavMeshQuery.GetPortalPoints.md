<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Experimental.AI.NavMeshQuery.GetPortalPoints.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| polygon | First NavMesh node. |
| neighbourPolygon | Second NavMesh node. |
| left | One of the world points for the resulting separation edge which must be passed through when traversing between the two specified nodes. This point is the left side of the edge when traversing from the first node to the second. |
| right | One of the world points for the resulting separation edge which must be passed through when traversing between the two specified nodes. This point is the right side of the edge when traversing from the first node to the second. |

### Returns

**bool** `True` if a connection exists between the two NavMesh nodes. `False` if no connection exists between the two NavMesh nodes.

### Description

Obtains the end points of the line segment common to two adjacent NavMesh nodes.

For two polygons that are part of a NavMesh surface, this method returns the edge where both polygons meet. If the two polygons are in different NavMesh tiles the connected edges can be of different length or have different start and end positions from each other. If this happens the resulting separation edge is the overlapping part of the edges, which may be shorter than either of the individual edges.

When one node is a link and the other is a polygon, the returned points are placed where the link intersects the polygon.

The resulting positions are expressed in world space and can be transformed into a NavMesh's local space by the use of NavMeshQuery.PolygonWorldToLocalMatrix.

Additional resources: NavMeshQuery.GetEdgesAndNeighbors.
