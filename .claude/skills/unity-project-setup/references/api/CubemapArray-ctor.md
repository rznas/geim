<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/CubemapArray-ctor.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| cubemapCount | Number of elements in the cubemap array. |
| linear | Does the texture contain non-color data (i.e. don't do any color space conversions when sampling)? Default is false. |
| width | Width of each cubemap face. |
| textureFormat | Format of the cubemaps. |
| mipChain | Should mipmaps be generated ? |
| mipCount | Amount of mipmaps to generate. |
| createUninitialized | Use this flag to create the texture with uninitialized data. When overriding all texels anyway, this can lead to improved performance and reduced memory usage. |

### Description

Create a new cubemap array.

Enable `createUninitialized` to make the texture reference uninitialized data (both on the CPU and GPU). When overriding all texels, this can lead to improved performance and reduced memory usage during construction. Note that sampling an uninitialized texture gives unpredictable values.

Usually you will want to set the colors of the cubemaps after creating it. Use SetPixels, SetPixels32 or Graphics.CopyTexture functions for that.

Note that this class does not support CubemapArray creation with a Crunch compression TextureFormat.
