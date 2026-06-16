<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/RigidbodyType2D.Static.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Sets the Rigidbody2D to have static behaviour.

Static behaviour stops the Rigidbody2D from reacting to gravity or applied forces including contacts with any other Rigidbody2D.

This type of Rigidbody2D should never repositioned explicitly. It is designed to never move.

A static Rigidbody2D will only collide with a dynamic Rigidbody2D body type. The exception to this is if Rigidbody2D.useFullKinematicContacts is set to true in which case it will also collide with any Kinematic body types.

When an attached Collider2D is set to trigger, it will always produce a trigger for any Collider2D attached to Dynamic or Kinematic body types.

Additional resources: Rigidbody2D.bodyType, Rigidbody2D.useFullKinematicContacts.
