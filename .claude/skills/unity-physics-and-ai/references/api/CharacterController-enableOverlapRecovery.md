<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/CharacterController-enableOverlapRecovery.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Enables or disables overlap recovery. Used to depenetrate character controllers from static objects when an overlap is detected.

Overlap recovery can be used to depenetrate character controllers (CCTs) from static objects when an overlap is detected. This can happen in three main cases:

 - when the CCT is directly spawned or teleported in another object

 - when the CCT algorithm fails due to limited FPU accuracy

 - when the "up vector" is modified, making the rotated CCT shape overlap surrounding objects

 When activated, the CCT module will automatically try to resolve the penetration, and move the CCT to a safe place where it does

not overlap other objects anymore. This only concerns static objects, dynamic objects are ignored by overlap recovery.

When overlap recovery is not activated, it is possible for the CCTs to go through static objects. By default, overlap recovery is enabled.

Overlap recovery currently works with all geometries except heightfields.
