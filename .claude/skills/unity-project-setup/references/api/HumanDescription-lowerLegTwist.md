<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/HumanDescription-lowerLegTwist.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Defines how the lower leg's roll/twisting is distributed between the knee and ankle.

When the lower leg needs to twist or roll based on IK, `lowerLegTwist` (a weighted range of 0..1) determines how much rotation is applied to the knee and ankle. When `lowerLegTwist` is set to 0, the twist applies entirely to the knee. When set to 1, the twist applies entirely to the ankle. The default value of 0.5 evenly distributes the twist between both the knee and the ankle.

Additional resources: HumanDescription.upperArmTwist, HumanDescription.lowerArmTwist, HumanDescription.upperLegTwist.
