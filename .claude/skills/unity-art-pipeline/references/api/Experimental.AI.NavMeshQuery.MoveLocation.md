<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Experimental.AI.NavMeshQuery.MoveLocation.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| location | Position to be moved across the NavMesh surface. |
| target | World position you require the agent to move to. |
| areaMask | Bitmask with values of 1 set at the indices corresponding to areas that can be traversed, and with values of 0 for areas that should not be traversed. This parameter can be omitted, in which case it defaults to NavMesh.AllAreas. Additional resources: Areas and Costs. |

### Returns

**NavMeshLocation** A new location on the NavMesh placed as closely as possible to the specified `target` position.
 The start `location` is returned when that start is inside an area which is not allowed by the `areaMask`.

### Description

Translates a NavMesh location to another position without losing contact with the surface.

Returns the location on the NavMesh that is closest to the `target` position and that also has a continuous connection on the NavMesh surface through the allowed area types all the way to the start position specified by the `location` parameter. If the `target` position is outside the edges of the surface or of its allowed areas, a position at the edge is returned.

The movement does not cross NavMeshLinks or OffMeshLinks.

The result might not be accurate (the closest) if the `pathNodePoolSize` value in the NavMeshQuery initialization was not large enough to accommodate all the nodes that needed to be traversed in order to find a connection between `location.position` and `target`.

Additional resources: NavMeshQuery.MoveLocations, NavMeshQuery.MoveLocationsInSameAreas.
