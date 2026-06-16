<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Texture2D-ctor.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| width | The width in pixels of the texture being created. Should be greater than 0. |
| height | The height in pixels of the texture being created. Should be greater than 0. |

### Description

Create a new empty texture.

The texture will be `width` by `height` size, with an RGBA32 TextureFormat, with mipmaps and in sRGB color space.

Usually you will want to set the colors of the texture after creating it, using SetPixel, SetPixels and Apply functions.

```csharp
// Create a new texture and assign it to the renderer's material
using UnityEngine;
using System.Collections;public class ExampleClass : MonoBehaviour
{
    void Start()
    {
        Texture2D texture = new Texture2D(128, 128);
        Renderer renderer = GetComponent<Renderer>();
        renderer.material.mainTexture = texture;
    }
}
```

Additional resources: SetPixel, SetPixels, Apply functions.

### Parameters

| Parameter | Description |
| --- | --- |
| width | The width in pixels of the texture being created. Should be greater than 0. |
| height | The height in pixels of the texture being created. Should be greater than 0. |
| textureFormat | The format of the texture being created. |
| mipChain | Whether you want to generate mipmaps for the texture being created. Mipmaps reduce texture aliasing, but do take up some extra GPU memory. |

### Description

Create a new empty texture.

The texture will be `width` by `height` size, with a given `format`, with mipmaps or without.

Usually you will want to set the colors of the texture after creating it, using SetPixel, SetPixels and Apply functions.

Additional resources: SetPixel, SetPixels, Apply functions.

### Parameters

| Parameter | Description |
| --- | --- |
| width | The width in pixels of the texture being created. Should be greater than 0. |
| height | The height in pixels of the texture being created. Should be greater than 0. |
| textureFormat | The format of the texture being created. |
| mipCount | The number of mipmaps for the texture being created. If this is less than or equal to zero, the number of mipmaps is automatically calculated based on the dimensions of the texture. If this is one, no mipmaps are generated for the texture. If this is greater than one, then this is the number of mipmaps generated. Mipmaps reduce texture aliasing but do take up some extra GPU memory. |
| linear | If true, the texture being created is in linear space. If false, it is in sRGB space. Linear space should be used for textures where you care about the raw values, i.e. where you won't apply gamma correction. These are textures like normal maps, roughness maps, displacement maps, etc. sRGB space should be used for textures that contain colors that are meant for human eyes. Examples include diffuse maps, and emissive maps. |
| mipChain | Whether you want to generate mipmaps for the texture being created. Mipmaps reduce texture aliasing, but do take up some extra GPU memory. |

### Description

Create a new empty texture.

The texture will be `width` by `height` size, with a given `format`, with mipmaps or without, and in either the linear color space or the sRGB color space.

Usually you will want to set the colors of the texture after creating it, using SetPixel, SetPixels and Apply functions.

Additional resources: SetPixel, SetPixels, Apply functions.

### Parameters

| Parameter | Description |
| --- | --- |
| width | The width in pixels of the texture being created. Should be greater than 0. |
| height | The height in pixels of the texture being created. Should be greater than 0. |
| textureFormat | The format of the texture being created. |
| mipCount | The number of mipmaps for the texture being created. If this is less than or equal to zero, the number of mipmaps is automatically calculated based on the dimensions of the texture. If this is one, no mipmaps are generated for the texture. If this is greater than one, then this is the number of mipmaps generated. Mipmaps reduce texture aliasing but do take up some extra GPU memory. |
| linear | If true, the texture being created is in linear space. If false, it is in sRGB space. Linear space should be used for textures where you care about the raw values, i.e. where you won't apply gamma correction. These are textures like normal maps, roughness maps, displacement maps, etc. sRGB space should be used for textures that contain colors meant for human eyes. Examples include diffuse maps and emissive maps. |
| createUninitialized | Enable `createUninitialized` to make the texture reference uninitialized data (both on the CPU and GPU). Initializing data comes at a small cost. If you're going to overwrite all texels without reading them first, you can set this to true, to potentially get improved performance and reduced memory usage during construction. Note that sampling an uninitialized texture gives unpredictable values. |
| mipChain | Whether you want to generate mipmaps for the texture being created. Mipmaps reduce texture aliasing, but do take up some extra GPU memory. |

### Description

Create a new empty texture.

The texture will be `width` by `height` size, with a given `format`, with mipmaps or without, and in either the linear color space or the sRGB color space.

Usually you will want to set the colors of the texture after creating it, using SetPixel, SetPixels and Apply functions.

Additional resources: SetPixel, SetPixels, Apply functions.

### Parameters

| Parameter | Description |
| --- | --- |
| width | The width in pixels of the texture being created. Should be greater than 0. |
| height | The height in pixels of the texture being created. Should be greater than 0. |
| textureFormat | The format of the texture being created. |
| mipCount | The number of mipmaps for the texture being created. If this is less than or equal to zero, the number of mipmaps is automatically calculated based on the dimensions of the texture. If this is one, no mipmaps are generated for the texture. If this is greater than one, then this is the number of mipmaps generated. Mipmaps reduce texture aliasing but do take up some extra GPU memory. |
| linear | If true, the texture being created is in linear space. If false, it is in sRGB space. Linear space should be used for textures where you care about the raw values, i.e. where you won't apply gamma correction. These are textures like normal maps, roughness maps, displacement maps, etc. sRGB space should be used for textures that contain colors meant for human eyes. Examples include diffuse maps and emissive maps. |
| createUninitialized | Enable `createUninitialized` to make the texture reference uninitialized data (both on the CPU and GPU). Initializing data comes at a small cost. If you're going to overwrite all texels without reading them first, you can set this to true, to potentially get improved performance and reduced memory usage during construction. Note that sampling an uninitialized texture gives unpredictable values. |
| mipmapLimitDescriptor | Use a MipmapLimitDescriptor to make the texture use the global mipmap limit from the current Quality Settings, or the mipmap limit of a TextureMipmapLimitGroup. Note that a readable CPU copy is required for the texture to re-upload when quality settings change. If the texture is made nonreadable (see Texture2D.Apply), the uploaded resolution will no longer adapt to the active quality level. |

### Description

Create a new empty texture.

The texture will be `width` by `height` size, with a given `format`, with mipmaps or without, and in either the linear color space or the sRGB color space.

 Usually you will want to set the colors of the texture after creating it, using SetPixel, SetPixels and Apply functions.

Additional resources: SetPixel, SetPixels, Apply functions.
