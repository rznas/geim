<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/UnityEngine.Physics2DModule.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

The Physics2d module implements 2D physics in Unity.

### Classes

| Class | Description |
| --- | --- |
| AnchoredJoint2D | Parent class for all joints that have anchor points. |
| AreaEffector2D | Applies forces within an area. |
| BoxCollider2D | Collider for 2D physics representing an axis-aligned rectangle. |
| BuoyancyEffector2D | Applies forces to simulate buoyancy, fluid-flow and fluid damping. |
| CapsuleCollider2D | A capsule-shaped primitive collider. |
| CircleCollider2D | Collider for 2D physics representing an circle. |
| Collider2D | The parent class for collider types used with 2D gameplay. Provides methods to defines the shape and physical behavior for 2D object interactions, used to detect collisions, and trigger events in 2D game environments. |
| Collision2D | Collision details returned by 2D physics callback functions. |
| CompositeCollider2D | A Collider that can merge other Colliders together. |
| ConstantForce2D | Applies both linear and angular (torque) forces continuously to the rigidbody each physics update. |
| CustomCollider2D | Represents a Collider2D that is configured by assigning PhysicsShape2D geometry to it via a PhysicsShapeGroup2D. |
| DistanceJoint2D | Joint that keeps two Rigidbody2D objects a fixed distance apart. |
| EdgeCollider2D | Collider for 2D physics representing an arbitrary set of connected edges (lines) defined by its vertices. |
| Effector2D | A base class for all 2D effectors. |
| FixedJoint2D | Connects two Rigidbody2D together at their anchor points using a configurable spring. |
| FrictionJoint2D | Applies both force and torque to reduce both the linear and angular velocities to zero. |
| HingeJoint2D | Joint that allows a Rigidbody2D object to rotate around a point in space or a point on another object. |
| Joint2D | Parent class for joints to connect Rigidbody2D objects. |
| Physics2D | Provides utilities and global settings to manage and simulate 2D physics interactions, such as collision detection and raycasting. |
| PhysicsLowLevelSettings2D | Physics LowLevel Settings Asset. This contains all the global physics options along with the default values for the following definitions: PhysicsWorldDefinitionPhysicsBodyDefinitionPhysicsShapeDefinitionPhysicsChainDefinition |
| PhysicsMaterial2D | Asset type that defines the surface properties of a Collider2D. |
| PhysicsSceneExtensions2D | Scene extensions to access the underlying physics scene. |
| PhysicsShapeGroup2D | Represents a group of PhysicsShape2D and their geometry. |
| PhysicsUpdateBehaviour2D | A base type for 2D physics components that required a callback during FixedUpdate. |
| PlatformEffector2D | Applies "platform" behaviour such as one-way collisions etc. |
| PointEffector2D | Applies forces to attract/repulse against a point. |
| PolygonCollider2D | Collider for 2D physics representing an arbitrary polygon defined by its vertices. |
| RelativeJoint2D | Keeps two Rigidbody2D at their relative orientations. |
| Rigidbody2D | Provides physics movement and other dynamics, and the ability to attach Collider2D to it. |
| SliderJoint2D | Joint that restricts the motion of a Rigidbody2D object to a single line. |
| SpringJoint2D | Joint that attempts to keep two Rigidbody2D objects a set distance apart by applying a force between them. |
| SurfaceEffector2D | Applies tangent forces along the surfaces of colliders. |
| TargetJoint2D | The joint attempts to move a Rigidbody2D to a specific target position. |
| WheelJoint2D | The wheel joint allows the simulation of wheels by providing a constraining suspension motion with an optional motor. |

### Structs

