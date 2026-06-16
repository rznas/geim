<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/FrictionJoint2D-maxTorque.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

The maximum torque that can be generated when trying to maintain the friction joint constraint.

The joint constantly tries to reduce the ::Rigidbody2D::angularVelocity using the maximum torque. Because you can use very high torque limit, you can essentially reduce an objects rotation to almost zero.

Additional resources: maxForce, ::Rigidbody2D::angularVelocity.
