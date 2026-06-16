<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Texture2D.Resize.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Resizes the texture.

Obsolete: Use Texture2D.Reinitialize instead.

Changes size of texture to `width` by `height`, format to `textureFormat` and optionally creates mipmaps. After resizing, texture pixels will be undefined. This function is very similar to the texture constructor, except it works on existing texture object.

Call Apply to actually upload the changed pixels to the graphics card.

Texture.isReadable must be `true`.

Note that Resize does not automatically update the special texture properties {TextureName}`_TexelSize` and {TextureName}`_HDR` that are set automatically on shaders and materials that use the texture. After using Resize, you should update these properties manually on your material/shader if you need them.

### Description

Resizes the texture.

Changes size of texture to `width` by `height`. After resizing, texture pixels will be undefined. This function is very similar to texture constructor, except it works on existing texture object.

Call Apply to actually upload the changed pixels to the graphics card.

Texture.isReadable must be `true`.

Note that Resize does not automatically update the special texture properties {TextureName}`_TexelSize` and {TextureName}`_HDR` that are set automatically on shaders and materials that use the texture. After using Resize, you should update these properties manually on your material/shader if you need them.
