<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/ArticulationBody-maxLinearVelocity.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

The maximum linear velocity of the articulation body measured in meters per second.

The linear velocity of articulation bodies is clamped to maxLinearVelocity to avoid numerical instability with fast moving bodies. The maxLinearVelocity is applied to the body before the simulation step. This means that after the simulation frame, the linear velocity might exceed the set maximum. You can override this value per articulation body. 
Unit of measurement - m/s (meters per second).
