<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Joint2D-breakAction.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

The action to take when the joint breaks the breakForce or breakTorque.

A joint breaks when the force a joint exerts exceeds breakForce or when the torque a joint exerts exceeds breakTorque. The joint action happens after the call to Joint2D.OnJointBreak2D has completed. If the breakAction is changed during the Joint2D.OnJointBreak2D callback then that updated action happens.

Additional resources: JointBreakAction2D.
