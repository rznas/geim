<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/MaterialPropertyBlock.SetTexture.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| name | The name of the property. |
| nameID | The name ID of the property retrieved by Shader.PropertyToID. |
| value | The Texture to set. |
| element | Optional parameter that specifies the type of data to set from the RenderTexture. |

### Description

Set a texture property.

Adds a property to the block. If a texture property with the given name already exists, the old value is replaced.

By specifying a `RenderTextureSubElement`, you can indicate which type of data to set from the RenderTexture. The possible options are: RenderTextureSubElement.Color, RenderTextureSubElement.Depth, and RenderTextureSubElement.Stencil.

Additional resources: SetColor, SetVector, SetFloat, SetMatrix, RenderTextureSubElement.
