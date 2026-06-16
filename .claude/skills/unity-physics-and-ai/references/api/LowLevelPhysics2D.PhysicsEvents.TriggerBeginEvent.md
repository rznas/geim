<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/LowLevelPhysics2D.PhysicsEvents.TriggerBeginEvent.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

An event produced when a pair of Shapes, one of which was a trigger, began touching. The shapes provided may have been destroyed so they should always be validated with PhysicsShape.isValid. See PhysicsWorld.triggerBeginEvents.

### Properties

| Property | Description |
| --- | --- |
| triggerShape | The trigger shape involved in the event. |
| visitorShape | The shape that began touching the trigger shape. |
