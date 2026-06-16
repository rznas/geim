<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/PointEffector2D-distanceScale.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

The scale applied to the calculated distance between source and target.

When the distance is calculated between source and target for distance-based force calculations (such as inverse-linear or inverse-squared), it is then scaled by this value. This changes the effective distance used, it does not change the actual distance in which the effector works, as that is always controlled by the collider.

This can be useful when using very large or very small colliders, allowing you to shrink or expand the distance calculation, changing the magnitude of the force applied.
