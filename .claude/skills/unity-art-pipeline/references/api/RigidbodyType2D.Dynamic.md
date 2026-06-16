<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/RigidbodyType2D.Dynamic.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Sets the Rigidbody2D to have dynamic behaviour.

Dynamic behaviour causes the Rigidbody2D to react to gravity and applied forces including contacts with other dynamic or Kinematic Rigidbody2D.

This type of Rigidbody2D should be moved using forces and never repositioned explicitly.

A dynamic Rigidbody2D will collide with all other Rigidbody2D body types.

When an attached Collider2D is set to trigger, it will always produce a trigger for any Collider2D attached to all other Rigidbody2D body types.

Additional resources: Rigidbody2D.bodyType.