| Struct | Description |
| --- | --- |
| CapsuleGeometry | The geometry of a closed capsule which can be viewed as two semi-circles connected by a rectangle. See PhysicsBody.CreateShape. |
| ChainGeometry | The geometry of a chain of ChainSegment. |
| ChainSegmentGeometry | The geometry of a chain line segment with one-sided collision which only collides on the "right" side. Several of these are generated for a chain, connected as ghost1 -> point1 -> point2 -> ghost2. |
| CircleGeometry | The geometry of a closed circle. See PhysicsBody.CreateShape. |
| ColliderArray2D | A collection of Collider2D. |
| ColliderDistance2D | Represents the separation or overlap of two Collider2D. |
| ContactFilter2D | A set of parameters for filtering contact results. Define the angle by referring to their position in world space, where 0 degrees is parallel to the positive x-axis, 90 degrees is parallel to the positive y-axis, 180 degrees is parallel to the negative x-axis, and 270 degrees is parallel to the negative y-axis. |
| ContactPoint2D | Details about a specific point of contact involved in a 2D physics collision. |
| JointAngleLimits2D | Angular limits on the rotation of a Rigidbody2D object around a HingeJoint2D. |
| JointMotor2D | Parameters for the optional motor force applied to a Joint2D. |
| JointSuspension2D | Joint suspension is used to define how suspension works on a WheelJoint2D. |
| JointTranslationLimits2D | Motion limits of a Rigidbody2D object along a SliderJoint2D. |
| PhysicsAABB | Represents a 2D axis-aligned bounding-box. |
| PhysicsBody | A body is contained within a world and has 3 degrees-of-freedom, two for position and one for rotation. A body can have forces, torques and impulses applied to it. A body has three distinct types: Static: This type of body does not move under simulation and behaves as if it has infinite mass, essentially an immovable object. Static bodies never interact with other Static or Kinematic bodies.Dynamic: This type of body is fully simulated and moves according to forces and torques applied to its linear/angular velocities. It can interact with all other body types. It always has finite, non-zero mass.Kinematic: This type of body moves under simulation and moves according to its linear/angular velocities and never uses forces or torques. It only interacts with Dynamic body types. It behaves as if it has infinite mass. A body is automatically destroyed when the world it is in is destroyed. A body cannot exist outside a world. |
| PhysicsBodyDefinition | A PhysicsBody definition used to specify important initial properties. |
| PhysicsCallbacks | Callback targets for object events. |
| PhysicsChain | A dedicated shape that produces a chain of shapes connected together to produce a continuous surface. Chain shapes provide a smooth, continuous surface that will not produce "ghost" collisions. A PhysicsChain is automatically destroyed when the body it is in is destroyed. A PhysicsChain cannot exist unattached from a body. This will produce shapes of type PhysicsShape.ShapeType.ChainSegment. Chains are one-sided.A chain has no mass therefore should ideally be used on static bodies.A chain can have a counter-clockwise winding order (normal points right of segment direction).A chain is either a loop or open.A chain must have at least 4 points.The distance between any two points must be greater than PhysicsWorld.linearSlop.A chain should not self intersect (this is not validated).An open chain has no collision on the first and final edge.You may overlap two open chains on their first three and/or last three points to get smooth collision. |
| PhysicsChainDefinition | A PhysicsChain definition used to specify the chain of vertices that will produce multiple ChainSegmentGeometry shape types. Additionally, non-geometric properties can be specified here. |
| PhysicsComposer | Provides the ability to compose geometry using specific operations on layers in a specific order. |
| PhysicsConstants | Constants used throughout the 2D physics system. |
| PhysicsDestructor | Provides the ability to destruct (fragment and Slice) geometry. |
| PhysicsDistanceJoint | Connects an anchor point on body A with an anchor point on body B via a line segment of a specified distance. |
| PhysicsDistanceJointDefinition | A joint definition used to specify properties when creating a PhysicsDistanceJoint. |
| PhysicsEvents | Various events that can be retrieved during and after the simulation has completed. See PhysicsWorld.Simulate and PhysicsWorld.Simulate. |
| PhysicsFixedJoint | A joint to constrain a pair of bodies together rigidly. This constraint provides springs to mimic soft-body simulation. The approximate solver cannot always hold many bodies together completely rigidly. |
| PhysicsFixedJointDefinition | A joint definition used to specify properties when creating a PhysicsFixedJoint. |
| PhysicsHingeJoint | A joint where an anchor point on body B is fixed to an anchor point on body A. This joint allows relative rotation. |
| PhysicsHingeJointDefinition | A joint definition used to specify properties when creating a PhysicsHingeJoint. |
| PhysicsIgnoreJoint | A joint used to ignore collision between two specific bodies. As a side effect of being a joint, it also keeps the two bodies in the same simulation island meaning they'll wake/sleep at the same time and be solved together on the same thread. |
| PhysicsIgnoreJointDefinition | A joint definition used to specify properties when creating a PhysicsIgnoreJoint. |
| PhysicsJobOptions2D | A set of options that control how physics operates when using the job system to multithread the physics simulation. |
| PhysicsJoint | A joint is used to constrain bodies to the world or to each other in various ways. A joint is automatically destroyed when either body it is attached to is destroyed. A joint cannot exist unattached from a body. |
| PhysicsLayers | This provides a common method to retrieving layer information. If a PhysicsLowLevelSettings2D asset is assigned then the full layers (PhysicsLowLevelSettings2D.physicsLayerNames) will be used if PhysicsLowLevelSettings2D.useFullLayers is also active. If no PhysicsLowLevelSettings2D asset is assigned then the global layers (See UnityEngine.LayerMask) will be used. |
| PhysicsMask | A 64-bit mask, effectively 64 flags. The default enumerator will iterate all the bits that are set (1). |
| PhysicsMath | A set of mathematical operations that are useful for physics. These operations do not form a fully comprehensive mathematics library, they simply provide operations that are usually required when interacting with physics. |
| PhysicsPlane | Represents a 2D plane. |
| PhysicsQuery | Various physics queries. |
| PhysicsRelativeJoint | A joint constraint used to control the relative movement two bodies while still being responsive to collisions. A spring controls the position and rotation and velocity control allows for simulated friction such as seen in top-down games. A typical usage is to control the movement of a dynamic body with respect to the ground. |
| PhysicsRelativeJointDefinition | A joint definition used to specify properties when creating a PhysicsRelativeJoint. |
| PhysicsRotate | Represents a 2D rotation. |
| PhysicsScene2D | Represents a single instance of a 2D physics Scene. |
| PhysicsShape | A shape is attached to a body and defines an area to which two distinct types of behaviour are handled: Collision: Contacts between shapes produce a collision response on their respective bodies, assuming their body type is Dynamic.Trigger: Contacts between shapes do not produce a collision response, only the fact that they're overlapping is reported. An unlimited number of shapes can be attached to a single body, known as a compound body. A shape is automatically destroyed when the body it is attached to is destroyed. A shape cannot exist unattached from a body. |
| PhysicsShape2D | Represents an efficient low-level physics shape used by the physics engine. |
| PhysicsShapeDefinition | A PhysicsShape definition used to specify important initial properties. |
| PhysicsSliderJoint | A joint that requires defining a line of motion defined by the local anchor A. Body B may slide along the axis defined by the local anchor A. Body B cannot rotate relative to body A. The joint translation is zero when the local anchor origins coincide in world space. The joint uses local anchors so that the initial configuration can violate the constraint slightly. |
| PhysicsSliderJointDefinition | A joint definition used to specify properties when creating a PhysicsSliderJoint. |
| PhysicsTransform | Represents a 2D transformation combining a translation and a PhysicsRotate. |
| PhysicsUserData | Custom user data. The physics system doesn't use this data, it is entirely for custom use. |
| PhysicsWheelJoint | A joint that requires defining a line of motion using an axis and an anchor point. The joint translation is zero when the local anchors coincide in world space. The joint uses local anchors so that the initial configuration can violate the constraint slightly. |
| PhysicsWheelJointDefinition | A joint definition used to specify properties when creating a PhysicsWheelJoint. |
| PhysicsWorld | A world is a container for all other physics objects such as PhysicsBody, PhysicsShape, PhysicsJoint etc. A world can be simulated in isolation from all other worlds. The maximum number of worlds that can be created at one time is defined by PhysicsConstants.MaxWorlds. A world is completely isolated from all other worlds. |
| PhysicsWorldDefinition | A PhysicsWorld definition used to specify important initial properties. |
| PolygonGeometry | The geometry of a closed convex polygon. The geometry has a fixed maximum number of vertices as defined by the constant PhysicsConstants.MaxPolygonVertices. Polygon regions that require a larger quantity of vertices or are concave are defined by multiple polygon geometry using the PhysicsComposer or the PolygonGeometry.CreatePolygons utility. See PhysicsBody.CreateShape. |
| RaycastHit2D | Returns information about 2D Colliders detected by a 2D physics query in the scene. |
| SegmentGeometry | The geometry of a line segment. See PhysicsBody.CreateShape. |

