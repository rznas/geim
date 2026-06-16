<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/ShaderUtil.CreateShaderAsset.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| context | A context object that the asset system needs to register shader dependencies properly. |
| source | A string that contains a shader written in ShaderLab code. |
| compileInitialShaderVariants | Set to true to compile the ShaderLab code contained in the source string; otherwise false. |

### Description

Creates a new Shader object from the provided source code string. You can use this method alongside the ScriptedImporter to create custom shader generation tools in the Editor.
