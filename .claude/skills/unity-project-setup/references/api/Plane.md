<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Plane.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Representation of a plane in 3D space.

A plane is an infinitely large, flat surface that exists in 3D space and divides the space into two halves known as *half-spaces*. It is easy to determine which of the two half-spaces a particular point is in and also how far the point is from the plane. Walls, floors and other flat surfaces are common in games, so a plane is sometimes useful for mathematical calculations with these objects. Also, there are cases where a real surface does not exist but it is useful to imagine that one is there. For example, in sports, a goal line or out-of-bounds line is often assumed to extend into the air, effectively defining a plane.

When a plane passes through the <0,0,0> point in world space, it is defined simply by a normal vector that determines which way it faces. It is easy to visualise this if you imagine looking at the plane edge-on.



In the previous image a plane is represented as a diagonal red line with the equation x = y passing through the origin point <0,0,0> in world space. A second line representing a normal vector with a positive y component indicates which direction the plane faces.

Note that the side from which the normal vector points is important since it is used to identify which half-space a point is in (ie, on the positive or "normal" side of the plane or the other side). When the plane doesn't pass through <0,0,0> it can be defined by the normal vector along with a distance from <0,0,0>



In the previous image a plane is represented as a diagonal red line which passes through -2, 0, offset rather than the origin point <0,0,0>. A second line representing a normal vector with a positive y component indicates which direction the plane faces. A third dotted line defines the distance between the plane and the origin point.

A plane can also be defined by the three corner points of a triangle that lies within the plane. In this case, the normal vector points toward you if the corner points go around clockwise as you look at the triangle face-on.

.

In the previous image a triangle is defined by points A in the bottom left, B at the top, and C at the bottom right. An arrow indicates the plane this triangle lies on as facing towards the viewer.

### Properties

| Property | Description |
| --- | --- |
| distance | The distance measured from the Plane to the origin, along the Plane's normal. |
| flipped | Returns a copy of the plane that faces in the opposite direction. |
| normal | Normal vector of the plane. |

### Constructors

| Constructor | Description |
| --- | --- |
| Plane | Creates a plane. |

### Public Methods

| Method | Description |
| --- | --- |
| ClosestPointOnPlane | For a given point returns the closest point on the plane. |
| Flip | Makes the plane face in the opposite direction. |
| GetDistanceToPoint | Returns a signed distance from plane to point. |
| GetSide | Is a point on the positive side of the plane? |
| Raycast | Intersects a ray with the plane. |
| SameSide | Are two points on the same side of the plane? |
| Set3Points | Sets a plane using three points that lie within it. The points go around clockwise as you look down on the top surface of the plane. |
| SetNormalAndPosition | Sets a plane using a point that lies within it along with a normal to orient it. |
| Translate | Returns a copy of the given plane that is moved in space by the given translation. |
