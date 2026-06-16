<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Texture2D.Compress.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Compress texture at runtime to DXT/BCn or ETC formats.

Use this to compress textures at runtime. Compressed textures use less graphics memory and are faster to render. For more information on texture compression, see Texture compression.

The format that Unity compresses the texture to depends on the platform, and the properties of the texture.

 texture will be in TextureFormat.DXT1 (BC1) format if the original texture had no alpha channel, and in TextureFormat.DXT5 (BC3) format if it had alpha channel. If the original texture was TextureFormat.R8, the compressed format will be TextureFormat.BC4. If the original texture was TextureFormat.RG16, the compressed format will be TextureFormat.BC5.

On Android, iOS and tvOS, this will compress the texture to the ETC/EAC family of formats.

Passing `true` for `highQuality` parameter will dither the source texture during compression, which helps to reduce compression artifacts but is slightly slower. This parameter is ignored for ETC compression.

If the graphics card does not support compression or the texture is already in compressed format, then Compress does nothing.

In the Editor scripts, you probably want to use EditorUtility.CompressTexture, which compresses using slower, but higher quality compression. It can also compress into other compressed formats.

You can also load already precompressed data into a texture using LoadRawTextureData function.

Additional resources: SetPixels, EditorUtility.CompressTexture, LoadRawTextureData.
