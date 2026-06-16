<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/LowLevelPhysics2D.PhysicsRotate-direction.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

The rotation direction where X = cos(angle) and Y = sin(angle). This should always be normalized otherwise warnings will be produced when used, however this is not enforced. See PhysicsRotate.isNormalized and PhysicsRotate.Normalized.

This is exposed directly as a field rather than a property as it is extremely unlikely to ever change and causes usability issues as a property.
