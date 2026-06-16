<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/LowLevelPhysics2D.PhysicsBodyDefinition.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

A PhysicsBody definition used to specify important initial properties.

### Static Properties

| Property | Description |
| --- | --- |
| defaultDefinition | Get a default PhysicsBody definition. |

### Properties

| Property | Description |
| --- | --- |
| angularDamping | Angular damping is used to reduce the angular velocity over time i.e. slow down rotating bodies. The damping parameter can be larger than 1.0f but the damping effect becomes sensitive to the time step when the damping parameter is large. |
| angularVelocity | The initial angular velocity of the body, in degrees per second. |
| awake | Is this body initially awake or sleeping? |
| collisionThreshold | A threshold used to control when continuous collision detection is used when a body moves. The value is used to compare the body linear velocity movement against the extents of all the shapes added to the body scaled by this threshold. If the movement exceeds the extents scaled by the threshold then continuous collision detection is used to stop tunneling. Lower values reduce the distance the body must move before continuous collision detection is used and can have a considerable impact on performance! Higher values increase the distance the body must move before continuous collision detection is used. Too low a threshold will result in continuous collision detection being used more often therefore affecting performance so this should be limited to specific bodies only. The default threshold is 0.5 which equates to half the total shape extents. The threshold is clamped to a range of 0.0 to 1.0 with 0.0 meaning continuous collision detection will always be used. |
| constraints | The degrees of freedom constraints (locks) for the body of Linear X, Linear Y and Rotation Z. |
| enabled | Used to disable a body. A disabled body does not move or collide. |
| fastCollisionsAllowed | Treat this body as high speed object that performs continuous collision detection against dynamic and kinematic bodies, but not other high speed bodies. Fast collision bodies should be used sparingly. They are not a solution for general dynamic-versus-dynamic continuous collision. |
| fastRotationAllowed | This allows this body to bypass rotational speed limits. This should only be used for circular objects, such as wheels, balls etc. |
| gravityScale | Scale the gravity applied to this body, non-dimensional. |
| linearDamping | Linear damping is use to reduce the linear velocity i.e. slow down translating bodies. The damping parameter can be larger than 1 but the damping effect becomes sensitive to the time step when the damping parameter is large. Generally linear damping is undesirable because it makes objects move slowly as if they are floating. |
| linearVelocity | The initial linear velocity of the body's origin, in meters/sec. |
| position | The initial position of the body, in world-space. Bodies should be created with the desired position as creating bodies at the origin and then moving them nearly doubles the cost of body creation, especially if the body is moved after shapes have been added. |
| rotation | The initial rotation of the body, in world-space. Bodies should be created with the desired rotation as creating bodies at the origin and then rotating them nearly doubles the cost of body creation, especially if the body is moved after shapes have been added. |
| sleepingAllowed | Set this flag to false if this body should never fall asleep. |
| sleepThreshold | A speed threshold below which the body is allowed to sleep, in meters/sec. |
| transformWriteMode | The method used to Write the body pose to the Transform. |
| type | A body is one of these three body types, Dynamic, Kinematic or Static, each of which determines how the body behaves in the simulation. |

### Constructors

| Constructor | Description |
| --- | --- |
| PhysicsBodyDefinition | Create a default PhysicsBody definition. |
