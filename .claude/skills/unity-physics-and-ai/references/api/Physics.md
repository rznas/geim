<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Physics.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Global physics properties and helper methods.

### Static Properties

| Property | Description |
| --- | --- |
| AllLayers | Layer mask constant to select all layers. |
| bounceThreshold | Two colliding objects with a relative velocity below this will not bounce (default 2). Must be positive. |
| clothGravity | Cloth Gravity setting. Set gravity for all cloth components. |
| defaultContactOffset | The default contact offset of the newly created colliders. |
| defaultMaxAngularSpeed | Default maximum angular speed of the dynamic Rigidbody, in radians (default 50). |
| defaultMaxDepenetrationVelocity | The maximum default velocity needed to move a Rigidbody's collider out of another collider's surface penetration. Must be positive. |
| defaultPhysicsScene | The PhysicsScene automatically created when Unity starts. |
| DefaultRaycastLayers | Layer mask constant to select default raycast layers. |
| defaultSolverIterations | The defaultSolverIterations determines how accurately Rigidbody joints and collision contacts are resolved. (default 6). Must be positive. |
| defaultSolverVelocityIterations | The defaultSolverVelocityIterations affects how accurately the Rigidbody joints and collision contacts are resolved. (default 1). Must be positive. |
| gravity | The gravity applied to all rigid bodies in the Scene. |
| IgnoreRaycastLayer | Layer mask constant to select ignore raycast layer. |
| improvedPatchFriction | Enables an improved patch friction mode that guarantees static and dynamic friction do not exceed analytical results. |
| interCollisionDistance | Sets the minimum separation distance for cloth inter-collision. |
| interCollisionStiffness | Sets the cloth inter-collision stiffness. |
| invokeCollisionCallbacks | Whether or not MonoBehaviour collision messages will be sent by the physics system. |
| queriesHitBackfaces | Whether physics queries should hit back-face triangles. |
| queriesHitTriggers | Specifies whether queries (raycasts, spherecasts, overlap tests, etc.) hit Triggers by default. |
| reuseCollisionCallbacks | Determines whether the garbage collector should reuse only a single instance of a Collision type for all collision callbacks. |
| simulationMode | Controls when Unity executes the physics simulation. |
| sleepThreshold | The mass-normalized energy threshold, below which objects start going to sleep. |

### Static Methods

| Method | Description |
| --- | --- |
| BakeMesh | Prepares the mesh for use with a MeshCollider and uses default cooking options. |
| BoxCast | Casts the box along a ray and returns detailed information on what was hit. |
| BoxCastAll | Like Physics.BoxCast, but returns all hits. |
| BoxCastNonAlloc | Cast the box along the direction, and store hits in the provided buffer. |
| CapsuleCast | Casts a capsule against all colliders in the Scene and returns detailed information on what was hit. |
| CapsuleCastAll | Like Physics.CapsuleCast, but this function will return all hits the capsule sweep intersects. |
| CapsuleCastNonAlloc | Casts a capsule against all colliders in the Scene and returns detailed information on what was hit into the buffer. |
| CheckBox | Check whether the given box overlaps with other colliders or not. |
| CheckCapsule | Checks if any colliders overlap a capsule-shaped volume in world space. |
| CheckSphere | Returns true if there are any colliders overlapping the sphere defined by position and radius in world coordinates. |
| ClosestPoint | Returns a point on the given collider that is closest to the specified location. |
| ComputePenetration | Compute the minimal translation required to separate the given colliders apart at specified poses. |
| GetIgnoreCollision | Checks whether the collision detection system will ignore all collisions/triggers between collider1 and collider2 or not. |
| GetIgnoreLayerCollision | Are collisions between layer1 and layer2 being ignored? |
| IgnoreCollision | Makes the collision detection system ignore all collisions between collider1 and collider2. |
| IgnoreLayerCollision | Makes the collision detection system ignore all collisions between any collider in layer1 and any collider in layer2.Note that IgnoreLayerCollision will reset the trigger state of affected colliders, so you might receive OnTriggerExit and OnTriggerEnter messages in response to calling this. |
| Linecast | Returns true if there is any collider intersecting the line between start and end. |
| OverlapBox | Find all colliders touching or inside of the given box. |
| OverlapBoxNonAlloc | Find all colliders touching or inside of the given box, and store them into the buffer. |
| OverlapCapsule | Check the given capsule against the physics world and return all overlapping colliders. |
| OverlapCapsuleNonAlloc | Check the given capsule against the physics world and return all overlapping colliders in the user-provided buffer. |
| OverlapSphere | Computes and stores colliders touching or inside the sphere. |
| OverlapSphereNonAlloc | Computes and stores colliders touching or inside the sphere into the provided buffer. |
| Raycast | Casts a ray, from point origin, in direction direction, of length maxDistance, against all colliders in the Scene. |
| RaycastAll | Casts a ray through the Scene and returns all hits. Note that order of the results is undefined. |
| RaycastNonAlloc | Cast a ray through the Scene and store the hits into the buffer. |
| RebuildBroadphaseRegions | Rebuild the broadphase interest regions as well as set the world boundaries. |
| Simulate | Simulate physics in the Scene. |
| SphereCast | Casts a sphere along a ray and returns detailed information on what was hit. |
| SphereCastAll | Like Physics.SphereCast, but this function will return all hits the sphere sweep intersects. |
| SphereCastNonAlloc | Cast sphere along the direction and store the results into buffer. |
| SyncTransforms | Apply Transform changes to the physics engine. |

### Events

| Event | Description |
| --- | --- |
| ContactEvent | Subscribe to this event to read all collisions that occurred during the physics simulation step. |
| ContactModifyEvent | Subscribe to this event to be able to customize the collision response for contact pairs. |
| ContactModifyEventCCD | Subscribe to this event to be able to customize the collision response of CCD generated contact pairs. |

### Delegates

| Delegate | Description |
| --- | --- |
| ContactEventDelegate |  |
