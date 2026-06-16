<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/LowLevelPhysics2D.PhysicsShape.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

A shape is attached to a body and defines an area to which two distinct types of behaviour are handled: Collision: Contacts between shapes produce a collision response on their respective bodies, assuming their body type is Dynamic.Trigger: Contacts between shapes do not produce a collision response, only the fact that they're overlapping is reported. An unlimited number of shapes can be attached to a single body, known as a compound body. A shape is automatically destroyed when the body it is attached to is destroyed. A shape cannot exist unattached from a body.

### Properties

| Property | Description |
| --- | --- |
| aabb | Get the world AABB that bounds this shape. The bounds of the shape is inflated slightly due to speculative collision detection. The inflation is smaller on Static shape types however it is not zero due to time-of-impact collision detection. If an exact AABB is required then you can retrieve that via the shape geometry. See CircleGeometry.CalculateAABB, CapsuleGeometry.CalculateAABB, PolygonGeometry.CalculateAABB and SegmentGeometry.CalculateAABB. |
| body | The body which the shape is attached to. |
| bounciness | The bounciness (coefficient of restitution) usually in the range [0, 1]. Values higher than 1 will result in energy being added which can lead to an unstable simulation. This is assigned to the current PhysicsShape.surfaceMaterial. |
| bouncinessMixing | Defines the method used when mixing the friction values of two shapes to form a contact. This is assigned to the current PhysicsShape.surfaceMaterial. |
| bouncinessPriority | The priority for combining the PhysicsShape.bounciness properties when two shapes come into contact. If the priority of one shape is higher than the other shape then the higher priority PhysicsShape.SurfaceMaterial.bouncinessMixing will be used. If the priority of both shapes are the same then simply the higher enumeration value of UnityEngine.PhysicsMaterialCombine2D from both shapes will be used. This is assigned to the current PhysicsShape.surfaceMaterial. |
| callbackTarget | Get/Set the System.Object that callbacks for this shape will be sent to. Care should be taken with any System.Object assigned as a callback target that isn't a UnityEngine.Object as this assignment will not in itself keep the object alive and can be garbage collected. To avoid this, you should have at least a single reference to the object in your code. This includes the following events: A ContactFilterEvent with call IContactFilterCallback.A PreSolveEvent with call IPreSolveCallback.A TriggerBeginEvent with call ITriggerCallback.A TriggerEndEvent with call ITriggerCallback.A ContactBeginEvent with call IContactCallback.A ContactEndEvent with call IContactCallback. |
| capsuleGeometry | Get/Set the Capsule associated with this shape. When getting the shape geometry, the shape type must match the geometry type otherwise an warning will be produced and an invalid geometry will be returned. Setting the geometry will change the type of shape represented even if the shape type was different before. Setting the geometry will also result in waking the body the shape is attached to. |
| chain | Get the owning chain. The type of shape must be PhysicsShape.ShapeType.ChainSegment otherwise a warning will be produced. See PhysicsShape.isChainSegment and PhysicsChain. |
| chainSegmentGeometry | Get the Chain Segment Geometry associated with this shape. When getting the shape geometry, the shape type must match the geometry type otherwise an warning will be produced and an invalid geometry will be returned. |
| circleGeometry | Get/Set the Circle associated with this shape. When getting the shape geometry, the shape type must match the geometry type otherwise an warning will be produced and an invalid geometry will be returned. Setting the geometry will change the type of shape represented even if the shape type was different before. Setting the geometry will result in waking the body the shape is attached to. |
| contactEvents | Controls whether this shape produces contact events which can be retrieved after the simulation has completed. Any contact events can be used to call the assigned PhysicsShape.callbackTarget. A contact event is produced if either shapes involved have their contactEvents enabled. A contact event will produce a IContactCallback to the PhysicsShape.callbackTarget for both shapes involved. |
| contactFilter | The filter used when determining what contacts this shape participates in. |
| contactFilterCallbacks | Controls whether this shape produces contact filter callbacks. A contact filter callback allows direct control over whether a contact will be created between a pair of shapes. This applies to both triggers and non-triggers but only with to Dynamic bodies These are relatively expensive so disabling them can provide a significant performance benefit. A contact filter callback will call the PhysicsShape.callbackTarget for both shapes involved if they implement IContactFilterCallback. |
| customColor | Custom debug draw color. Any color value other than UnityEngine.Color.clear (RGBA=0) will be used to render the shape.. This value is passed back when using the PhysicsWorld debug drawing. The alpha value here is always ignored. This is only used in the Unity Editor or in a Development Player. This is assigned to the current PhysicsShape.surfaceMaterial. See LowLevelPhysics2D.PhysicsWorld.Draw. |
| definition | Get/Set a shape definition by accessing all of its current properties. This is provided as convenience only and should not be used when performance is important as all the properties defined in the definition are accessed sequentially. You should try to only use the specific properties you need rather than using this feature. |
| friction | The Coulomb (dry) friction coefficient, usually in the range [0, 1]. This is assigned to the current PhysicsShape.surfaceMaterial. |
| frictionMixing | Defines the method used when mixing the friction values of two shapes to form a contact. This is assigned to the current PhysicsShape.surfaceMaterial. |
| frictionPriority | The priority for combining the PhysicsShape.friction properties when two shapes come into contact. If the priority of one shape is higher than the other shape then the higher priority PhysicsShape.SurfaceMaterial.frictionMixing will be used. If the priority of both shapes are the same then simply the higher enumeration value of UnityEngine.PhysicsMaterialCombine2D from both shapes will be used. This is assigned to the current PhysicsShape.surfaceMaterial. |
| hitEvents | Controls whether this shape produces hit events which can be retrieved after the simulation has completed. |
| isChainSegment | Check if the shape is a Chain type. A Chain type is owned by a chain. See PhysicsShape.chain and PhysicsChain. |
| isOwned | Get if the shape is owned. See PhysicsShape.SetOwner. |
| isTrigger | Get/Set if the shape is a trigger. Changing the state here is relatively expensive and should be avoided. See PhysicsShapeDefinition.isTrigger. |
| isValid | Check if the shape is valid. |
| localCenter | Get the center of the shape, in local-space. |
| massConfiguration | The shape mass configuration. Normally this only used on a body where the total of all shapes is used. This allows the calculation of this specific shape in isolation. See MassConfiguration. |
| moverData | The mover data for the shape mover. |
| ownerUserData | Get PhysicsUserData that can be used for any purpose, typically by the owner only. |
| polygonGeometry | Get/Set the Polygon associated with this shape. When getting the shape geometry, the shape type must match the geometry type otherwise an warning will be produced and an invalid geometry will be returned. Setting the geometry will change the type of shape represented even if the shape type was different before. Setting the geometry will also result in waking the body the shape is attached to. |
| preSolveCallbacks | Controls whether this shape produces pre-solve callbacks. This only applies to Dynamic bodies and is ignored for triggers. These are relatively expensive so disabling them can provide a significant performance benefit. A pre-solve callback will call the PhysicsShape.callbackTarget for both shapes involved if they implement IPreSolveCallback. |
| rollingResistance | The rolling resistance usually in the range [0, 1]. This is assigned to the current PhysicsShape.surfaceMaterial. |
| segmentGeometry | Get/Set the Segment associated with this shape. When getting the shape geometry, the shape type must match the geometry type otherwise an warning will be produced and an invalid geometry will be returned. Setting the geometry will change the type of shape represented even if the shape type was different before. Setting the geometry will also result in waking the body the shape is attached to. |
| shapeType | The type of shape. See ShapeType. |
| startMassUpdate | Should the body update its mass properties when this shape is created. Disabling this improves performance when multiple shapes are being added to the same body. The mass of a body can then be explicitly updated by calling PhysicsBody.ApplyMassFromShapes See PhysicsShapeDefinition.startMassUpdate. |
| startStaticContacts | Normally shapes on Static bodies don't create contacts when they are added to the world. This overrides that behavior and causes contact creation. This significantly slows down Static body creation which can be important when there are many Static shapes. This is implicitly always true for Triggers, Dynamic bodies and Kinematic bodies. See PhysicsShapeDefinition.startStaticContacts. |
| surfaceMaterial | The surface material for the shape comprising of many properties such as friction, bounciness, rolling resistance etc. Setting the surface material overrides any individual settings for friction, bounciness, rolling resistance etc. |
| tangentSpeed | The tangent (surface) speed. This is assigned to the current PhysicsShape.surfaceMaterial. |
| transform | Get the shape transform. This is simply the body transform. See PhysicsBody.transform. |
| triggerEvents | Controls whether this shape produces triggers events which can be retrieved after the simulation has completed. A trigger event is only produced if both shapes involved have their triggerEvents enabled. A trigger event will produce a ITriggerCallback to the PhysicsShape.callbackTarget for both shapes involved. |
| userData | Get/Set PhysicsUserData that can be used for any purpose. The physics system doesn't use this data, it is entirely for custom use. |
| world | Get the world the shape is attached to. |

