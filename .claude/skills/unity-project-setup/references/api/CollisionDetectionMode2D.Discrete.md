<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/CollisionDetectionMode2D.Discrete.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

When a Rigidbody2D moves, only collisions at the new position are detected.

When using this mode, Rigidbody2D that are moving fast can overlap or even pass through other colliders. This mode however is much faster to calculate and should only be used when objects are moving at relatively slow or moderate speeds and you are not encountering objects overlapping or passing through each other.

Additional resources: Rigidbody2D.collisionDetectionMode.
