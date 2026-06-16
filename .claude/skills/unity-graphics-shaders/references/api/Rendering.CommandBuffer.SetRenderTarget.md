<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Rendering.CommandBuffer.SetRenderTarget.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| rt | Render target to set for both color & depth buffers. |
| color | Render target to set as a color buffer. |
| colors | Render targets to set as color buffers (MRT). |
| depth | Render target to set as a depth buffer. |
| mipLevel | The mip level of the render target to render into. |
| cubemapFace | The cubemap face of a cubemap render target to render into. |
| depthSlice | Slice of a 3D or array render target to set. |
| loadAction | Load action that is used for color and depth/stencil buffers. |
| storeAction | Store action that is used for color and depth/stencil buffers. |
| colorLoadAction | Load action that is used for the color buffer. |
| colorStoreAction | Store action that is used for the color buffer. |
| depthLoadAction | Load action that is used for the depth/stencil buffer. |
| depthStoreAction | Store action that is used for the depth/stencil buffer. |

### Description

Add a "set active render target" command.

Render texture to use can be indicated in several ways: a RenderTexture object, a temporary render texture created with GetTemporaryRT, or one of built-in temporary textures (BuiltinRenderTextureType). All that is expressed by a RenderTargetIdentifier struct, which has implicit conversion operators to save on typing.

You do not explicitly need to preserve active render targets during command buffer execution (current render targets are saved & restored afterwards).

Variations of this method are available which take extra arguments such as mipLevel (int) and cubemapFace to enable rendering into a specific mipmap level of a RenderTexture, or specific cubemap face of a cubemap RenderTexture. Overloads setting a single RenderTarget and without explicit mipLevel, cubemapFace and depthSlice respect the mipLevel, cubemapFace and depthSlice values that were specified when creating the RenderTargetIdentifier. Overloads setting multiple render targets will set mipLevel, cubemapFace, and depthSlice to 0, Unknown, and 0 unless otherwise specified. If specified, it will use the specified mipLevel, cubemapFace, and depthSlice for all targets.

Note that in Linear color space, it is important to have the correct sRGB<->Linear color conversion state set. Depending on what was rendered previously, the current state might not be the one you expect. You should consider setting GL.sRGBWrite as you need it before doing SetRenderTarget or any other manual rendering.

Rendering.RenderTargetIdentifier.Clear is currently not supported. A subsequent call to ClearRenderTarget has the same effect and is optimized on graphics APIs that support `clear` load actions.

Additional resources: GetTemporaryRT, ClearRenderTarget, Blit, RenderTargetIdentifier.
