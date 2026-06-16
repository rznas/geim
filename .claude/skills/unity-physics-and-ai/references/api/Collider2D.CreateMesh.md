<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Collider2D.CreateMesh.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| useBodyPosition | Should the mesh be transformed by the position of the attached Rigidbody2D? |
| useBodyRotation | Should the mesh be transformed by the rotation of the attached Rigidbody2D? |
| useDelaunay | When true, Delaunay triangulation is used to generate the mesh. This can reduce the number of vertices created in the Collider mesh and reduce the number of small triangle fans produced, both of which can improve overall mesh size and performance. |

### Returns

**Mesh** The planar Mesh created that matches the collider geometry or NULL if no Mesh could be created.

### Description

Creates a planar Mesh that is identical to the area defined by the Collider2D geometry.

In simple terms, this method will create a Mesh that exactly represents the area defined by the Collider2D. The created Mesh can then be used for any purpose including but not limited to navigation meshes for 2D navigation. The Collider2D does not own the created Mesh and you are responsible for its lifetime therefore not deleting the Mesh will result in a memory leak. The Collider2D is not altered in any way during this call. The Collider2D must have valid shapes present for a Mesh to be created otherwise NULL will be returned indicating that no Mesh was created.

All Collider2D geometry lives in the space of the Rigidbody2D it is attached to. You can select whether the Mesh vertices are transformed by the Rigidbody2D position and rotation using `useBodyPosition` and `useBodyRotation` respectively. If the Collider2D is not attached to a Rigidbody2D then the geometry is permanently in world-space and both `useBodyPosition` and `useBodyRotation` should always be set to false.

What follows is more detail on how the Collider2D shapes are considered when creating a Mesh. Whilst there are many types of Collider2D, they only produce collision geometry which comprise of the following primitive shape types: Circle, Capsule, Polygon and Edge. These primitive types are split into two groups known as closed convex primitives and open primitives. Primitives of type Circle, Capsule and Polygon are closed convex primitives which define a closed convex area bounded by the primitive. The Edge primitive is an open type that defines geometry with no internal area.

A CircleCollider2D will produce a single circle primitive. A CapsuleCollider2D will produce a single capsule primitive. A BoxCollider2D will produce a single polygon primitive. A PolygonCollider2D can produce multiple polygon primitives to convert a potentially concave area into multiple convex polygons. An EdgeCollider2D can produce multiple edge primitives. A TilemapCollider2D can produce multiple polygon primitives (per-tile). A CompositeCollider2D can produce either multiple polygon primitives (in Polygon mode) or produce multiple edge primitives (in Outline mode).

When creating a Mesh to represent Collider2D geometry, all closed convex primitives (circle, capsule and polygon) produce the respective filled area defined by those primitives. In the case where there are multiple polygons, the total area of all the polygons is created. Note that when BoxCollider2D.edgeRadius that is greater than zero is used (to produce radial edges), the Mesh is created to also represent that geometry.

When creating a Mesh to represent Collider2D geometry, all open primitives (edges) have special handling. When the start vertex of the first edge is coincident with the end vertex of the last edge (to define a pseudo-closed area) then a mesh is created to represent that closed area even though 2D physics doesn't itself treat it as such. If the vertex are not coincident then a Mesh will only be created if EdgeCollider2D.edgeRadius is greater than zero as this produces edges with an area.

An EdgeCollider2D when used with coincident start/end vertex will create a Mesh that is a convex hull of all edge vertices. Any concave vertex (producing a concave configuration) will be considered as being on the convex hull resulting in a convex planar Mesh. If a convex Mesh is required then multiple polygon primitives should be used i.e. a PolygonCollider2D or a CompositeCollider2D in polygon mode. A CompositeCollider2D in outline mode produces edges with coincident start/end vertex so will always create a closed shape Mesh which also supports CompositeCollider2D.edgeRadius.

Additional resources: Collider2D.GetShapeHash.
