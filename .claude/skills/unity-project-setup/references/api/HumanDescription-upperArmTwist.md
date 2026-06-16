<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/HumanDescription-upperArmTwist.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Defines how the upper arm's roll/twisting is distributed between the shoulder and elbow joints.

When the upper arm needs to twist or roll based on IK, `upperArmTwist` (a weighted range of 0..1) determines how much rotation is applied to the shoulder and elbow. When `upperArmTwist` is set to 0, the twist applies entirely to the shoulder. When set to 1, the twist applies entirely to the elbow. The default value of 0.5 evenly distributes the twist between both the shoulder and the elbow.

Additional resources: HumanDescription.lowerArmTwist, HumanDescription.lowerLegTwist, HumanDescription.upperLegTwist.
