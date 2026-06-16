<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Collider2D.GetShapes.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| physicsShapeGroup | The PhysicsShapeGroup2D to store the retrieved PhysicsShape2D in. |

### Returns

**int** Returns the number of PhysicsShape2D retrieved from the Collider2D.

### Description

Gets all the PhysicsShape2D used by the Collider2D.

All Collider2D represent a high-level definition of 2D geometry that is used to create efficient low-level primitive shapes used by the physics engine for collision detection. These low-level primitive shapes are what the 2D physics gizmos draw within the Unity Editor. This method provides access to a copy of these primitive shapes which can be useful in various use-cases such as debugging and gizmos or rendering Collider2D geometry at runtime.

Use this method to gain access to a copy of all the low-level primitive shapes that are produced by a Collider2D. If no such shapes exist on the Collider2D as indicated by Collider2D.shapeCount then the shape group will not be populated with shapes. If shapes do exist, the group is first emptied before being populated with shapes.

Each Collider2D produces either a single or multiple PhysicsShape2D of a single PhysicsShapeType2D as indicated below:

- A CircleCollider2D produces a single PhysicsShapeType2D.Circle object
- A CapsuleCollider2D produces a single PhysicsShapeType2D.Capsule object
- An EdgeCollider2D produces a single PhysicsShapeType2D.Edges object
- A BoxCollider2D produces a single PhysicsShapeType2D.Polygon object (a box is a convex polygon)
- A PolygonCollider2D produces either a single or multiple PhysicsShapeType2D.Polygon object(s)
- A TilemapCollider2D produces either a single or multiple PhysicsShapeType2D.Polygon object(s) (each tile can produce multiple polygons so this can produce a lot of data)
- A CompositeCollider2D produces either a single or multiple PhysicsShapeType2D.Polygon (CompositeCollider2D.GeometryType.Polygons) or PhysicsShapeType2D.Edges (CompositeCollider2D.GeometryType.Outlines) object(s)

All Collider2D shape vertices are stored in the local space of the Rigidbody2D they are attached to i.e. their vertices are relative to the pose of the Rigidbody2D therefore when a Rigidbody2D translates or rotates, the vertices of attached Collider2D do not change. This is why changes to position or rotation should only ever happen via the Rigidbody2D as this is the most efficient method. When retrieving shapes, the shape vertices are in the local space of the Rigidbody2D. The current position and rotation of the Rigidbody2D is stored in PhysicsShapeGroup2D.localToWorldMatrix and can be used to transform the shape vertices to world space. If the Collider2D is not attached to any Rigidbody2D i.e. it is Static then the local space and world space are identical therefore the PhysicsShapeGroup2D.localToWorldMatrix is set to Matrix4x4.identity.

**Note:** It is recommened to reuse the PhysicsShapeGroup2D because then memory allocations only occur if the number of shapes or vertices retrieved are greater than the existing capacity of the PhysicsShapeGroup2D. Reusing this object therefore minimizes allocations to a bare minimum and eventually to none so no work is produced for the garbage collector.

Additional resources: Rigidbody2D.GetShapes.

### Parameters

| Parameter | Description |
| --- | --- |
| physicsShapeGroup | The PhysicsShapeGroup2D to store the retrieved PhysicsShape2D in. |
| shapeIndex | The index of the first shape to retrieve. This should be in the range of 0 to Collider2D.shapeCount-1. |
| shapeCount | The number of shapes to retrieve. The `shapeIndex` + `shapeCount` must be less than or equal to Collider2D.shapeCount. |

### Returns

**int** Returns the number of PhysicsShape2D retrieved from the Collider2D. In all cases this should be the same number as `shapeCount` .

### Description

Gets the specified range of the PhysicsShape2D used by the Collider2D.
