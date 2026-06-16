<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Cloth-enableContinuousCollision.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Enable continuous collision to improve collision stability.

Continuous collision is around 2x more computationally expensive than discrete collision, but it is necessary to detect collision between fast moving objects. Continuous collision analyzes the trajectory of particles and capsules to determine when a contact occurs. After the first time of contact, the particle is moved with the shape until the end of the iteration.