### Enumerations

| Enumeration | Description |
| --- | --- |
| CapsuleDirection2D | The direction that the capsule sides can extend. |
| ColliderErrorState2D | Indicates what (if any) error was encountered when creating a 2D Collider. |
| CollisionDetectionMode2D | Controls how collisions are detected when a Rigidbody2D moves. |
| EffectorForceMode2D | The mode used to apply Effector2D forces. |
| EffectorSelection2D | Selects the source and/or target to be used by an Effector2D. |
| ForceMode2D | Option for how to apply a force using Rigidbody2D.AddForce. |
| JointBreakAction2D | Options for selecting which action to take when a Joint2D breaks. |
| JointLimitState2D | Represents the state of a joint limit. |
| PhysicsMaterialCombine2D | Describes how PhysicsMaterial2D friction and bounciness are combined when two Collider2D come into contact. |
| PhysicsShapeType2D | Options for indicate which primitive shape type is used to interpret geometry contained within a PhysicsShape2D object. |
| RigidbodyConstraints2D | Use these flags to constrain motion of a Rigidbody2D. |
| RigidbodyInterpolation2D | Interpolation mode for Rigidbody2D objects. |
| RigidbodySleepMode2D | Settings for a Rigidbody2D's initial sleep state. |
| RigidbodyType2D | The physical behaviour type of the Rigidbody2D. |
| SimulationMode2D | A selection of modes that control when Unity executes the 2D physics simulation. |
