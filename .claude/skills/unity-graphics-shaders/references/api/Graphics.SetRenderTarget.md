<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Graphics.SetRenderTarget.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| rt | RenderTexture or GraphicsTexture to set as active render target. |
| mipLevel | Mipmap level to render into (use 0 if not mipmapped). |
| face | Cubemap face to render into (use Unknown if not a cubemap). |
| depthSlice | Depth slice to render into (use 0 if not a 3D or 2DArray render target). |
| colorBuffer | Color buffer to render into. |
| depthBuffer | Depth buffer to render into. |
| colorBuffers | Color buffers to render into (for multiple render target effects). |
| setup | Full render target setup information. |

### Description

Sets current render target.

This function sets which RenderTexture, GraphicsTexture, or a RenderBuffer combination will be rendered into next. Use it when implementing custom rendering algorithms, where you need to render something into a render target texture manually.

Variants with mipLevel and face arguments enable rendering into a specific mipmap level of a texture, or specific cubemap face of a cubemap RenderTexture/GraphicsTexture. Variants with depthSlice allow rendering into a specific slice of a 3D or 2DArray render texture.

The function call with colorBuffers array enables techniques that use Multiple Render Targets (MRT), where fragment shader can output more than one final color.

Calling SetRenderTarget with just a RenderTexture or GraphicsTexture argument is the same as setting the RenderTexture.active and GraphicsTexture.active property. To set a GraphicsTexture as the render target, it must have GraphicsTextureDescFlags.RenderTarget enabled in GraphicsTexture.descriptor.flags.

Note that in Linear color space, it is important to have the correct sRGB<->Linear color conversion state set. Depending on what was rendered previously, the current state might not be the one you expect. You should consider setting GL.sRGBWrite as you need it before doing SetRenderTarget or any other manual rendering.

Additional resources: RenderTexture, GraphicsTexture, Graphics.activeColorBuffer, Graphics.activeDepthBuffer, SystemInfo.supportedRenderTargetCount.
