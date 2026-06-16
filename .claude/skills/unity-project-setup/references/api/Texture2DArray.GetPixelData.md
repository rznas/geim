<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Texture2DArray.GetPixelData.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| mipLevel | The mipmap level to read from. The range is `0` through the texture's Texture.mipmapCount. The default value is `0`. |
| element | The array slice to read from. |

### Returns

**NativeArray<T>** A native array that points directly to the texture's data buffer in CPU memory.

### Description

Gets the raw data from a texture.

This method returns a NativeArray<T0> that points directly to the texture's data on the CPU and has the size of the mipmap level. The array doesn't contain a copy of the data, so `GetPixelData` doesn't allocate any memory.

For example, if the texture is 16 × 16 pixels and RGBA32 format, and you set `mipLevel` to `1`, the method returns an array with 64 elements (8 × 8 pixels) and a size of 256 bytes if you use Color32 for `T` (4 bytes per pixel). You can use the experimental GraphicsFormatUtility.ComputeMipmapSize API to calculate the size of a mipmap level.

You usually use a struct for `T` that matches the structure of a pixel in the texture, for example Color32 if the texture format uses RGBA pixels in 32-bit format, such as TextureFormat.RGBA32.

You can read from and write to the returned array to get and change the data directly in CPU memory. If you write to the array, you must then call the Apply method to upload the texture to the GPU.

Use the returned array immediately. If you store the array and use it later, it might not point to the correct memory location if the texture has been modified or updated.

If you use a small type for `T` such as `byte`, `GetPixelData` may fail because the `NativeArray` would exceed the maximum length (`Int32.MaxValue`). To avoid this, use a larger type or struct.

`GetPixelData` throws an exception when it fails.

Additional resources: Apply, SetPixels, SetPixels32, GetPixelData.

```csharp
using UnityEngine;public class ExampleScript : MonoBehaviour
{
    public void Start()
    {
        // Create a texture array
        var m_Texture2DArray = new Texture2DArray(16, 16, 3, TextureFormat.RGBA32, true);        // Use GetPixelData to get an array that points to mipmap level 1, in slice 1
        var mip1Element1 = m_Texture2DArray.GetPixelData<Color32>(1, 1);        // Fill pixels in mipmap level 1 with white
        for (int i = 0; i < mip1Element1.Length; i++)
        {
            mip1Element1[i] = new Color32(255, 255, 255, 255);
        }        // Copy the texture changes to the GPU
        m_Texture2DArray.Apply(false);
    }
}
```
