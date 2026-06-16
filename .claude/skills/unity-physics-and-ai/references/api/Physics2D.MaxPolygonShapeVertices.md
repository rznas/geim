<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Physics2D.MaxPolygonShapeVertices.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

The maximum number of vertices allowed per primitive polygon shape type (PhysicsShapeType2D.Polygon). (Read Only)

The low-level physics engine sets a maximum number of vertices allowed per convex polygon shape. This count is set to be a balance between flexibility and performance. Any time a polygon shape is encountered, all of its edges need to iterated to calculate collisions or perform queries. A value too large results in a lot of time discounting polygons. A value too small reduces the number of useful polygon shapes that can be created.

**NOTE**: This is a compile-time constant that cannot be changed.
