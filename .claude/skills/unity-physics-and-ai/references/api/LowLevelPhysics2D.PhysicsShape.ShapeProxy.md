<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/LowLevelPhysics2D.PhysicsShape.ShapeProxy.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

A proxy of a shape in a generic form suited to representing all support shape types. You can provide between 1 and PhysicsConstants.MaxPolygonVerticesand a radius. A CircleGeometry is a single point with a non-zero radius (zero radius is allowed however and defines a point).A CapsuleGeometry is two points with a non-zero radius.A PolygonGeometry box is the points with and an optional radius.A SegmentGeometry is two points with a zero radius.A ChainSegmentGeometry is two points with a zero radius. To create a proxy, simply provide the geometry to the constructor.

### Properties

| Property | Description |
| --- | --- |
| capsuleGeometry | Get a CapsuleGeometry from the shape proxy. The PhysicsShape.ShapeProxy.count must be 2. |
| circleGeometry | Get a CircleGeometry from the shape proxy. The PhysicsShape.ShapeProxy.count must be 1. |
| count | The number of vertices. |
| polygonGeometry | Get a PolygonGeometry from the shape proxy. |
| radius | The radius around the vertices. |
| segmentGeometry | Get a SegmentGeometry from the shape proxy. The PhysicsShape.ShapeProxy.count must be 2. |
| vertices | The shape vertices. |

### Constructors

| Constructor | Description |
| --- | --- |
| PhysicsShape.ShapeProxy | Create a shape proxy representing a single point. |
