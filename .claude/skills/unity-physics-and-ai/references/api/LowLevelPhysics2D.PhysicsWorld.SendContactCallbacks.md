<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/LowLevelPhysics2D.PhysicsWorld.SendContactCallbacks.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Send all current PhysicsWorld.contactBeginEvents and PhysicsWorld.contactEndEvents where either of the PhysicsShape involved are valid (see PhysicsShape.isValid) and have a callback target assigned (see PhysicsShape.callbackTarget). These events will only be created if both of the shape pairs has PhysicsShape.contactEvents set to true. Only callback targets that implement IContactCallback will be called. This will be called automatically if PhysicsWorld.autoContactCallbacks is true. This must be called on the main thread.
