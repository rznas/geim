<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Experimental.AI.NavMeshQuery.PolygonLocalToWorldMatrix.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| polygon | NavMesh node for which its owner's transform must be determined. |

### Returns

**Matrix4x4** Transformation matrix for the surface owning the specified polygon.
 Matrix4x4.identity when the NavMesh node is a NavMeshLink or an OffMeshLink. Additional resources: NavMeshQuery.GetPolygonType.

### Description

Returns the transformation matrix of the NavMesh surface that contains the specified NavMesh node (Read Only).

NavMeshData surfaces have their transforms defined by the `position` and `rotation` values declared at the moment when they were baked with NavMeshBuilder.BuildNavMeshData, or as part of a NavMeshSurface, or by explicitly setting the values for NavMeshData.position and NavMeshData.rotation.

Custom transforms for NavMeshDataInstances can further be specified when they are created with explicit `position` and `rotation` values passed to the NavMesh.AddNavMeshData(data, position, rotation) method.

**Important:** This method does not return the position and orientation of a single NavMesh polygon. It returns the position of the surface that owns the polygon.

**Known issue:** Identity matrix is returned instead of the actual transform for NavMeshLinks that have been instantiated with a call to NavMesh.AddLink(link, position, rotation).

Additional resources: NavMeshQuery.PolygonWorldToLocalMatrix.
