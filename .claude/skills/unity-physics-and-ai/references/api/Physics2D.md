<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Physics2D.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Provides utilities and global settings to manage and simulate 2D physics interactions, such as collision detection and raycasting.

The Physics2D class provides tools and global settings for simulating 2D physics interactions, such as collision detection and raycasting. It is crucial for integrating realistic physics behaviors in 2D games, such as platformers and puzzle games.

To use Physics2D, set up your GameObjects with Collider2D-based, and Rigidbody2D components if required, and ensure proper configuration of layers and tags for collision detection and raycasting. Be mindful of potential performance impacts when using physics in complex scenes. Common issues may arise from incorrect setup of Collider2D-based or Rigidbody2D components, so understanding the order of physics updates and force application is important for troubleshooting.

### Static Properties

| Property | Description |
| --- | --- |
| AllLayers | Layer mask constant that includes all layers. |
| angularSleepTolerance | A Rigidbody cannot sleep if its angular velocity is above this tolerance threshold. |
| baumgarteScale | The scale factor that controls how fast overlaps are resolved. |
| baumgarteTOIScale | The scale factor that controls how fast TOI overlaps are resolved. |
| bounceThreshold | Any collisions with a relative linear velocity below this threshold will be treated as inelastic so no bounce will occur. |
| callbacksOnDisable | Use this to control whether or not the appropriate OnCollisionExit2D or OnTriggerExit2D callbacks should be called when a Collider2D is disabled. |
| contactThreshold | A threshold below which a contact is automatically disabled. |
| defaultContactOffset | The default contact offset of the newly created Colliders. |
| defaultPhysicsScene | The PhysicsScene2D automatically created when Unity starts. |
| DefaultRaycastLayers | Layer mask constant that includes all layers participating in raycasts by default. |
| gravity | Acceleration due to gravity. |
| IgnoreRaycastLayer | Layer mask constant for the default layer that ignores raycasts. |
| jobOptions | A set of options that control how physics operates when using the job system to multithread the physics simulation. |
| linearSleepTolerance | A rigid-body cannot sleep if its linear velocity is above this tolerance. |
| maxAngularCorrection | The maximum angular position correction used when solving constraints. This helps to prevent overshoot. |
| maxLinearCorrection | The maximum linear position correction used when solving constraints. This helps to prevent overshoot. |
| MaxPolygonShapeVertices | The maximum number of vertices allowed per primitive polygon shape type (PhysicsShapeType2D.Polygon). (Read Only) |
| maxRotationSpeed | The maximum angular speed of a rigid-body per physics update. Increasing this can cause numerical problems. |
| maxSubStepCount | The maximum number of simulation sub-steps allowed per-frame when simulation sub-stepping is enabled. |
| maxTranslationSpeed | The maximum linear speed of a rigid-body per physics update. Increasing this can cause numerical problems. |
| minSubStepFPS | The minimum FPS allowed for a simulation step before sub-stepping will be used. |
| positionIterations | The number of iterations of the physics solver when considering objects' positions. |
| queriesHitTriggers | Do raycasts detect Colliders configured as triggers? |
| queriesStartInColliders | Set the raycasts or linecasts that start inside Colliders to detect or not detect those Colliders. |
| reuseCollisionCallbacks | Determines whether the garbage collector should reuse only a single instance of a Collision2D type for all collision callbacks. |
| simulationLayers | The Rigidbody2D and Collider2D layers to simulate. |
| simulationMode | Controls when Unity executes the 2D physics simulation. |
| timeToSleep | The time in seconds that a rigid-body must be still before it will go to sleep. |
| useSubStepContacts | Whether to calculate contacts for all simulation sub-steps or only the first sub-step. |
| useSubStepping | Whether to use simulation sub-stepping during a simulation step. |
| velocityIterations | The number of iterations of the physics solver when considering objects' velocities. |

### Static Methods

| Method | Description |
| --- | --- |
| BoxCast | Casts a box against the Colliders in the Scene and returns all Colliders that are in contact with it. |
| BoxCastAll | Casts a box against Colliders in the Scene, returning all Colliders that contact with it. |
| CapsuleCast | Casts a capsule against the Colliders in the Scene and returns all Colliders that are in contact with it. |
| CapsuleCastAll | Casts a capsule against Colliders in the Scene, returning all Colliders that contact with it. |
| CircleCast | Casts a circle against Colliders in the Scene, returning all Colliders that contact with it. |
| CircleCastAll | Casts a circle against Colliders in the Scene, returning all Colliders that contact with it. |
| ClosestPoint | Returns a point on the perimeter of the Collider that is closest to the specified position. |
| Distance | Calculates the minimum distance between two Colliders. |
| GetContactColliders | Retrieves all colliders in contact with this Collider, with the results filtered by the contactFilter. |
| GetContacts | Retrieves all contact points in contact with the Collider, with the results filtered by the contactFilter2D. |
| GetIgnoreCollision | Checks whether the collision detection system will ignore all collisions/triggers between collider1 and collider2 or not. |
| GetIgnoreLayerCollision | Checks whether collisions between the specified layers be ignored or not. |
| GetLayerCollisionMask | Get the collision layer mask that indicates which layer(s) the specified layer can collide with. |
| GetRayIntersection | Cast a 3D ray against the 2D Colliders in the Scene. |
| GetRayIntersectionAll | Cast a 3D ray against the 2D Colliders in the Scene. |
| IgnoreCollision | Makes the collision detection system ignore all collisions/triggers between collider1 and collider2. |
| IgnoreLayerCollision | Choose whether to detect or ignore collisions between a specified pair of layers. |
| IsTouching | Checks whether the passed Colliders are in contact or not. |
| IsTouchingLayers | Checks whether the Collider is touching any Colliders on the specified layerMask or not. |
| Linecast | Casts a line segment against Colliders in the Scene with results filtered by ContactFilter2D. |
| LinecastAll | Casts a line against Colliders in the Scene. |
| OverlapArea | Finds Colliders that intersect a rectangular area. |
| OverlapAreaAll | Get a list of all Colliders that fall within a rectangular area. |
| OverlapBox | Checks a box against Colliders in the scene, returning all intersections. |
| OverlapBoxAll | Get a list of all Colliders that fall within a box area. |
| OverlapCapsule | Checks a capsule against Colliders in the scene, returning all intersections. |
| OverlapCapsuleAll | Get a list of all Colliders that fall within a capsule area. |
| OverlapCircle | Checks a circle against Colliders in the PhysicsScene2D, returning all intersections. |
| OverlapCircleAll | Get a list of all Colliders that fall within a circular area. |
| OverlapCollider | Gets a list of all Colliders that overlap the given Collider. |
| OverlapPoint | Checks a point against Colliders in the scene, returning all intersections. |
| OverlapPointAll | Get a list of all Colliders that overlap a point in space. |
| Raycast | Casts a ray against Colliders in the Scene. |
| RaycastAll | Casts a ray against Colliders in the Scene, returning all Colliders that contact with it. |
| SetLayerCollisionMask | Set the collision layer mask that indicates which layer(s) the specified layer can collide with. |
| Simulate | Simulate physics in the default physics scene. |
| SyncTransforms | Synchronizes. |
