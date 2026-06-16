<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/LowLevelPhysics2D.PhysicsCallbacks.IContactCallback.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

An interface that when implemented by a UnityEngine.Object, can be called as a target by PhysicsWorld.SendContactCallbacks.

### Public Methods

| Method | Description |
| --- | --- |
| OnContactBegin2D | Called when a ContactBeginEvent for the object occurs. This will always be called on the main-thread after the simulation has finished. |
| OnContactEnd2D | Called when a ContactEndEvent for the object occurs. This will always be called on the main-thread after the simulation has finished. |
