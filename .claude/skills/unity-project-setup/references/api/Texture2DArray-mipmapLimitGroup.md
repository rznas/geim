<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Texture2DArray-mipmapLimitGroup.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

The name of the texture mipmap limit group that this texture is associated with. (Read Only)

If this texture has a mipmap limit group assignment, this texture respects the TextureMipmapLimitSettings of that group. If this texture does not have a group assignment, or the indicated group does not exist, this texture takes the QualitySettings.globalTextureMipmapLimit instead. If you construct or import this texture, assign it to a mipmap limit group that does not yet exist, then create that mipmap limit group, this texture respects the TextureMipmapLimitSettings of that new group.

Set this property in the constructor or in the texture importer, because you cannot set this property after creating the texture. If the texture has no mipmaps, this property has no effect.

Additional resources: TextureMipmapLimitGroups, TextureImporter.mipmapLimitGroupName.
