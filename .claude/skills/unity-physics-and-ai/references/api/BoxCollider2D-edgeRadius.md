<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/BoxCollider2D-edgeRadius.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Controls the radius of all edges created by the collider.

The edge radius controls a radius extending around all edges of the box. When an edge has zero radius it is effectively infinitely thin. When an edge has a radius greater than zero, each edge acts like a 'capsule' shape with rounded ends. This results in a box with rounded corners.

It is important to know that when using Rigidbody2D.useAutoMass, changing the edge radius does not change the calculated Rigidbody2D.mass even though the collision area has changed. The mass is calculated as if the edge radius is zero i.e.not used.
