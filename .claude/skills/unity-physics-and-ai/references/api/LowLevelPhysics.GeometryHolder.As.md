<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/LowLevelPhysics.GeometryHolder.As.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Returns

**T** Returns the basic geometric shape which is stored in the GeometryHolder.

### Description

Return the specified geometric shape stored inside this Geometry Holder object.

This function throws an InvalidOperationException if you try to request a geometric shape that is not stored in the GeometryHolder.

In the case of CapsuleGeometry, when Unity retrieves the shape from a CapsuleCollider component, the CapsuleCollider.direction is not included. For this reason, you should assume the direction is always along the X axis.

Additional resources: BoxGeometry, SphereGeometry, CapsuleGeometry, ConvexMeshGeometry, TriangleMeshGeometry, TerrainGeometry.
