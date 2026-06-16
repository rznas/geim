<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Texture2D.GetRawTextureData.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Returns

**NativeArray<T>** A native array that points directly to the texture's data buffer in CPU memory.

### Description

Gets the raw data from a texture, as an array that points to memory.

This version of the `GetRawTextureData` method returns a NativeArray<T0> that points directly to the texture's data on the CPU. The array doesn't contain a copy of the data, so `GetRawTextureData` doesn't allocate any memory. To return a copy, use the version that returns a `byte[]` array instead.

You can also use GetPixelData. You can use `GetPixelData` to get a mipmap level instead of the entire texture.

You usually use a struct for `T` that matches the structure of a pixel in the texture, for example Color32 if the texture format uses RGBA pixels in 32-bit format, such as TextureFormat.RGBA32.

The returned array contains the entire texture according to its width, height, data format and mipmapCount. For example, if the texture is 16 × 8 pixels and RGBA32 format with no mipmaps, the method returns an array with a size of 512 bytes (16 × 8 × 4 bytes), and contains 128 elements if you use Color32 for `T` (4 bytes per pixel). You can use the experimental GraphicsFormatUtility.ComputeMipmapSize API to calculate the size of a mipmap level.

The array starts with mipmap level 0.

You can read from and write to the returned array to get and change the data directly in CPU memory. If you write to the array, you must then call the Apply method to upload the texture to the GPU.

Use the returned array immediately. If you store the array and use it later, it might not point to the correct memory location if the texture has been modified or updated.

If you use a small type for `T` such as `byte`, `GetRawTextureData` may fail because the `NativeArray` would exceed the maximum length (`Int32.MaxValue`). To avoid this, use a larger type or struct.

`GetRawTextureData` throws an exception when it fails.

Additional resources: Apply, SetPixels, SetPixels32, LoadRawTextureData, GetPixelData.

```csharp
using UnityEngine;public class ExampleScript : MonoBehaviour
{
    void Start()
    {
        var texture = new Texture2D(128, 128, TextureFormat.RGBA32, false);
        GetComponent<Renderer>().material.mainTexture = texture;        // RGBA32 texture format data layout exactly matches Color32 struct
        var data = texture.GetRawTextureData<Color32>();        // fill texture data with a simple pattern
        Color32 orange = new Color32(255, 165, 0, 255);
        Color32 teal = new Color32(0, 128, 128, 255);
        int index = 0;
        for (int y = 0; y < texture.height; y++)
        {
            for (int x = 0; x < texture.width; x++)
            {
                data[index++] = ((x & y) == 0 ? orange : teal);
            }
        }
        // upload to the GPU
        texture.Apply();
    }
}
```

### Returns

**byte[]** A byte array that contains raw texture data.

### Description

Gets the raw data from a texture, as a copy.

This version of the `GetRawTextureData` method returns a copy of the raw texture data on the CPU. Texture.isReadable must be `true`.

If you don't need a copy or if you want to modify the data directly, use the version of this function that returns a `NativeArray`, or Texture2D.GetPixelData.

You can use the returned array with LoadRawTextureData. This allows you to serialize and load a textures of any format, including compressed textures, and load the data into a texture later.

The CPU texture might not match the GPU texture if you used a method such as Graphics.CopyTexture that only updates GPU textures, so the CPU texture is out of sync.

The maximum size of the returned array is 2 gigabytes, because C# arrays have a maximum of 2 billion elements. If you need more than 2 gigabytes of data, use the version of this function that returns a `NativeArray`, and use Color32 for `T` or a struct that matches the format of the texture.

`GetRawTextureData` throws an exception when it fails.

```csharp
using UnityEngine;class CopyTexture : MonoBehaviour
{
    // the source texture.
    Texture2D tex;    void Start()
    {
        // Create a copy of the texture by reading and applying the raw texture data.
        Texture2D texCopy = new Texture2D(tex.width, tex.height, tex.format, tex.mipmapCount > 1);
        texCopy.LoadRawTextureData(tex.GetRawTextureData());
        texCopy.Apply();
    }
}
```
