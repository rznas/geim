<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/LowLevelPhysics2D.PhysicsWorld-hugeWorldExtent.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Positions greater than about 16km will have precision problems, so 100km as a limit should be fine in all cases. This is used to detect bad values. This value is 100000.0f * PhysicsWorld.lengthUnitsPerMeter.
