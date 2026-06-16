<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/JointBreakAction2D.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Options for selecting which action to take when a Joint2D breaks.

Additional resources: Joint2D.breakAction, Joint2D.breakForce or Joint2D.breakTorque.

### Properties

| Property | Description |
| --- | --- |
| Ignore | When the Joint2D breaks, no action will be taken and Joint2D.OnJointBreak2D will not be called. |
| CallbackOnly | When the Joint2D breaks, call Joint2D.OnJointBreak2D but take no other action. |
| Disable | When the Joint2D breaks, call Joint2D.OnJointBreak2D and then disable the component. |
| Destroy | When the Joint2D breaks, call Joint2D.OnJointBreak2D and then destroy the component. |
