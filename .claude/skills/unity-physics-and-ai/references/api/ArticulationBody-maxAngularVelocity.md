<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/ArticulationBody-maxAngularVelocity.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

The maximum angular velocity of the articulation body measured in radians per second.

The angular velocity of articulation bodies is clamped to maxAngularVelocity to avoid numerical instability with fast rotating bodies. The maxAngularVelocity is applied to the body before the simulation step. This means that after the simulation frame, the angular velocity might exceed the set maximum. You can override this value per articulation body to enable faster rotations on objects such as wheels. (Default 7) range { 0, infinity }. 
Unit of measurement - rad/s (radians per second).
