<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/PhysicsShapeGroup2D-ctor.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| shapeCapacity | The initial capacity of the PhysicsShape2D list used to contain the shapes. |
| vertexCapacity | The initial capacity of the vertices list used to contain the shape geometry. |

### Description

Initializes and returns an instance of PhysicsShapeGroup2D. The shape group will be empty and ready for use by Collider2D.GetShapes, Rigidbody2D.GetShapes or manually adding shapes.

Both the `shapeCapacity` and `vertexCapacity` should be set high enough so that new allocations are not required and therefore no garbage collection work is produced.
