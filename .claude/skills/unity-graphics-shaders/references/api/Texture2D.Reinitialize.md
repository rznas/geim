<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Texture2D.Reinitialize.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| width | The new width of the texture. |
| height | The new height of the texture. |
| format | The new format of the texture. |
| hasMipMap | Whether the texture reserves memory for a full mipmap chain. |

### Returns

**bool** `true` if the reinitialization was a success.

### Description

Reinitializes a Texture2D, making it possible for you to replace `width`, `height`, `textureformat`, and `graphicsformat` data for that texture.

This action also clears the pixel data associated with the texture from the CPU and GPU.

This function is very similar to the Texture constructor, except it works on a Texture object that already exists rather than creating a new one.

It is not possible to reinitialize **Crunched** textures, so if you pass a **Crunched** texture to this method, it returns `false`. See texture formats for more information about compressed and crunched textures.

Call Apply to upload the changed pixels to the graphics card.

Texture.isReadable must be `true`.

`Texture2D.Reinitialize` does not automatically update the special texture properties {TextureName}`_TexelSize` and {TextureName}`_HDR`, which Unity sets automatically on shaders and materials that use the texture. After using `Texture2D.Reinitialize`, you should update {TextureName}`_TexelSize` and {TextureName}`_HDR` on your material or shader if you need them.
