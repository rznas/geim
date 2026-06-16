<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Collider2D-localToWorldMatrix.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

The transformation matrix used to transform the Collider physics shapes to world space.

The Collider2D creates PhysicsShape2D in the space of any attached Rigidbody2D. The transformation matrix returned here transforms these shapes from the Rigidbody2D's local space to world space.

If the Collider2D is not attached to a Rigidbody2D then Matrix4x4.identity is returned because the Collider2D is Static and the subsequently created PhysicsShape2D will already be in world space.

Additional resources: Rigidbody2D.localToWorldMatrix and Matrix4x4.
