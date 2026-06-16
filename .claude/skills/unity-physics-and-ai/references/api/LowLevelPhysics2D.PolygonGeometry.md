<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/LowLevelPhysics2D.PolygonGeometry.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

The geometry of a closed convex polygon.

 The geometry has a fixed maximum number of vertices as defined by the constant PhysicsConstants.MaxPolygonVertices. Polygon regions that require a larger quantity of vertices or are concave are defined by multiple polygon geometry using the PhysicsComposer or the PolygonGeometry.CreatePolygons utility. See PhysicsBody.CreateShape.

### Static Properties

| Property | Description |
| --- | --- |
| defaultGeometry | Get the default Polygon. |

### Properties

| Property | Description |
| --- | --- |
| centroid | The centroid of the polygon. |
| count | The number of polygon vertices. |
| isValid | Check if the geometry is valid or not. |
| normals | The geometry normal stored in a ShapeArray. |
| radius | The external radius for rounded polygons. |
| vertices | The geometry vertices stored in a ShapeArray. |

### Constructors

| Constructor | Description |
| --- | --- |
| PolygonGeometry | Create a default Polygon. See PolygonGeometry.defaultGeometry. |

### Public Methods

| Method | Description |
| --- | --- |
| AsReadOnlySpan | Get the polygon vertices as a read-only span. |
| AsSpan | Get the polygon vertices as a span. |
| CalculateAABB | Calculate the AABB of the geometry. |
| CalculateMassConfiguration | Calculate the mass configuration of the geometry. |
| CastRay | Calculate if a world ray intersects the geometry. See CastResult. |
| CastShape | Calculate if a cast shape intersects the geometry. Initially touching shapes are treated as a miss. You should check for overlap first if initial overlap is required. See CastShapeInput and CastResult. |
| ClosestPoint | Calculate the closest point on this geometry to the specified point. |
| Intersect | Check the intersection between this geometry and another. |
| InverseTransform | Inverse-Transform the geometry. |
| OverlapPoint | Calculate if a point overlaps the geometry. |
| Transform | Transform the specified geometry. |
| Validate | Get a validated version of the geometry, if possible. |

### Static Methods

| Method | Description |
| --- | --- |
| Create | Create a Polygon from the specified vertices. The number of vertices must be in the range 3 to PhysicsConstants.MaxPolygonVertices. |
| CreateBox | Create a Polygon as a four-sided box. |
| CreatePolygons | Create multiple PolygonGeometry from a set of vertices. The vertices are assumed to produce a closed loop but can describe a concave shape if required. There must be at least 3 vertices. A limit is imposed on small vertex distances so be aware that this overload uses a vertex scale of Vector2.one so consider using the overload which allows you to increase this if required. |
| DeleteVertex | Delete a vertex from the geometry returning a new geometry with updated normals and centroid. |
| InsertVertex | Insert a vertex into the geometry returning a new geometry with updated normals and centroid. |
