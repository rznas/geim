<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/ContactPoint2D-separation.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Gets the distance between the colliders at the contact point.

Unity's physics engine tracks the distances between all potentially overlapping colliders. Once a given collider pair has overlapped (collided), contacts are immediately generated and an OnCollisionEnter2D event is sent. While the collider pair is still active, the distance between the colliders can be greater than zero, equal to zero, or even less than zero when the colliders are still apart, touching, or overlapping respectively.
