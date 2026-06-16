<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Cubemap-ctor.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| format | Pixel data format to be used for the Cubemap. |
| width | Width/height of a cube face in pixels. |
| textureFormat | Pixel data format to be used for the Cubemap. |
| mipChain | Should mipmaps be created? |
| createUninitialized | Use this flag to create the texture with uninitialized data. When overriding all texels anyway, this can lead to improved performance and reduced memory usage. |
| mipCount | Number of mipmaps to be created. Use TextureCreationFlags.MipChain to generate a full mipchain. |

### Description

Create a new empty cubemap texture.

The texture will be `size` on each side and can be created with or without mipmaps.

Enable `createUninitialized` to make the texture reference uninitialized data (both on the CPU and GPU). When overriding all texels, this can lead to improved performance and reduced memory usage during construction. Note that sampling an uninitialized texture gives unpredictable values.

Usually you will want to set the colors of the texture after creating it, using SetPixel and Apply functions.

Note that this class does not support Cubemap creation from a script with a Crunch compression TextureFormat.

```csharp
using UnityEngine;public class Example : MonoBehaviour
{
    public Cubemap texture;    void Start()
    {
        // Create a new Cubemap texture.
        texture = new Cubemap(128, TextureFormat.RGBA32, false);
    }
}
```

Additional resources: SetPixel, Apply functions.
