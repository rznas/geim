<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/ArticulationBody-maxJointVelocity.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

The maximum joint velocity of the articulation body joint in reduced coordinates.

This value is applied to the body before the simulation step. This means that after the simulation frame the velocity might exceed the set maximum. To limit velocity more realistically from a physics perspective, use ArticulationDrive.forceLimit to limit how much force the drive applies to the joint. 
Units of measurement - m/s (meters per second) for linear and rad/s (radians per second) for angular motion.
