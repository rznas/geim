<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/LowLevelPhysics2D.PhysicsChain.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

A dedicated shape that produces a chain of shapes connected together to produce a continuous surface. Chain shapes provide a smooth, continuous surface that will not produce "ghost" collisions. A PhysicsChain is automatically destroyed when the body it is in is destroyed. A PhysicsChain cannot exist unattached from a body. This will produce shapes of type PhysicsShape.ShapeType.ChainSegment. Chains are one-sided.A chain has no mass therefore should ideally be used on static bodies.A chain can have a counter-clockwise winding order (normal points right of segment direction).A chain is either a loop or open.A chain must have at least 4 points.The distance between any two points must be greater than PhysicsWorld.linearSlop.A chain should not self intersect (this is not validated).An open chain has no collision on the first and final edge.You may overlap two open chains on their first three and/or last three points to get smooth collision.

### Properties

| Property | Description |
| --- | --- |
| aabb | Get the world AABB that bounds this chain. The bounds of the shape is inflated slightly due to speculative collision detection. The inflation is smaller on Static shape types however it is not zero due to time-of-impact collision detection. If an exact AABB is required then you can retrieve that via the shape geometry. |
| body | The body which the chain is attached to. |
| bounciness | The bounciness of the chain. Usually this is within the range [0, 1]. Values higher than 1 will result in energy being added which can lead to an unstable simulation. |
| bouncinessMixing | Defines the method used when mixing the bounciness values of two shapes to form a shape contact. This is assigned to the current PhysicsShape.surfaceMaterial. |
| callbackTarget | Get/Set the System.Object that callbacks for the shapes owned by this chain will be sent to. Care should be taken with any System.Object assigned as a callback target that isn't a UnityEngine.Object as this assignment will not in itself keep the object alive and can be garbage collected. To avoid this, you should have at least a single reference to the object in your code. This includes the following events: A ContactFilterEvent with call IContactFilterCallback.A PreSolveEvent with call IPreSolveCallback.A TriggerBeginEvent with call ITriggerCallback.A TriggerEndEvent with call ITriggerCallback.A ContactBeginEvent with call IContactCallback.A ContactEndEvent with call IContactCallback. |
| friction | The friction of the owned chain shapes. Usually this is within the range [0, 1]. Values higher than 1 will result in energy being added which can lead to an unstable simulation. |
| frictionMixing | Defines the method used when mixing the friction values of two shapes to form a shape contact. This is assigned to the current PhysicsShape.surfaceMaterial. |
| isOwned | Get if the chain is owned. See PhysicsChain.SetOwner. |
| isValid | Check if the shape is valid. |
| ownerUserData | Get PhysicsUserData that can be used for any purpose, typically by the owner only. |
| segmentCount | Get the number of Chain segments that this chain has created and owns. See PhysicsShape.ShapeType.ChainSegment. |
| userData | Get/Set PhysicsUserData that can be used for any purpose. The physics system doesn't use this data, it is entirely for custom use. |
| world | Get the world the chain is attached to. |

### Public Methods

| Method | Description |
| --- | --- |
| CastRay | Check if a ray intersects the chain. See CastResult. |
| CastShape | Calculate if a cast shape intersects the chain. See CastShapeInput and CastResult. |
| ClosestPoint | Calculate the closest point on this chain to the specified point. |
| Destroy | Destroy the PhysicsChain and all the PhysicsShape.ShapeType.ChainSegment it owns. If the object is owned with PhysicsChain.SetOwner then you must provide the owner key it returned. Failing to do so will return a warning and the chain will not be destroyed. The lifetime of the specified owner object is not linked to this chain i.e. this chain will still be owned by the owner object, even if it is destroyed. This is the only way to destroy shapes of type PhysicsShape.ShapeType.ChainSegment if they were created by a PhysicsChain. |
| GetOwner | Get the owner object associated with this chain as specified using PhysicsChain.SetOwner. |
| GetSegmentIndex | Get the index of the specified Chain Segment PhysicsShape. |
| GetSegments | Get all the Chain segments that this chain has created and owns. |
| SetOwner | Set the (optional) owner object associated with this chain and return an owner key that must be specified when destroying the shape with PhysicsChain.Destroy. The physics system provides access to all objects, including the ability to destroy them so this feature can be used to stop accidental destruction of objects that are owned by other objects. You can only set the owner once, multiple attempts will produce a warning. It is also valid to not specify an owner object (NULL) to simply gain an owner key however it can be useful, if simply for debugging purposes and discovery, to know which object is the owner. |
| SetOwnerUserData | Set PhysicsUserData that can be used for any purpose, typically by the owner only. |

### Static Methods

| Method | Description |
| --- | --- |
| Create | Create a Chain of multiple shapes attached to the specified body which itself is within a world. |
