<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Quaternion.LerpUnclamped.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Interpolates between `a` and `b` by `t` and normalizes the result afterwards. The parameter `t` is not clamped.

This is faster than Slerp but looks worse if the rotations are far apart.

Additional resources: Lerp, SlerpUnclamped.
