<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Texture3D.CopyPixels.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| src | The source texture. |
| srcElement | The element in the source texture to copy from. For example, the CubemapFace in a Cubemap or the slice in a texture array. Set the value to `0` if `src` is a 2D texture. |
| srcMip | The mipmap level to copy from. The range is `0` through the source texture's Texture.mipmapCount. The default value is `0`. |
| dstElement | The depth slice to copy to in this 3D texture. |
| dstMip | The mipmap level to write to. The range is `0` through this texture's Texture.mipmapCount. The default value is `0`. |
| srcX | The starting x coordinate of `src` to copy from. `0` is the left of the texture. |
| srcY | The starting y coordinate of `src` to copy from. `0` is the bottom of the texture. |
| srcWidth | The width of `src` to copy. |
| srcHeight | The height of `src` to copy. |
| dstX | The x coordinate of this texture to copy to. |
| dstY | The y coordinate to this texture to copy to. |

### Description

Copies pixel data from another texture on the CPU.

This method copies pixel data from a source texture to this one on the CPU. Texture.isReadable must be `true` for both the texture and `src`, and you must call Apply after `CopyPixels` to upload the changed pixels to the GPU.

Apply is an expensive operation because it copies all the pixels in the texture even if you've only changed some of the pixels, so change as many pixels as possible before you call it. If you only need to copy pixels on the GPU, Graphics.CopyTexture with GraphicsTexture parameters is faster to use instead.

To use `CopyPixels`, the size to be copied must be the same in both textures. Use the region-based overload to specify a smaller region than a full mipmap level.

Crunch compressed texture formats are not supported in the element-based overload. Compressed texture formats are not supported at all for for the region-based overload. Unity throws a `UnityException` if either texture is unreadable, and throws an `ArgumentException` if `CopyPixels` fails.

Additional resources: Apply, Graphics.CopyTexture, SetPixels.
