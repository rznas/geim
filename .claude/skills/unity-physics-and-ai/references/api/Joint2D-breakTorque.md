<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Joint2D-breakTorque.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

The torque that needs to be applied for this joint to break.

When a joint tries to constrain a Rigidbody2D it may need to apply torque to do so. This is known as the reactionTorque. Each physics update, the breakTorque is compared to the reactionTorque; if it exceeds it then Joint2D.OnJointBreak2D is called with a reference to the joint that broke. Knowing the joint that broke you can check the actual reaction torque that broke the joint using reactionTorque or Joint2D.GetReactionTorque.

The break torque can be set to Mathf.Infinity to make the joint unbreakable by any amount of reaction torque. Alternately, setting the breakAction to JointBreakAction2D.Ignore will make the joint unbreakable by either breakForce or breakTorque.

The action taken when a joint exceeds the breakForce is controlled by breakAction.

Note: breakTorque is not available on DistanceJoint2D, SpringJoint2D or TargetJoint2D.

Additional resources: Joint2D.reactionTorque, Joint2D.GetReactionTorque & Joint2D.OnJointBreak2D.
