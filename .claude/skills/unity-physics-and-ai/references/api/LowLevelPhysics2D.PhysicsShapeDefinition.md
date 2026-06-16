<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/LowLevelPhysics2D.PhysicsShapeDefinition.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

A PhysicsShape definition used to specify important initial properties.

### Static Properties

| Property | Description |
| --- | --- |
| defaultDefinition | Get a default PhysicsShape definition. |

### Properties

| Property | Description |
| --- | --- |
| contactEvents | Controls whether this shape produces contact events which can be retrieved after the simulation has completed. This only applies to kinematic and dynamic bodies. A contact event is produced if either shapes involved have their contactEvents enabled. Changing this at run-time may lead to lost begin/end events. |
| contactFilter | The contact filter used to control which contacts this shape can participate in. |
| contactFilterCallbacks | Controls whether this shape produces contact filter callbacks. A contact filter callback allows direct control over whether a contact will be created between a pair of shapes. This applies to both triggers and non-triggers but only with to Dynamic bodies These are relatively expensive so disabling them can provide a significant performance benefit. A contact filter callback will call the PhysicsShape.callbackTarget for both shapes involved if they implement IContactFilterCallback. |
| density | The density, usually in kg/m^2, defaults to 1. This is not part of the surface material because this is for the interior of the shape, which may have other considerations, such as being hollow. |
| hitEvents | Controls whether this shape produces hit events which can be retrieved after the simulation has completed. This only applies to kinematic and dynamic bodies. This is ignored for triggers. |
| isTrigger | Enable/Disable being a trigger shape. A trigger shape generates overlap events but never generates a collision response. Triggers do not collide with other triggers and do not have continuous collision, instead, use a ray or shape cast for those scenarios. Triggers still contribute to the body mass if they have non-zero density. The default is false. |
| moverData | The mover data used for the shape mover. |
| preSolveCallbacks | Controls whether this shape produces pre-solve callbacks. This only applies to Dynamic bodies and is ignored for triggers. These are relatively expensive so disabling them can provide a significant performance benefit. A pre-solve callback will call the PhysicsShape.callbackTarget for both shapes involved if they implement IPreSolveCallback. |
| startMassUpdate | Should the body update its mass properties when this shape is created. Disabling this improves performance when multiple shapes are being added to the same body. The mass of a body can then be explicitly updated by calling PhysicsBody.ApplyMassFromShapes See PhysicsShape.startMassUpdate. |
| startStaticContacts | Normally shapes on Static bodies don't create contacts when they are added to the world. This overrides that behavior and causes contact creation. This significantly slows down Static body creation which can be important when there are many Static shapes. This is implicitly always true for Triggers, Dynamic bodies and Kinematic bodies. See PhysicsShape.startStaticContacts. |
| surfaceMaterial | The surface material for the shape comprising of many properties such as friction, bounciness, rolling resistance etc. |
| triggerEvents | Controls whether this shape produces trigger events which can be retrieved after the simulation has completed. A trigger event is only produced if both shapes involved have their triggerEvents enabled. This applies to triggers and non-triggers alike. |

### Constructors

| Constructor | Description |
| --- | --- |
| PhysicsShapeDefinition | Create a default PhysicsShape definition. |
