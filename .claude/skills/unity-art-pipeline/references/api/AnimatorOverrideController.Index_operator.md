<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/AnimatorOverrideController.Index_operator.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Returns either the overriding Animation Clip if set or the original Animation Clip named name.

Note: You should avoid calling this function more than once per frame per Animator as each call will trigger a reallocation of the animator's clip bindings. Instead use AnimatorOverrideController.ApplyOverrides.
