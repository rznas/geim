<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/PhysicsShapeType2D.Polygon.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Use a convex polygon shape to interpret the PhysicsShape2D geometry.

A polygon geometry type is comprised of a minimum of three (triangle) vertices and maximum defined by Physics2D.MaxPolygonShapeVertices in the PhysicsShape2D. The vertices represent a set of consecutive edges where each vertex connects to the next vertex with the last vertex automatically representing an edge connecting to the first vertex resulting in a closed primitive shape. These edges must result in a convex polygon. If this is not the case then the physics system will constrain the polygon to be convex by producing a convex hull. All polygon collision detection uses convex polygons for performance reasons.
