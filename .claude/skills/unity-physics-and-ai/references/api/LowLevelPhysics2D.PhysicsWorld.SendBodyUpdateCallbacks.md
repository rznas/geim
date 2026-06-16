<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/LowLevelPhysics2D.PhysicsWorld.SendBodyUpdateCallbacks.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Send all current PhysicsWorld.bodyUpdateEvents where the PhysicsBody involved are valid (see PhysicsBody.isValid) and have a callback target assigned (see PhysicsBody.callbackTarget). Only callback targets that implement IBodyUpdateCallback will be called. This will be called automatically if PhysicsWorld.autoBodyUpdateCallbacks is true. This must be called on the main thread.
