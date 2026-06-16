<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/HumanDescription-legStretch.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Amount by which the leg's length is allowed to stretch when using IK.

Inverse Kinematics (IK) can often be handled more smoothly if a small amount of "slack" is allowed in the positions of bones relative to each other. This property controls how much slack is available in the leg joints.

The value is given in world distance units in the range 0..1. For example, with the default setting of 0.05, the leg will begin to stretch when the IK goal is at 95% of the target and will stretch by 5%. The stretch is carried out by translating both the knee and ankle transforms.

The ideal value will depend on the rig and the animation but in general, a larger value will make for a smoother IK computation at the expense of more unrealistic stretching of the leg.

Additional resources: HumanDescription.armStretch.
