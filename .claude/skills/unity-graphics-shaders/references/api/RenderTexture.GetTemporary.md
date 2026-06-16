<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/RenderTexture.GetTemporary.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| width | Width in pixels. |
| height | Height in pixels. |
| depthBuffer | Depth buffer bits (0, 16 or 24). Note that only 24 bit depth has stencil buffer. |
| format | Render texture format. |
| readWrite | Color space conversion mode. |
| antiAliasing | Number of antialiasing samples to store in the texture. Valid values are 1, 2, 4, and 8. Throws an exception if any other value is passed. |
| memorylessMode | Render texture memoryless mode. |
| vrUsage | How Unity uses the RenderTexture as a VR eye texture. The default is VRTextureUsage.None. |
| useDynamicScale | Determines whether Unity scales the render texture using dynamic resolution. The default is `false`. |
| desc | Use this RenderTextureDesc for the settings when creating the temporary RenderTexture. |

### Description

Allocate a temporary render texture.

This function is optimized for when you need a quick RenderTexture to do some temporary calculations. Release it using ReleaseTemporary as soon as you're done with it, so another call can start reusing it if needed.

Internally Unity keeps a pool of temporary render textures, so a call to GetTemporary most often just returns an already created one (if the size and format matches). These temporary render textures are actually destroyed when they aren't used for a couple of frames.

If you are doing a series of post-processing "blits", it's best for performance to get and release a temporary render texture for each blit, instead of getting one or two render textures upfront and reusing them. This is mostly beneficial for mobile (tile-based) and multi-GPU systems: GetTemporary will internally do a DiscardContents call which helps to avoid costly restore operations on the previous render texture contents.

You can not depend on any particular contents of the RenderTexture you get from GetTemporary function. It might be garbage, or it might be cleared to some color, depending on the platform.

Additional resources: ReleaseTemporary.
