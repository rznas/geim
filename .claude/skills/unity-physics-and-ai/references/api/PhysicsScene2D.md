<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/PhysicsScene2D.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Represents a single instance of a 2D physics Scene.

A 2D physics Scene owns all 2D physics component objects added to it and can perform a simulation of them as well as execute queries against them. All of this functionality is isolated from any other physics Scene. Using this, multiple independent physics Scenes can coexist.

### Properties

| Property | Description |
| --- | --- |
| subStepCount | The number of simulation sub-steps that occurred during the last simulation step. |
| subStepLostTime | The amount of simulation time that has been "lost" due to simulation sub-stepping hitting the maximum number of allowed sub-steps. |

### Public Methods

| Method | Description |
| --- | --- |
| BoxCast | Casts a box against the Colliders in the PhysicsScene2D, returning all intersections. |
| CapsuleCast | Casts a capsule against the Colliders in the PhysicsScene2D, returning all intersections. |
| CircleCast | Casts a circle against the Colliders in the PhysicsScene2D, returning all intersections. |
| GetRayIntersection | Cast a 3D ray against the 2D Colliders in the Scene. |
| IsEmpty | Determines whether the physics Scene is empty or not. |
| IsValid | Determines whether the physics Scene is valid or not. |
| Linecast | Casts a line segment against Colliders in the PhysicsScene2D. |
| OverlapArea | Checks an area (non-rotated box) against Colliders in the PhysicsScene2D, returning all intersections. |
| OverlapBox | Checks a box against Colliders in the PhysicsScene2D, returning all intersections. |
| OverlapCapsule | Checks a capsule against Colliders in the PhysicsScene2D, returning all intersections. |
| OverlapCircle | Checks a circle against Colliders in the PhysicsScene2D, returning all intersections. |
| OverlapPoint | Checks a point against Colliders in the PhysicsScene2D, returning all intersections. |
| Raycast | Casts a ray against Colliders the PhysicsScene2D, returning all intersections. |
| Simulate | Simulate physics associated with this PhysicsScene. |

### Static Methods

| Method | Description |
| --- | --- |
| OverlapCollider | Checks a Collider against Colliders in the PhysicsScene2D, returning all intersections. |
