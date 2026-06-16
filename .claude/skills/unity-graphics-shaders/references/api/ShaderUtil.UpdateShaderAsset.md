<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/ShaderUtil.UpdateShaderAsset.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| context | A context object that the asset system needs to register shader dependencies properly. |
| source | A string that contains a shader written in ShaderLab code. |
| compileInitialShaderVariants | Set to true to compile the ShaderLab code contained in the source string; otherwise false. |
| shader | The Shader to update. |

### Description

Replaces the existing source code in the specified shader with the source code in the supplied string.
