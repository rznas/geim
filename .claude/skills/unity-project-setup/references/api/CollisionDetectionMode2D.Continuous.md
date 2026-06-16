<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/CollisionDetectionMode2D.Continuous.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Ensures that all collisions are detected when a Rigidbody2D moves.

When using this mode, the collision detection system will detect all collisions in the path that a Rigidbody2D moves along therefore preventing colliders attached to the rigidbody passing through other colliders at higher speeds. The physics system will also calculate a time-of-time calculation to ensure that the new position of the Rigidbody2D is at the correct contact position with no overlaps. This mode however is much more expensive to calculate and should only be used when objects are moving at higher speeds or you are encountering objects overlapping or passing through each other.

Additional resources: Rigidbody2D.collisionDetectionMode.
