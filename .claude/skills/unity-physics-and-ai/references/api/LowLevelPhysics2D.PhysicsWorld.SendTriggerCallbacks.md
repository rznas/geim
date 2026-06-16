<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/LowLevelPhysics2D.PhysicsWorld.SendTriggerCallbacks.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Send all current PhysicsWorld.triggerBeginEvents and PhysicsWorld.triggerEndEvents where either of the PhysicsShape involved are valid (see PhysicsShape.isValid) and have a callback target assigned (see PhysicsShape.callbackTarget). These events will only be created if one of the shape pairs has PhysicsShape.triggerEvents set to true. Only callback targets that implement ITriggerCallback will be called. This will be called automatically if PhysicsWorld.autoTriggerCallbacks is true. This must be called on the main thread.
