<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Joint-breakTorque.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

The torque that needs to be applied for this joint to break. To be able to break, a joint must be _Locked_ or _Limited_ on the axis of rotation where the torque is being applied. This means that some joints cannot break, such as an unconstrained Configurable Joint.

The torque might come from collisions with other objects, forces applied with Rigidbody.AddTorque or from other joints. The break torque can be set to Mathf.Infinity to render the joint unbreakable. Additional resources: Joint.OnJointBreak.
