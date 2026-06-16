<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Cloth-selfCollisionDistance.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Minimum distance at which two cloth particles repel each other (default: 0.0).

A value larger than 0.0 enables particle versus particle collision. Self-collision distance should be smaller than the smallest distance between two particles in the rest configuration. If the distance is larger, self-collision may violate some distance constraints and result in jittering.
