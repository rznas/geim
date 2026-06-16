<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Rigidbody2D-useFullKinematicContacts.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Should kinematic/kinematic and kinematic/static collisions be allowed?

By default, colliders attached to a pair of Rigidbody2D that are either both set to be kinematic or kinematic and static will not collide with each other. Only Rigidbody2D where one is kinematic and the other is dynamic will collide by default.

This default behaviour happens when this property is set to false however, when set to true then kinematic Rigidbody2D are allowed to collide with other kinematic or static Rigidbody2D. When this happens, collision callbacks will be produced when kinematic/kinematic or kinematic/static pairs collide although no actual collision response will happen. In other words, callbacks will happen but the Rigidbody2D will allow colliders to overlap similar to the situation when a Collider2D is set to be a trigger.

This can be a useful feature if detecting collisions is required with details of the contact points and collision normal but without the automatic collision response.

This is only used when the bodyType is set to RigidbodyType2D.Kinematic.

Additional resources: bodyType.
