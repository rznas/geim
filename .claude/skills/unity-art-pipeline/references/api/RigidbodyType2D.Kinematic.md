<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/RigidbodyType2D.Kinematic.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Sets the Rigidbody2D to have kinematic behaviour.

Kinematic behaviour stops the Rigidbody2D from reacting to gravity or applied forces including contacts with other Kinematic or Static Rigidbody2D.

This type of Rigidbody2D can be moved by setting its Rigidbody2D.linearVelocity or Rigidbody2D.angularVelocity or by being repositioned explicitly.

A kinematic Rigidbody2D will only collide with a dynamic Rigidbody2D body type. The exception to this is if Rigidbody2D.useFullKinematicContacts is set to true in which case it will collide with all other Rigidbody2D body types.

When an attached Collider2D is set to trigger, it will always produce a trigger for any Collider2D attached to all other Rigidbody2D body types.

Additional resources: Rigidbody2D.bodyType, Rigidbody2D.useFullKinematicContacts.
