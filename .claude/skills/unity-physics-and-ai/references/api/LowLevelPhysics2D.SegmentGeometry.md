<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/LowLevelPhysics2D.SegmentGeometry.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

The geometry of a line segment. See PhysicsBody.CreateShape.

### Static Properties

| Property | Description |
| --- | --- |
| defaultGeometry | Get the default Segment. The line segment is directed towards the left. |

### Properties

| Property | Description |
| --- | --- |
| backward | Calculate the vector from SegmentGeometry.point2 to SegmentGeometry.point1. See SegmentGeometry.forward. |
| forward | Calculate the vector from SegmentGeometry.point1 to SegmentGeometry.point2. See SegmentGeometry.backward. |
| isValid | Check if the geometry is valid or not. |
| midPoint | The mid-point between SegmentGeometry.point1 and SegmentGeometry.point2. |
| point1 | The first point. |
| point2 | The second point. |

### Constructors

| Constructor | Description |
| --- | --- |
| SegmentGeometry | Create a default Segment. See SegmentGeometry.defaultGeometry. |

### Public Methods

| Method | Description |
| --- | --- |
| CalculateAABB | Calculate the AABB of the geometry. |
| CastRay | Calculate if a world ray intersects the geometry. See CastResult. |
| CastShape | Calculate if a cast shape intersects the geometry. Initially touching shapes are treated as a miss. You should check for overlap first if initial overlap is required. See CastShapeInput and CastResult. |
| ClosestPoint | Calculate the closest point on this geometry to the specified point. |
| Intersect | Check the intersection between this geometry and another. |
| InverseTransform | Inverse-Transform the geometry. |
| Scale | Scale the geometry along the SegmentGeometry.forward and SegmentGeometry.backward direction. |
| Transform | Transform the geometry. |

### Static Methods

| Method | Description |
| --- | --- |
| Create | Create a Segment. |
