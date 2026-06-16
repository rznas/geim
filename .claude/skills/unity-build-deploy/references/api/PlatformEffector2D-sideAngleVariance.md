<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/PlatformEffector2D-sideAngleVariance.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

The angle variance centered on the sides of the platform. Zero angle only matches sides 90-degree to the platform "top".

Increasing the`sideAngleVariance` allows the definition of what is a "side" to be expanded beyond the surfaces perpendicular to the platform "top". For instance, if the Effector2D source was a CircleCollider2D then the sides could be set to an arc on either side of the circle.

Additional resources: sideBounce, sideFriction.
