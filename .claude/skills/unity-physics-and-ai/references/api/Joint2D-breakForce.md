<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Joint2D-breakForce.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

The force that needs to be applied for this joint to break.

When a joint tries to constrain a Rigidbody2D it may need to apply a force to do so. This is known as the reactionForce. Each physics update, the breakForce is compared to the size of the reactionForce; if it exceeds it then Joint2D.OnJointBreak2D is called with a reference to the joint that broke. Knowing the joint that broke, you can check the actual reaction force that broke the joint using reactionForce or Joint2D.GetReactionForce.

The break force can be set to Mathf.Infinity to make the joint unbreakable by any amount of reaction force. Alternately, setting the breakAction to JointBreakAction2D.Ignore will make the joint unbreakable by either breakForce or breakTorque.

The action taken when a joint exceeds the breakForce is controlled by breakAction.

Additional resources: Joint2D.reactionForce, Joint2D.GetReactionForce & Joint2D.OnJointBreak2D.
