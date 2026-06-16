<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Rigidbody2D-angularVelocity.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Angular velocity in degrees per second.

A Rigidbody2D can only rotate around one axis (the Z axis) so the angular velocity is a single float value rather than a vector. Typically, the value of this property is not set directly but rather by applying `torque` to the rigidbody. The angular velocity will also decrease automatically under the effect of angularDamping.

Additional resources: linearVelocity, AddTorque, AddForceAtPosition & angularDamping.
