<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/LowLevelPhysics2D.PhysicsChain-callbackTarget.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Get/Set the System.Object that callbacks for the shapes owned by this chain will be sent to. Care should be taken with any System.Object assigned as a callback target that isn't a UnityEngine.Object as this assignment will not in itself keep the object alive and can be garbage collected. To avoid this, you should have at least a single reference to the object in your code. This includes the following events: A ContactFilterEvent with call IContactFilterCallback.A PreSolveEvent with call IPreSolveCallback.A TriggerBeginEvent with call ITriggerCallback.A TriggerEndEvent with call ITriggerCallback.A ContactBeginEvent with call IContactCallback.A ContactEndEvent with call IContactCallback.
