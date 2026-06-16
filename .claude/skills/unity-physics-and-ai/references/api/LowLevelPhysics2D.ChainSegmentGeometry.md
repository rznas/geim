<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/LowLevelPhysics2D.ChainSegmentGeometry.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

The geometry of a chain line segment with one-sided collision which only collides on the "right" side. Several of these are generated for a chain, connected as ghost1 -> point1 -> point2 -> ghost2.

### Static Properties

| Property | Description |
| --- | --- |
| defaultGeometry | Get the default Chain Segment. |

### Properties

| Property | Description |
| --- | --- |
| ghost1 | The tail ghost vertex. A ghost vertex is used by the solver to define how a collision response should be handled when a contact with the vertex occurs. |
| ghost2 | The head ghost vertex A ghost vertex is used by the solver to define how a collision response should be handled when a contact with the vertex occurs. |
| isValid | Check if the geometry is valid or not. |
| segment | The Segment. |

### Constructors

| Constructor | Description |
| --- | --- |
| ChainSegmentGeometry | Create a default ChainSegment. See ChainSegmentGeometry.defaultGeometry. |

### Public Methods

| Method | Description |
| --- | --- |
| CalculateAABB | Calculate the AABB of the geometry. |
| CastRay | Calculate if a world ray intersects the geometry. See CastResult. |
| CastShape | Calculate if a cast shape intersects the geometry. Initially touching shapes are treated as a miss. You should check for overlap first if initial overlap is required. See CastShapeInput and CastResult. |
| ClosestPoint | Calculate the closest point on this geometry to the specified point. |
| InverseTransform | Inverse-Transform the geometry. |
| Transform | Transform the geometry. |
