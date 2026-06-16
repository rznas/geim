<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/TextureImporterSettings-ignoreMipmapLimit.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Enable this flag for textures that should ignore mipmap limit settings.

This has no effect if the textureShape is not `Texture2D` or `Texture2DArray`. Also, this has no effect on textures without mipmaps. For additional information, see Texture2D.ignoreMipmapLimit and Texture2DArray.ignoreMipmapLimit. By default, an imported texture asset has mipmap limits enabled, and uses the global mipmap limit. If you imported a Texture2DArray asset in Unity version 2023.1 or earlier, the asset will continue to ignore mipmap limits to ensure consistent behavior when upgrading.

Additional resources: Texture2D.ignoreMipmapLimit, Texture2DArray.ignoreMipmapLimit, mipmapEnabled.
