<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/LowLevelPhysics2D.PhysicsShape-aabb.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Get the world AABB that bounds this shape. The bounds of the shape is inflated slightly due to speculative collision detection. The inflation is smaller on Static shape types however it is not zero due to time-of-impact collision detection. If an exact AABB is required then you can retrieve that via the shape geometry. See CircleGeometry.CalculateAABB, CapsuleGeometry.CalculateAABB, PolygonGeometry.CalculateAABB and SegmentGeometry.CalculateAABB.
