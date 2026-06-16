<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/PlatformEffector2D-sideArc.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

The angle of an arc that defines the sides of the platform centered on the local 'left' and 'right' of the effector. Any collision normals within this arc are considered for the 'side' behaviours.

Any collision normal with an angle within this arc is always considered for the optional side behaviours, whereas everything outside this arc is never considered for side behaviours.

The default defines an arc that includes local vertical edges i.e. typical side edges. Setting the arc to its maximum of 180 degrees results in all collision normals being considered for the optional side behaviours. Setting the arc to its minimum of 0 degrees results in no collision normals being considered for the optional side behaviours.

Additional resources: useSideBounce, useSideFriction.
