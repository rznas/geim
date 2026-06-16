<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/LowLevelPhysics2D.PhysicsEvents.ContactHitEvent.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

An event produced when a pair of PhysicsShape come into contact at relative speed exceeding the PhysicsWorld.contactHitEventThreshold.

 The shapes provided may have been destroyed so they should always be validated with PhysicsShape.isValid. This may be reported for speculative contacts that have a confirmed impulse. See PhysicsWorld.contactHitEvents.

### Properties

| Property | Description |
| --- | --- |
| approachSpeed | The speed the shapes are approaching, typically in meters per second. This value is always positive. |
| contactId | The unique Id of the contact. This contact is volatile and may be destroyed automatically when the world is modified or simulated therefore it should always be checked for validity with PhysicsShape.ContactId.isValid. |
| normal | Normal vector that always points in the direction from shape A to shape B. |
| point | Point where the shapes hit at the beginning of the time step. This is a mid-point between the two surfaces. It could be at speculative point where the two shapes were not touching at the beginning of the time step. |
| shapeA | One of the shapes involved in the event. |
| shapeB | The other shape involved in the event. |
