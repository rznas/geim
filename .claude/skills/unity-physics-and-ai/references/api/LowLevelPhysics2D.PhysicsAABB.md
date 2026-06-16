<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/LowLevelPhysics2D.PhysicsAABB.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Represents a 2D axis-aligned bounding-box.

### Properties

| Property | Description |
| --- | --- |
| center | Get the center of the AABB. |
| extents | Get the extents (half size) of the AABB. |
| isValid | Check if the AABB is valid. To be valid, PhysicsAABB.upperBound should be equal to or above PhysicsAABB.lowerBound. |
| lowerBound | The lower-left bounding vertex. This should be equal to or lower than PhysicsAABB.upperBound. |
| normalized | Get a new normalized copy of the AABB ensuring that PhysicsAABB.lowerBound is lower than or equal to PhysicsAABB.upperBound. |
| perimeter | Get the surface area (perimeter length) of the AABB. |
| upperBound | The upper-right bounding vertex. This should be equal to or above PhysicsAABB.lowerBound. |

### Constructors

| Constructor | Description |
| --- | --- |
| PhysicsAABB | Create an axis-aligned bounding-box with the specified bounds. |

### Public Methods

| Method | Description |
| --- | --- |
| CastRay | Perform a raycast against this AABB. Nothing will be detected if the ray starts inside the AABB. To check if the ray starts inside the AABB use PhysicsAABB.OverlapPoint. |
| Contains | Checks if the AABB contains (completely encapsulates) the specified AABB. |
| Normalize | Normalize the AABB ensuring that PhysicsAABB.lowerBound is lower than or equal to PhysicsAABB.upperBound. |
| Overlap | Check if the specified AABB overlaps this AABB. |
| OverlapPoint | Check if the specified point overlaps this AABB. |
| Union | Create a union of the specified AABB and this AABB where resulting AABB completely encapsulates both AABB. |