### Public Methods

| Method | Description |
| --- | --- |
| ApplyWind | Apply a wind force to the shape body using the density of air This considers the projected area of the shape in the wind direction. This also considers the relative velocity of the shape. This only has an effect if the shape body is UnityEngine.RigidbodyType2D.Dynamic. This only has an effect of shapes of type Circle, Capsule or Polygon. |
| CastRay | Check if a ray intersects the shape. See CastResult. |
| CastShape | Calculate if a cast shape intersects the shape. Initially touching shapes are treated as a miss. You should check for overlap first if initial overlap is required. See CastShapeInput and CastResult. |
| ClosestPoint | Calculate the closest point on this shape to the specified point. |
| CreateShapeProxy | Create a shape proxy from the shape. |
| Destroy | Destroy the shape, destroying all Contact the shape is involved in. If the object is owned with PhysicsShape.SetOwner then you must provide the owner key it returned. Failing to do so will return a warning and the shape will not be destroyed. The lifetime of the specified owner object is not linked to this shape i.e. this shape will still be owned by the owner object, even if it is destroyed. Shapes of type Chain cannot be destroyed here, they must be destroyed by their owning chain. See PhysicsChain and MassConfiguration. |
| Draw | Draw the PhysicsShape that visually represents its current state in the world. This is only used in the Unity Editor or in a Development Player. |
| GetContacts | Get all the touching contacts this shape is currently participating in. |
| GetDensity | Get the shape density. See PhysicsBody.massConfiguration. |
| GetOwner | Get the owner object associated with this shape as specified using PhysicsShape.SetOwner. |
| GetPerimeter | Get the length of the perimeter of the shape. |
| GetPerimeterProjected | Get the length of the perimeter of the shape projected onto the specified axis. |
| GetTriggerVisitors | Get all the trigger visitors for this shape. The shape must be a trigger, if not, no visitors will be returned. |
| Intersect | Check the intersection between this shape and another shape. |
| OverlapPoint | Check if a point intersects the shape. This will only work on "closed" shapes. SeeShapeType. |
| SetDensity | Set the shape density. See PhysicsBody.massConfiguration. |
| SetOwner | Set the (optional) owner object associated with this shape and return an owner key that must be specified when destroying the shape with PhysicsShape.Destroy. The physics system provides access to all objects, including the ability to destroy them so this feature can be used to stop accidental destruction of objects that are owned by other objects. You can only set the owner once, multiple attempts will produce a warning. It is also valid to not specify an owner object (NULL) to simply gain an owner key however it can be useful, if simply for debugging purposes and discovery, to know which object is the owner. |
| SetOwnerUserData | Set PhysicsUserData that can be used for any purpose, typically by the owner only. |

### Static Methods

| Method | Description |
| --- | --- |
| CreateShape | Create a Circle shape, using its default definition, attached to the specified body. See PhysicsBody.CreateShape. |
| CreateShapeBatch | Create a batch of Circle shapes attached to the specified body. |
| DestroyBatch | Destroy a batch of shapes, destroying all Contact the shapes are involved in. Any invalid shapes will be ignored including chain segment shapes created via a PhysicsChain (the chain must be destroyed)." Owned shapes will produce a warning and will not be destroyed (See PhysicsShape.SetOwner). See MassConfiguration. |
