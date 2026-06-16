<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/PhysicsShapeType2D.Edges.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Use multiple edges to interpret the PhysicsShape2D geometry.

An edge geometry type is comprised of an unlimited quantity of vertices in the PhysicsShape2D and a PhysicsShape2D.radius. The vertices represent the consecutive edges where each vertex connects to the next vertex. These edges represent an open shape with no interior even if the first and last vertices overlap. The PhysicsShape2D.radius is the radius of all edges. (Edges with a radius of zero become infinitely thin edges while a radius greater than zero results in capsule shaped edges i.e. any edge with a radius.)

Edges also have an PhysicsShape2D.adjacentStart and PhysicsShape2D.adjacentEnd feature allowing separate edge shapes to be joined.

**NOTE**: You should ensure that edges do not self-intersect as this can produce incorrect collision responses. As checking self-intersection has a runtime cost, this constraint is not validated and so you should ensure this does not occur.
