<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/LowLevelPhysics2D.PhysicsBody-callbackTarget.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Get/Set the System.Object that event callbacks for this body will be sent to. Care should be taken with any System.Object assigned as a callback target that isn't a UnityEngine.Object as this assignment will not in itself keep the object alive and can be garbage collected. To avoid this, you should have at least a single reference to the object in your code. This includes the following events: - A BodyUpdateEvent with call IBodyUpdateCallback.
