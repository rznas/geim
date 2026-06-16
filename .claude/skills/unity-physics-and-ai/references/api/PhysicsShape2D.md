<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/PhysicsShape2D.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Represents an efficient low-level physics shape used by the physics engine.

A Collider2D is a high-level representation of physics geometry that produces low-level PhysicsShape2D geometry that the physics engine understands. A PhysicsShape2D can represent any shape type as defined by PhysicsShapeType2D.

Additional resources: PhysicsShapeGroup2D.

### Properties

| Property | Description |
| --- | --- |
| adjacentEnd | Defines the position of a virtual point adjacent to the end vertex of an edge shape. |
| adjacentStart | Defines the position of a virtual point adjacent to the start vertex of an edge shape. |
| radius | The radius of the shape. |
| shapeType | The shape type determines how the vertices and radius are used by this PhysicsShape2D. |
| useAdjacentEnd | When the value is true, then the shape will use the adjacentEnd feature. When the value is false, then the shape will not use the adjacentEnd feature. |
| useAdjacentStart | When the value is true, then the shape will use the adjacentStart feature. When the value is false, then the shape will not use the adjacentStart feature. |
| vertexCount | The total number of vertices used to represent the shape type. |
| vertexStartIndex | The start index for the geometry of this shape within the PhysicsShapeGroup2D. |
