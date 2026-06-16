<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Shader.SetGlobalTexture.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| nameID | The name ID of the property retrieved by Shader.PropertyToID. |
| name | The name of the property. |
| value | The texture to set. |
| element | Optional parameter that specifies the type of data to set from the RenderTexture. |

### Description

Sets a global texture property for all shaders.

Global properties are used if a shader needs them but the material does not have them defined (for example, if the shader does not expose them in `Properties` block).

Usually this is used if you have a set of custom shaders that all use the same "global" texture (for example, custom diffuse-lighting cubemap). Then you can set the global property from script and don't have to setup the same texture in all materials.

By specifying a `RenderTextureSubElement`, you can indicate which type of data to set from the RenderTexture. The possible options are: RenderTextureSubElement.Color, RenderTextureSubElement.Depth, and RenderTextureSubElement.Stencil.

Additional resources: SetGlobalColor, SetGlobalFloat; Material class, ShaderLab documentation, RenderTextureSubElement.
