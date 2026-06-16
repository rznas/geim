<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/LowLevelPhysics2D.PhysicsEvents.TriggerEndEvent.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

An event produced when a pair of Shapes, one of which was a trigger, stopped touching. An end event will be produced anything that destroys contacts happens, prior to the last world simulation step, which include things like setting the body transform, destroying a body or shape or changing a contact filter etc. The shapes provided may have been destroyed so they should always be validated with PhysicsShape.isValid. See PhysicsWorld.triggerEndEvents.

### Properties

| Property | Description |
| --- | --- |
| triggerShape | The trigger shape involved in the event. |
| visitorShape | The shape that stopped touching the trigger shape. |
