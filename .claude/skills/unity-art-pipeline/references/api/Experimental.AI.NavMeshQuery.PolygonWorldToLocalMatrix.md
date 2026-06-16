<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Experimental.AI.NavMeshQuery.PolygonWorldToLocalMatrix.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| polygon | NavMesh node for which its owner's inverse transform must be determined. |

### Returns

**Matrix4x4** Inverse transformation matrix of the surface owning the specified polygon.
 Matrix4x4.identity when the NavMesh node is a NavMeshLink or an OffMeshLink. Additional resources: NavMeshQuery.GetPolygonType.

### Description

Returns the inverse transformation matrix of the NavMesh surface that contains the specified NavMesh node (Read Only).

In contrast to NavMeshQuery.PolygonLocalToWorldMatrix the returned matrix can be used for transforming a world-coordinates position into the local coordinate system of the NavMesh surface owning the specified polygon.

**Important:** This method does not return the inverse position and orientation of a single NavMesh polygon. It returns the inverse position and orientation of the surface that owns the polygon.

**Known issue:** Identity matrix is returned instead of the actual inverse transform for NavMeshLinks that have been instantiated with a call to NavMesh.AddLink(linkData, position, rotation).
