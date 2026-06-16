<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/ShaderGUI.AssignNewShaderToMaterial.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| material | The material the newShader should be assigned to. |
| oldShader | Previous shader. |
| newShader | New shader to assign to the material. |

### Description

This method is called when a new shader has been selected for a Material.

Can be used for setting up the new shader based on state from the previous shader. Ensure to call *base.AssignNewShaderToMaterial* to actually set *material.shader*.
