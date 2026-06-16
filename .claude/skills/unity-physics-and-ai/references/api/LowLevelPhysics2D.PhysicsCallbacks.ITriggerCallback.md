<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/LowLevelPhysics2D.PhysicsCallbacks.ITriggerCallback.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

An interface that when implemented by a UnityEngine.Object, can be called as a target by PhysicsWorld.SendTriggerCallbacks.

### Public Methods

| Method | Description |
| --- | --- |
| OnTriggerBegin2D | Called when a TriggerBeginEvent for the object occurs. This will always be called on the main-thread after the simulation has finished. |
| OnTriggerEnd2D | Called when a TriggerEndEvent for the object occurs. This will always be called on the main-thread after the simulation has finished. |
