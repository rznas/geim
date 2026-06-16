<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Texture2DArray-ctor.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| width | Width of texture array in pixels. |
| height | Height of texture array in pixels. |
| depth | Number of elements in the texture array. |
| linear | Does the texture contain non-color data (i.e. don't do any color space conversions when sampling)? Default is false. |
| textureFormat | Format of the texture. |
| mipChain | Should mipmaps be created? |
| mipCount | Amount of mips to allocate for the texture array. |
| createUninitialized | Use this flag to create the texture with uninitialized data. When overriding all texels anyway, this can lead to improved performance and reduced memory usage. |
| mipmapLimitDescriptor | Determines whether the texture uses a mipmap limit, and which mipmap limit to use. See MipmapLimitDescriptor |

### Description

Create a new texture array.

Enable `createUninitialized` to make the texture reference uninitialized data (both on the CPU and GPU). When overriding all texels, this can lead to improved performance and reduced memory usage during construction. Note that sampling an uninitialized texture gives unpredictable values.

Usually you will want to set the colors of the texture after creating it. Use SetPixels, SetPixels32 or Graphics.CopyTexture functions for that.

Note that this class does not support Texture2DArray creation with a Crunch compression TextureFormat.

When you enable mipmap limits with a `mipmapLimitDescriptor`, a readable CPU copy is required for the texture to reupload when quality settings change. If the texture is made nonreadable (see Texture2DArray.Apply), the uploaded resolution will no longer adapt to the active quality level.
