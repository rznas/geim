<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/PlayerSettings-mipStripping.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Enable mip stripping for all platforms.

If you enable this setting, Unity strips unused mips at build time. 

When Unity builds your game or application, it can strip unused mips from textures in your Project. Stripping unused mips can make the resulting executable smaller. The top mip for any mip chain contributes 75% of the size on disk, so mip stripping can save disk space and improve download times. 

If you enable Mip Stripping, Unity examines the Quality Settings for the current platform at build time. If a mip level is excluded from every Quality Setting for the current platform, Unity strips those mips from the build. 

Mip Stripping depends on the QualitySettings.globalTextureMipmapLimit and TextureMipmapLimitGroups setup, and it will only affect textures that are also affected by mipmap limits.

For example, for any platform in a project, if you do the following:

- Set **Global Mipmap Limit** (QualitySettings.globalTextureMipmapLimit) to **Half Resolution** (1) or lower resolution for every Quality level on that platform
- Enable **Texture Mipmap Stripping**

then every readonly Texture2D in the project will be built without mips higher than the Global Mipmap Limit level. If QualitySettings.globalTextureMipmapLimit is set to Full Resolution (0) for any quality level, the Mip Stripping setting won't do anything. 

At run time, if you use QualitySettings.globalTextureMipmapLimit or QualitySettings.SetTextureMipmapLimitSettings to set a mip level that has been stripped, Unity sets the value to the closest mip level that has not been stripped.

However, you need to be aware of the following:

- Texture Mip Stripping is not compatible with crunch compressed textures, due to the non-constant compression ratio of this compression format.
- Use caution if you use functionality such as the mipmap streaming API, Texture.width or Texture.mipmapCount as they do not reflect the texture's original state once mips have been stripped. For example, for a 1024x1024 texture, a Texture2D.desiredMipmapLevel value of 0 in the Editor refers to a 1024x1024 mip. If we stripped 2 mips at build time from that same texture, a Texture2D.desiredMipmaplevel value of 0 refers to a 256x256 mip in the Player.

For information on how to get Unity to ignore the Mipmap limit for a particular texture, refer to TextureImporter.ignoreMipmapLimit.
