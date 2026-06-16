<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Rendering.LocalKeyword-isValid.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Specifies whether this local shader keyword is valid (Read Only).

A local shader keyword is invalid if:

- It doesn't exist in the local keyword space of the shader or compute shader you pass into the constructor.
- If Unity can't find it when you call LocalKeywordSpace.FindKeyword.

If you use an invalid local shader keyword as an argument for Material.EnableKeyword, Material.DisableKeyword, ComputeShader.EnableKeyword, or ComputeShader.DisableKeyword, it has no effect. If you use an invalid local shader keyword as an argument for Material.IsKeywordEnabled or ComputeShader.IsKeywordEnabled, these functions return `false`.

Additional resources: LocalKeywordSpace, Material.EnableKeyword, Material.DisableKeyword, ComputeShader.EnableKeyword, ComputeShader.DisableKeyword, [Material.IsKeywordEnabled]], ComputeShader.IsKeywordEnabled.
