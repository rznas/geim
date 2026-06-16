<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/LowLevelPhysics2D.PhysicsShape-contactEvents.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Controls whether this shape produces contact events which can be retrieved after the simulation has completed. Any contact events can be used to call the assigned PhysicsShape.callbackTarget. A contact event is produced if either shapes involved have their contactEvents enabled. A contact event will produce a IContactCallback to the PhysicsShape.callbackTarget for both shapes involved.
