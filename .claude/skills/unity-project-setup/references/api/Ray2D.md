<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Ray2D.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

A ray in 2D space.

A *ray* is a line segment that extends from a point in space in a specified direction. Rays have a number of uses in Unity but the most common is probably *raycasting*. This technique involves tracing along the path of a ray from its origin to determine if it intersects with any objects. This is useful for plotting the paths of projectiles, determining lines of sight and implementing many common game mechanics.

Additional resources: Physics2D.Raycast, Ray class, RaycastHit2D class.

### Properties

| Property | Description |
| --- | --- |
| direction | The direction of the ray in world space. |
| origin | The starting point of the ray in world space. |

### Constructors

| Constructor | Description |
| --- | --- |
| Ray2D | Creates a 2D ray starting at origin along direction. |

### Public Methods

| Method | Description |
| --- | --- |
| GetPoint | Get a point that lies a given distance along a ray. |
| ToString | Returns a formatted string for this 2D ray. |
