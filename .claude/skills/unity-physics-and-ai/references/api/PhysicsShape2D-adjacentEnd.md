<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/PhysicsShape2D-adjacentEnd.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Defines the position of a virtual point adjacent to the end vertex of an edge shape.

An edges shape is comprised of multiple edges (line segments) defined by all its vertices. However, when a collision occurs with the end vertex of the shape then this vertex can be used to form a collision normal, and calculate the collision response. This allows for joining of individual edge shapes to produce a continuous collision surface.

This property is identical to EdgeCollider2D.adjacentEndPoint. It is only used when the shapeType is PhysicsShapeType2D.Edges and useAdjacentEnd is true.
