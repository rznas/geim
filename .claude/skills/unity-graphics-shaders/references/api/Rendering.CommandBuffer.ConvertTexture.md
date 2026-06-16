<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Rendering.CommandBuffer.ConvertTexture.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| src | The source texture. The texture must be a Texture2D or Cubemap. |
| dst | The destination texture. The texture must be a Texture2D, Texture2DArray, Cubemap, or CubemapArray. The texture must also be uncompressed and correspond to a supported RenderTextureFormat. |
| srcElement | The element in the source texture to copy from. Use CubemapFace if `src` is a Cubemap. Set the value to `0` if `src` is a 2D texture. |
| dstElement | The element in the source texture to copy to. For example, the CubemapFace in a Cubemap or the slice in a texture array. Set the value to `0` if `dst` is a 2D texture. |

### Description

Adds a command to copy the pixel data from one texture, convert the data into a different format, and copy it into another texture.

This method adds a command to convert and copy pixel data from one texture to another on the GPU.

When you use `ConvertTexture`, Unity does the following:

1. Creates a temporary RenderTexture that matches the size and format of the `dst` texture.
2. Uses Graphics.Blit to copy from the `src` texture to the temporary render texture, and converts to the format of `dst`.
3. Uses Graphics.CopyTexture to copy from the temporary render texture to the `dst` texture.

This means it might be faster to convert the texture before you load it into Unity. Or if you can create `dst` as a render texture, you can use CommandBuffer.Blit instead.

You can use textures with different sizes for `src` and `dst`.

`ConvertTexture` doesn't support the following conversions:

- Cubemap to Texture2D.
- Conversions that use RenderTextures - use CommandBuffer.Blit instead.

You can't use `ConvertTexture` if you use OpenGL with MacOS. Depending on your graphics API, you might not be able to do some types of conversions. For more information on compatibility, see SystemInfo.copyTextureSupport, CopyTextureSupport and CommandBuffer.CopyTexture.

To copy the converted texture from the GPU to the CPU, use Texture2D.RequestIntoNativeArray.

Additional resources: CopyTextureSupport.
