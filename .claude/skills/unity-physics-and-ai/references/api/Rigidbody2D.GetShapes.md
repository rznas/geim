<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Rigidbody2D.GetShapes.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| physicsShapeGroup | The PhysicsShapeGroup2D to store the retrieved PhysicsShape2D in. |

### Returns

**int** Returns the number of PhysicsShape2D retrieved from the Rigidbody2D.

### Description

Gets all the PhysicsShape2D used by all Collider2D attached to the Rigidbody2D.

Where Collider2D.GetShapes will retrieve all shapes used by a specific Collider2D, this method will return all the shapes on all Collider2D attached to the Rigidbody2D.

For a complete description of how retrieving shapes works, refer to Collider2D.GetShapes.
