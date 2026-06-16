<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Rendering.CommandBuffer.BeginRenderPass.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| width | The width of the render pass surfaces in pixels. |
| height | The height of the render pass surfaces in pixels. |
| samples | MSAA sample count; set to 1 to disable antialiasing. |
| attachments | Array of color attachments to use within this render pass. The values in the array are copied immediately. |
| depthAttachmentIndex | The index of the attachment to be used as the depth/stencil buffer for this render pass, or -1 to disable depth/stencil. |
| shadingRateImageAttachmentIndex | The index of the attachment to be used as the ShadingRateImage for this render pass, or -1 to disable variable rate shading. |
| subPasses | Array containing information of each subpass. The values in the array are copied immediately. |

### Description

Begin a new native render pass.

The render pass allows multiple subpasses within the same renderpass, where the pixel shaders have a read access to the current pixel value within the renderpass. This allows for efficient implementation of various rendering methods on tile-based GPUs, such as deferred rendering.

Render passes are natively implemented on Metal (iOS) and Vulkan, but the API is fully functional on all rendering backends via emulation (using legacy SetRenderTargets calls and reading the current pixel values via texel fetches).

The render pass mechanism has the following limitations: - All attachments (except shading rate image attachments) must have the same resolution and MSAA sample count - The rendering results of previous subpasses are only available within the same screen-space pixel coordinate via the UNITY_READ_FRAMEBUFFER_INPUT(x) macro in the shader; the attachments cannot be bound as textures or otherwise accessed until the renderpass has ended - iOS Metal does not allow reading from the Z-Buffer, so an additional render target is needed to work around that - The maximum amount of attachments allowed per render pass is currently 8 + depth, but note that various GPUs may have stricter limits.

The first subpass is started implictly upon calling this function with following subpasses activating upon NextSubPass. After the last subpass has been scheduled, you need to close the render pass using EndRenderPass.

Only one render pass can be active at any time.

Additional resources: EndRenderPass, NextSubPass, SystemInfo.supportsMultisampledShaderResolve.
