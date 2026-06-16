<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/AI.NavMesh.CalculateTriangulation.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Returns

**NavMeshTriangulation** Object that contains a list of vertices and a list of indices that describe the triangles of the active NavMeshes.

### Description

Calculates a triangulation of all the NavMeshes that are present in the scene at the time of the call.

Calculates and returns a simple triangulation of all the NavMeshes that are currently active. The resulting object contains vertices, triangle indices and NavMesh area types. The triangles from each NavMesh instance are grouped together in the array. These triangle groups are further sorted in the array based on the agent types that their originating NavMeshes were built for. 
 The triangulation captures the current shape of the NavMeshes, which can include temporary holes carved by NavMeshObstacles.


The returned mesh contains only the triangles used for pathfinding. It does not contain the detail that is used to place the agents on the walkable surface. This is noticeable on locations with curved surfaces.

Additional resources: Areas and Costs to learn how to use different Area types.
