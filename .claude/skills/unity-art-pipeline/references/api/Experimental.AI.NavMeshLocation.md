<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Experimental.AI.NavMeshLocation.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

A world position that is guaranteed to be on the surface of the NavMesh.

The NavMeshLocation stores the position on the NavMesh surface together with the PolygonId of the NavMesh node containing that position. Using NavMeshLocations with NavMeshQuery operations remove the need to project the desired world position onto the NavMesh at the beginning of each and every operation.

A NavMeshLocation can be invalid in two situations: 1. When it has been created empty, instead of being the result of a NavMeshQuery operation. 2. When the NavMesh has been removed or modified at the indicated position or in its close vicinity.

If a NavMeshLocation is made invalid by a NavMeshObstacle carving the NavMesh in its vicinity the NavMeshLocation returns to a valid state if the NavMeshObstacle is removed. This is because removing a NavMeshObstacle restores the NavMesh to its original form without regenerating it.

Additional resources: NavMeshQuery.MapLocation, NavMeshQuery.IsValid, PolygonId.
