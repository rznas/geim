<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Rendering.CommandBuffer.GetTemporaryRTArray.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| nameID | Shader property name for this texture. |
| width | Width in pixels, or -1 for "camera pixel width". |
| height | Height in pixels, or -1 for "camera pixel height". |
| slices | Number of slices in texture array. |
| depthBuffer | Depth buffer bits (0, 16 or 24). |
| filter | Texture filtering mode (default is Point). |
| format | Format of the render texture (default is ARGB32). |
| readWrite | Color space conversion mode. |
| antiAliasing | Anti-aliasing (default is no anti-aliasing). |
| enableRandomWrite | Should random-write access into the texture be enabled (default is false). |
| useDynamicScale | Whether to enable DynamicResolution for the texture array. |

### Description

Add a "get a temporary render texture array" command.

This creates a temporary render texture array with given parameters, and sets it up as a global shader property with nameID. Use Shader.PropertyToID to create the integer name.

Release the temporary render texture array using ReleaseTemporaryRT, passing the same nameID. Any temporary textures that were not explicitly released will be removed after camera is done rendering, or after Graphics.ExecuteCommandBuffer is done.

After getting a temporary render texture array, you can set it as active (SetRenderTarget) or blit to/from it (Blit). You do not explicitly need to preserve active render targets during command buffer execution (current render targets are saved & restored afterwards).

Additional resources: ReleaseTemporaryRT, SetRenderTarget, Blit.
