<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/PlatformEffector2D-surfaceArc.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

The angle of an arc that defines the surface of the platform centered of the local 'up' of the effector.

Any collision normal with an angle within this arc is never considered for one-way whereas everything outside this arc is considered for one-way.

The default defines an arc that includes collisions from the local horizontal to the local vertical. If collisions with the local vertical sides are not required then you can reduce the arc by a few degrees.

Setting the arc to its maximum of 360 degrees results in all collision normals being the surface therefore no one-way can occur. Setting the arc to its minimum of 0 degrees results in all collision normals being considered outside the surface therefore everything is considered for the optional one-way behaviour.
