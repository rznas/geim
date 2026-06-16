<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Physics-improvedPatchFriction.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Enables an improved patch friction mode that guarantees static and dynamic friction do not exceed analytical results.

This improved mode only applies when patch friction is enabled, otherwise it has no effect.

The physics engine computes contact points for each pair of colliders that are in contact. From those contacts, the engine produces a set of up to two friction anchor points. With the flag set, the engine distributes the normal force between the friction anchors so that the total amount of friction applied does not exceed the analytical results.
