<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Rendering.VirtualTexturing.Streaming.EnableMipPreloading.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| texturesPerFrame | Number of textures per frame to process. The range is `0` through `1024`. The default is `0`. A number of `0` disables preloading. The higher this number, the more CPU resource will be used on the render thread. |
| mipCount | The number of mipmap levels to preload. The range is `1` through `9`. The default is `1`, which preloads only the highest mipmap level with the smallest size of 128 by 128 pixels. This is the size of the Streaming Virtual Texturing tile. |

### Description

Enables mipmap level preloading used by Streaming Virtual Texturing.

Use this method to avoid texture pop-in by preloading the smallest-sized mipmap levels into GPU memory. If there are many more virtual textures in materials and `texturesPerFrame` is too low, you might still see black textures pop in. For more targeted texture preload requests, refer to Rendering.VirtualTexturing.Streaming.RequestRegion.html.
