<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/HumanDescription-lowerArmTwist.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Defines how the lower arm's roll/twisting is distributed between the elbow and wrist joints.

When the lower arm needs to twist or roll based on IK, `lowerArmTwist` (a weighted range of 0..1) determines how much rotation is applied to the wrist and elbow. When `lowerArmTwist` is set to 0, the twist applies entirely to the elbow. When set to 1, the twist applies entirely to the wrist. The default value of 0.5 evenly distributes the twist between both the elbow and the wrist.

Additional resources: HumanDescription.upperArmTwist, HumanDescription.lowerLegTwist, HumanDescription.upperLegTwist.
