<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Material.GetMatrix.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| nameID | The name ID of the property retrieved by Shader.PropertyToID. |
| name | The name of the property. |

### Description

Get a named matrix value from the shader.

This is mostly used with custom shaders that need extra matrix parameters. Matrix parameters are not exposed in the material inspector, but can be set and queried with `SetMatrix` and `GetMatrix` from scripts.

Additional resources: SetMatrix, Materials, ShaderLab documentation, Shader.PropertyToID.
