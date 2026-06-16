<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Joint2D-enableCollision.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Should the two Rigidbody2D connected with this joint collide with each other?

When this is disabled, the two Rigidbody2D connected with this joint will never produce collision or trigger contacts with each other. When this is enabled, the Rigidbody2D are allowed to produce collision or trigger contacts should they be configured to do so.

NOTE: When this is disabled but no Joint2D.connectedBody is specified then no collision or trigger contacts are produced with any implicitly Static Collider2D i.e. Collider2D that are not attached to any Rigidbody2D.

Additional resources: Rigidbody2D class, connectedBody.
