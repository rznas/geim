<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/MaterialEditor.OnShaderChanged.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

A callback that is invoked when a Material's Shader is changed in the Inspector.

This callback is invoked as the result of selecting a new Shader from the pop-up menu in the Inspector, or as the result of undoing or redoing actions that involved changing the Shader. It is called after a new Shader has been assigned to the Material currently in the Inspector, but before all Inspectors have been repainted (updated visually in the Editor).
