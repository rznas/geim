<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/BuoyancyEffector2D-angularDamping.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

A force applied to slow angular movement of any Collider2D in contact with the effector.

Angular damping provides the ability to slow Collider2D in contact with the effector. Increasing the angular damping simulates an increasingly viscous fluid making it harder for colliders to rotate within it.

It is similar to ::Rigidbody2D::angularDamping but is more complex in that damping is applied not only as a function of velocity but also takes into account the Collider2D submerged area.
