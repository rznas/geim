<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Texture3D-ctor.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| width | Width of texture in pixels. |
| height | Height of texture in pixels. |
| depth | Depth of texture in pixels. |
| textureFormat | Texture data format. |
| mipChain | Determines whether the texture has mipmaps or not. A value of 1 (true) means the texture does have mipmaps, and a value of 0 (false) means the texture doesn't have mipmaps. |
| nativeTex | External native texture pointer to use. Defaults to generating its own internal native texture. |
| mipCount | Amount of mipmaps to allocate for the texture. |
| createUninitialized | Use this flag to create the texture with uninitialized data. When overriding all texels anyway, this can lead to improved performance and reduced memory usage. |

### Description

Create a new empty 3D Texture.

3D textures can be thought of as a box of pixels, with width, height and depth. Note that large textures can consume a lot of memory, for example a 1024x512x256 texture with TextureFormat.ARGB32 format and no mipmaps will consume 512MB of memory.

Note that this class does not support Texture3D creation with a Crunch compression TextureFormat.

Enable `createUninitialized` to make the texture reference uninitialized data (both on the CPU and GPU). When overriding all texels, this can lead to improved performance and reduced memory usage during construction. Note that sampling an uninitialized texture gives unpredictable values.

Additional resources: SetPixel, SetPixels, SetPixels32, Apply functions.
