<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/PhysicsShapeGroup2D.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Represents a group of PhysicsShape2D and their geometry.

A shape group represents multiple PhysicsShape2D of the same or mixed PhysicsShapeType2D along with their geometry. It is comprised of a single list of vertices (GetShapeVertices) along with a list of PhysicsShape2D which refer to specific ranges of those vertices i.e. they index into the list of vertices. Some shape types (PhysicsShapeType2D) use a fixed number of vertices and some use a variable number of vertices therefore this single vertices list is a compact and efficient representation for multiple PhysicsShape2D in a group.

The shape group can be created by using the following methods:

- Calling Collider2D.GetShapes where it would then represent all the shapes produced by that Collider2D
- Calling Rigidbody2D.GetShapes where it would then represent all the shapes produced by all theCollider2D attached to that Rigidbody2D
- Manually populating with custom shapes by calling AddCircle, AddCapsule, AddPolygon, AddBox or AddEdges.

### Properties

| Property | Description |
| --- | --- |
| localToWorldMatrix | Gets or sets a matrix that transforms the PhysicsShapeGroup2D vertices from local space into world space. |
| shapeCount | The total number of PhysicsShape2D in the shape group. (Read Only) |
| vertexCount | The total number of vertices in the shape group used to represent all PhysicsShape2D within it. (Read Only) |

### Constructors

| Constructor | Description |
| --- | --- |
| PhysicsShapeGroup2D | Initializes and returns an instance of PhysicsShapeGroup2D. The shape group will be empty and ready for use by Collider2D.GetShapes, Rigidbody2D.GetShapes or manually adding shapes. |

### Public Methods

| Method | Description |
| --- | --- |
| Add | Adds a copy of all the PhysicsShape2D and their geometry from the specified physicsShapeGroup into this shape group. The specified physicsShapeGroup is not modified. |
| AddBox | Adds a box shape (PhysicsShapeType2D.Polygon) to the shape group. |
| AddCapsule | Adds a capsule shape (PhysicsShapeType2D.Capsule) to the shape group. |
| AddCircle | Adds a circle shape (PhysicsShapeType2D.Circle) to the shape group. |
| AddEdges | Adds an edges shape (PhysicsShapeType2D.Edges) to the shape group. |
| AddPolygon | Adds a polygon shape (PhysicsShapeType2D.Polygon) to the shape group. |
| Clear | Clears all the vertices and shapes from the PhysicsShapeGroup. |
| DeleteShape | When destroying a shape at the specified shapeIndex, all other shapes that exist above the specified shapeIndex will have their shape indices updated appropriately. |
| GetShape | Gets the PhysicsShape2D stored at the specified shapeIndex. |
| GetShapeData | Gets a copy of both the shapes and vertices in the PhysicsShapeGroup2D. |
| GetShapeVertex | Gets a single vertex of a shape. The vertex index is zero-based with the shape having a quantity of vertex specified by PhysicsShape2D.vertexCount. |
| GetShapeVertices | Gets a copy of the shape vertices in the PhysicsShapeGroup2D. |
| SetShapeAdjacentVertices | Sets the adjacent vertices of a shape. |
| SetShapeRadius | Sets the radius of a shape. |
| SetShapeVertex | Sets a single vertex of a shape. |
