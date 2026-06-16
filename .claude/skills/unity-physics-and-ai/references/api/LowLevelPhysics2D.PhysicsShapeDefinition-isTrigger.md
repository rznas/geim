<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/LowLevelPhysics2D.PhysicsShapeDefinition-isTrigger.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Enable/Disable being a trigger shape. A trigger shape generates overlap events but never generates a collision response. Triggers do not collide with other triggers and do not have continuous collision, instead, use a ray or shape cast for those scenarios. Triggers still contribute to the body mass if they have non-zero density. The default is false.
