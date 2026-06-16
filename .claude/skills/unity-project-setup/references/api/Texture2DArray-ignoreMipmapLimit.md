<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Texture2DArray-ignoreMipmapLimit.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

This property causes a texture to ignore all texture mipmap limit settings.

When this property is `true`, Unity always uploads the texture to the GPU at full resolution, disregarding the active quality setting's global texture mipmap limit and texture mipmap limit group settings, even if this texture has a texture mipmap limit group set.

When this property is `false`, the texture respects the active quality setting's global texture mipmap limit, unless the texture is part of a mipmapLimitGroup.

When changing this property at runtime: if this causes the actual mipmap limit for this texture to change, then the texture will be reuploaded to the GPU. For an optimal workflow, set this property in the constructor or in the texture importer to immediately upload the texture with the currently active mipmap limits properly applied or ignored. If the texture has no mipmaps, this property has no effect. Note that this can only be toggled at runtime if the Texture is readable. By default, this property is set to `true` when created in a script, which means all mipmap levels are uploaded.

Additional resources: TextureImporter.ignoreMipmapLimit, MipmapLimitDescriptor, QualitySettings.globalTextureMipmapLimit.
