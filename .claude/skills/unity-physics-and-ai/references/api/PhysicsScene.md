<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/PhysicsScene.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Represents a single instance of a 3D physics Scene.

### Public Methods

| Method | Description |
| --- | --- |
| BoxCast | Casts the box along a ray and returns detailed information on what was hit. |
| CapsuleCast | Casts a capsule against all colliders in this physics scene and returns detailed information on what was hit. |
| InterpolateBodies | Interpolates Rigidbodies in this PhysicsScene. |
| IsEmpty | Gets whether the physics Scene is empty or not. |
| IsValid | Gets whether the physics Scene is valid or not. |
| OverlapBox | Find all colliders touching or inside of the given box, and store them into the buffer. |
| OverlapCapsule | Check the given capsule against the physics world and return all overlapping colliders in the user-provided buffer. |
| OverlapSphere | Computes and stores colliders touching or inside the sphere into the provided buffer. |
| Raycast | Casts a ray, from point origin, in direction direction, of length maxDistance, against all colliders in the Scene. |
| ReleaseLastSimulationStepBuffers | Clear and deallocate the simulation results. |
| ResetInterpolationPoses | Resets the Transform positions of interpolated and extrapolated Rigidbodies in this PhysicsScene to Rigidbody.position and Transform rotations to Rigidbody.rotation. |
| RunSimulationStages | Runs specified physics simulation stages on this physics scene. |
| Simulate | Simulate physics associated with this PhysicsScene. |
| SphereCast | Casts a sphere along a ray and returns detailed information on what was hit. |
