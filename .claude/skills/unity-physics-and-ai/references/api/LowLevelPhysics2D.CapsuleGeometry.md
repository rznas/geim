<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/LowLevelPhysics2D.CapsuleGeometry.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

The geometry of a closed capsule which can be viewed as two semi-circles connected by a rectangle. See PhysicsBody.CreateShape.

### Static Properties

| Property | Description |
| --- | --- |
| defaultGeometry | Get the default Capsule. |

### Properties

| Property | Description |
| --- | --- |
| center1 | Local center of the first semi-circle. |
| center2 | Local center of the second semi-circle. |
| isValid | Check if the geometry is valid or not. |
| radius | The radius of the semi-circles. |

### Constructors

| Constructor | Description |
| --- | --- |
| CapsuleGeometry | Create a default Capsule. See CapsuleGeometry.defaultGeometry. |

### Public Methods

| Method | Description |
| --- | --- |
| CalculateAABB | Calculate the AABB of the geometry. |
| CalculateMassConfiguration | Calculate the mass configuration of the geometry. |
| CastRay | Calculate if a world ray intersects the geometry. See CastResult. |
| CastShape | Calculate if a cast shape intersects the geometry. Initially touching shapes are treated as a miss. You should check for overlap first if initial overlap is required. See CastShapeInput and CastResult. |
| ClosestPoint | Calculate the closest point on this geometry to the specified point. |
| Intersect | Check the intersection between this geometry and another. |
| InverseTransform | Inverse-Transform the geometry. |
| OverlapPoint | Calculate if a point overlaps the geometry. |
| ToPolygons | Creates multiple PolygonGeometry from the geometry. A limit is imposed on small vertex distances so it is recommended that the geometry is scaled appropriately rather than on the returned geometry so geometry is not discarded due to it being invalid. |
| Transform | Transform the geometry. |
| Validate | Get a validated version of the geometry, if possible. |

### Static Methods

| Method | Description |
| --- | --- |
| Create | Create a Capsule. |
