<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Texture2D.Apply.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| updateMipmaps | When the value is `true`, Unity recalculates mipmap levels, using mipmap level 0 as the source. The default value is `true`. |
| makeNoLongerReadable | When the value is `true`, Unity deletes the texture in CPU memory after it uploads it to the GPU, and sets isReadable to `false`. The default value is `false`. |

### Description

Copies changes you've made in a CPU texture to the GPU.

For most types of textures, Unity can store a copy of the texture in both CPU and GPU memory.

The CPU copy is optional. If the CPU copy exists, you can read from and write to the CPU copy more flexibly than the GPU copy, for example using GetPixels. But to render the updated texture, you must use `Apply` to copy it from the CPU to the GPU.

If you set `makeNoLongerReadable` to `true`, Unity deletes the CPU copy of the texture after it uploads it to the GPU. This means Unity can't reload the texture. Even if `Apply` is called on a texture asset with data stored on disk, Unity will no longer try to reload from disk if once it discards the CPU copy, since the readable texture data might have been altered. This is relevant when using mipmap limits in your project to reduce the amount of uploaded mips (see for instance QualitySettings.globalTextureMipmapLimit). Both runtime textures and readable texture assets will stop following the quality settings after discarding the CPU copy in `Apply`. The uploaded resolution of the textures remains fixed at what was uploaded to the GPU at the time Unity discards the CPU copy. If this is undesirable, make sure to have the texture uploaded at full resolution, either at import/construction time or by using Texture2D.ignoreMipmapLimit at runtime.

You usually only set `updateMipmaps` to `false` if you've already updated the mipmap levels, for example using SetPixels.

`Apply` is an expensive operation because it copies all the pixels in the texture even if you've only changed some of the pixels, so change as many pixels as possible before you call it.

```csharp
// Create a new texture and assign it to the renderer's material
using UnityEngine;
using System.Collections;public class ExampleClass : MonoBehaviour
{
    void Start()
    {
        Texture2D texture = new Texture2D(128, 128);
        GetComponent<Renderer>().material.mainTexture = texture;        for (int y = 0; y < texture.height; y++)
        {
            for (int x = 0; x < texture.width; x++)
            {
                Color color = ((x & y) != 0 ? Color.white : Color.gray);
                texture.SetPixel(x, y, color);
            }
        }
        texture.Apply();
    }
}
```

Additional resources: SetPixel, SetPixels functions, Graphics.CopyTexture.
