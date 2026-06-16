<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/HumanDescription-upperLegTwist.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Defines how the upper leg's roll/twisting is distributed between the thigh and knee joints.

When the upper leg needs to twist or roll based on IK, `upperLegTwist` (a weighted range of 0..1) determines how much rotation is applied to the thigh and knee. When `upperLegTwist` is set to 0, the twist applies entirely to the thigh. When set to 1, the twist applies entirely to the knee. The default value of 0.5 evenly distributes the twist between both the thigh and the knee.

Additional resources: HumanDescription.lowerArmTwist, HumanDescription.lowerLegTwist, HumanDescription.upperArmTwist.
