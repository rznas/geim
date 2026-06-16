<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Vector4.Lerp.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Linearly interpolates between two vectors.

Interpolates between `a` and `b` by amount `t`.

The parameter `t` is clamped between [0...1].

When `t` = 0 returns `a`. 
 When `t` = 1 returns `b`. 
 When `t` = 0.5 returns the midpoint of `a` and `b`.

Additional resources: LerpUnclamped.
