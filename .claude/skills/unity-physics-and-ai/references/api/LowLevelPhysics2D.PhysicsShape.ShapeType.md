<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/LowLevelPhysics2D.PhysicsShape.ShapeType.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

The type of shape. Some shapes are "closed" meaning they have an interior which will produce contacts. Some shapes are "open" meaning they do not have an interior and will only produce contacts when their boundary is intersected.

### Properties

| Property | Description |
| --- | --- |
| Circle | A circle with an offset. This is a closed shape. See CircleGeometry. |
| Capsule | A capsule is an extruded circle. This is a closed shape. See CapsuleGeometry. |
| Segment | A line segment. This is an open shape. See SegmentGeometry. |
| Polygon | A convex polygon. This is a closed shape. See PolygonGeometry. |
| ChainSegment | A Chain of line segments that are joined together with other line segments. This is an open shape. This is indirectly created and owned by a chain. See ChainSegmentGeometry and ChainGeometry. |
