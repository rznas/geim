<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/LowLevelPhysics2D.PhysicsWorldDefinition.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

A PhysicsWorld definition used to specify important initial properties.

### Static Properties

| Property | Description |
| --- | --- |
| defaultDefinition | Get a default PhysicsWorld definition. |

### Properties

| Property | Description |
| --- | --- |
| autoBodyUpdateCallbacks | Controls if body update callback targets are automatically called. See PhysicsWorld.SendBodyUpdateCallbacks. |
| autoContactCallbacks | Controls if shape contact callback targets are automatically called. See PhysicsWorld.SendContactCallbacks. |
| autoJointThresholdCallbacks | Controls if joint threshold callback targets are automatically called. See PhysicsWorld.SendJointThresholdCallbacks. |
| autoTriggerCallbacks | Controls if shape trigger callback targets are automatically called. See PhysicsWorld.SendTriggerCallbacks. |
| bounceThreshold | Adjust the bounce threshold, usually in meters per second. It is recommended not to make this value very small because it will prevent bodies from sleeping. See PhysicsWorld.bounceThreshold. |
| contactDamping | The contact bounciness with 1 being critical damping (non-dimensional). See PhysicsWorld.contactDamping. |
| contactFilterCallbacks | Controls if contact filter callbacks will be called. A contact filter callback allows direct control over whether a contact will be created between a pair of shapes. This applies to both triggers and non-triggers but only with Dynamic bodies. These are relatively expensive so disabling them can provide a significant performance benefit. A contact filter callback will call the PhysicsShape.callbackTarget for both shapes involved if they implement IContactFilterCallback. |
| contactFrequency | The contact stiffness, in cycles per second. See PhysicsWorld.contactFrequency. |
| contactHitEventThreshold | The contact hit event threshold controls the collision speed needed to generate a contact hit event, usually in meters per second. See ContactHitEvent. See PhysicsWorld.contactHitEventThreshold. |
| contactRecycleDistance | The contact recycle distance, in meters. Setting this to zero disables contact point recycling. Contact recycling reuses contact points across simulation time-steps when the relative movement is small. This feature improves stability and performance by around 25% (approximately). Contact points are not recalculated until shapes move more than 5cm (default) relative to each other. Contact recycling skips some updates such as friction, pre-solve (etc) until the contacts are no longer recycled. See PhysicsWorld.contactRecycleDistance. |
| contactSpeed | The contact speed used to solve overlaps, in meters per second. See PhysicsWorld.contactSpeed. |
| continuousAllowed | Controls if continuous collision detection will be used between Dynamic and Static bodies. Generally you should keep continuous collision enabled to prevent fast moving objects from going through Static objects. The performance gain from disabling continuous collision is minor. See PhysicsWorld.continuousAllowed |
| drawCapacity | Controls the draw capacity. The draw capacity of the buffers when drawing are initially zero however increasing this value will mean buffers won't be resized when more elements are drawn and therefore no GC allocations will occur. Changes won't take effect until exiting play mode. This value directly controls the capacity for each element type drawn. This is only used in the Unity Editor or in a Development Player. See PhysicsWorld.drawCapacity. |
| drawColors | Controls what colors are used to draw PhysicsBody, PhysicsShape, PhysicsJoint etc. This is only used in the Unity Editor or in a Development Player. See DrawColors. |
| drawContactType | Controls how contact points are drawn. See DrawContactType. |
| drawFillAlpha | Controls the draw fill alpha. This is used to scale the interior fill alpha and is only used when PhysicsWorld.DrawFillOptions.Outline is used so that the interior color can be distinguished from the outline color by transparency. This is only used in the Unity Editor or in a Development Player. See PhysicsWorld.drawFillAlpha. |
| drawFillOptions | Controls what aspects of is drawn using LowLevelPhysics2D.PhysicsWorld.Draw. This is only used in the Unity Editor or in a Development Player. See DrawFillOptions. |
| drawImpulseScale | Controls the joint contact impulse scale used when drawing contact impulses. This is only used in the Unity Editor or in a Development Player. See PhysicsWorld.drawImpulseScale. |
| drawNormalScale | Controls the joint contact normal scale used when drawing contact normals. This is only used in the Unity Editor or in a Development Player. See PhysicsWorld.drawNormalScale. |
| drawOptions | Draw Options used to control what is drawn using LowLevelPhysics2D.PhysicsWorld.Draw. This is only used in the Unity Editor or in a Development Player. See DrawOptions. |
| drawPointScale | Controls the draw point scale used when drawing points. This is only used in the Unity Editor or in a Development Player. See PhysicsWorld.drawPointScale. |
| drawThickness | Controls the draw thickness (outline and orientation). This is only used in the Unity Editor or in a Development Player. See PhysicsWorld.drawThickness. |
| gravity | Get/Set the gravity vector applied to all bodies in the world, usually in m/s^2. See PhysicsWorld.gravity. |
| maximumLinearSpeed | Get/Set the maximum linear speed. See PhysicsWorld.maximumLinearSpeed. |
| preSolveCallbacks | Controls if pre-solve callbacks will be called. This only applies to Dynamic bodies and is ignored for triggers. These are relatively expensive so disabling them can provide a significant performance benefit. A pre-solve callback will call the PhysicsShape.callbackTarget for both shapes involved if they implement IPreSolveCallback. |
| simulateType | Get/Set the simulation mode which controls when or if the simulation will be automatically simulated. See SimulationType and PhysicsWorld.Simulate. |
| simulationSubSteps | Get/Set the simulation sub-steps to use during simulation. See PhysicsWorld.Simulate. See PhysicsWorld.simulationSubSteps. |
| simulationWorkers | Get/Set the simulation worker count for the world. A single simulation worker is always used for simulation therefore a worker count of one means single thread simulation only. The actual quantity of workers used will always be capped to those available on the current device and reading the property will return the number of workers actually being used by the device. Changing the worker count continuously is not recommend and will impact performance as it requires the task queue be recreated. See PhysicsWorld.simulationWorkers. |
| sleepingAllowed | Controls if bodies go to sleep when not moving and not interacting. Sleeping can provide a significant performance improvement when many Dynamic or Kinematic bodies are in the world. See PhysicsWorld.sleepingAllowed |
| transformPlane | Controls the transform plane that the world uses when writing transforms. See PhysicsWorld.transformWriteMode. See PhysicsWorld.transformPlane. |
| transformTweening | Controls if Transform tweening is used. Transform tweening is where bodies that have their PhysicsBody.transformObject set, write to the UnityEngine.Transform each frame depending on the specific body TransformWriteMode set. Regardless of this setting, Transform tweening is never used if the PhysicsWorld.simulationType set to PhysicsWorld.SimulationType.Update or PhysicsWorld.transformWriteMode is PhysicsWorld.TransformWriteMode.Off. See PhysicsWorld.transformTweening. |
| transformWriteMode | Controls how transform writing is handled. Only bodies that have their PhysicsBody.transformWriteMode active and produce a BodyUpdateEvent will write to a transform. See TransformWriteMode. |

### Constructors

| Constructor | Description |
| --- | --- |
| PhysicsWorldDefinition | Create a default PhysicsWorld definition. |
