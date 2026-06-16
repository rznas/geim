<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/HumanDescription-feetSpacing.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Modification to the minimum distance between the feet of a humanoid model.

When a humanoid model has unusually large feet (a cartoon-like character, say) the meshes for the feet can sometimes interpenetrate during IK movement. The default value for `feetSpacing` is zero, but using a larger value will increase the minimum distance that is maintained between the feet and avoid interpenetration.
