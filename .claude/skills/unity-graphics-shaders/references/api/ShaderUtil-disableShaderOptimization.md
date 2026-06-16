<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/ShaderUtil-disableShaderOptimization.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Disables shader optimization in the Editor.

When you set this to `true`, shader compilers don't optimize your shader code in the Editor's Scene view and Game view. This can greatly speed up the time it takes shaders to compile, but can also reduce rendering speed. The effect will depend on which shader compiler your platform uses - see Shader compilation.

If you restart the Editor, this setting is reset to `false`.

This setting doesn't affect your built application.
