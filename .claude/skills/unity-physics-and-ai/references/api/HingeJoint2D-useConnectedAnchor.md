<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/HingeJoint2D-useConnectedAnchor.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Controls whether the connected anchor is used or not.

By default, this property is enabled which results in the Joint2D.connectedBody and AnchoredJoint2D.connectedAnchor properties being used to constrain the position of the Rigidbody2D the HingeJoint2D is attached to. This is known as a point-to-point constraint.

When this property is disabled, the point-to-point constraint is disabled. This stops the HingeJoint2D from being connected to its anchor point allowing the Rigidbody2D it is added to, to move freely.

Disabling this allows both the motor and limits to be used to constrain and modify angular motion while not constraining linear motion.
