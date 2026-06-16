<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/LowLevelPhysics2D.PhysicsEvents.ContactEndEvent.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

An event produced by a pair of Shapes, neither of which are a trigger, stopped touching. You will get an end event if you do anything that destroys contacts prior to the last world simulation step which include things like setting the body transform, destroying a body etc. The shapes provided may have been destroyed so they should always be validated with PhysicsShape.isValid. See PhysicsWorld.contactEndEvents.

### Properties

| Property | Description |
| --- | --- |
| contactId | The unique Id of the contact. This contact is volatile and may be destroyed automatically when the world is modified or simulated therefore it should always be checked for validity with PhysicsShape.ContactId.isValid. |
| shapeA | One of the shapes involved in the event. |
| shapeB | The other shape involved in the event. |
