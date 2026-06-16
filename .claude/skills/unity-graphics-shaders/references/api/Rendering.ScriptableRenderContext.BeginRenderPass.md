<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Rendering.ScriptableRenderContext.BeginRenderPass.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| width | The width of the render pass surfaces in pixels. |
| height | The height of the render pass surfaces in pixels. |
| volumeDepth | The number of slices of the render pass surfaces. The default value is 1. |
| samples | MSAA sample count; set to 1 to disable antialiasing. |
| attachments | Array of color attachments to use within this render pass. The values in the array are copied immediately. |
| depthAttachmentIndex | The index of the attachment to be used as the depth/stencil buffer for this render pass, or -1 to disable depth/stencil. |
| shadingRateImageAttachmentIndex | The index of the attachment to be used as the ShadingRateImage for this render pass, or -1 to disable variable rate shading. |

### Description

Schedules the beginning of a new render pass. Only one render pass can be active at any time.

A render pass provides a new way to switch rendertargets in the context of a Scriptable Rendering Pipeline. As opposed to the SetRenderTargets function, the render pass specifies a clear beginning and an end for the rendering, alongside explicit load/store actions on the rendering surfaces.

The render pass also allows running multiple subpasses within the same renderpass, where the pixel shaders have a read access to the current pixel value within the renderpass. This allows for efficient implementation of various rendering methods on tile-based GPUs, such as deferred rendering.

Render passes are natively implemented on Metal (iOS) and Vulkan, but the API is fully functional on all rendering backends via emulation (using legacy SetRenderTargets calls and reading the current pixel values via texel fetches).

The render pass mechanism has the following limitations:
 - All attachments (except shading rate image attachments) must have the same resolution and MSAA sample count
 - The rendering results of previous subpasses are only available within the same screen-space pixel
 coordinate via the UNITY_READ_FRAMEBUFFER_INPUT(x) macro in the shader; the attachments cannot be bound as textures or otherwise accessed until the renderpass has ended
 - iOS Metal does not allow reading from the Z-Buffer, so an additional render target is needed to work around that
 - The maximum amount of attachments allowed per render pass is currently 8 + depth, but note that various GPUs may have stricter limits.


Additional resources: BeginSubPass, EndRenderPass, BeginScopedRenderPass, BeginScopedSubPass, SystemInfo.supportsMultisampledShaderResolve.

A quick example on how to use the render pass API within the Scriptable Render Pipeline to implement deferred rendering:

```csharp
using UnityEngine;
using UnityEngine.Rendering;
using Unity.Collections;public static class DeferredRenderer
{
    public static void ExecuteRenderLoop(Camera camera, CullingResults cullResults, ScriptableRenderContext context)
    {
        // Create the attachment descriptors. If these attachments are not specifically bound to any RenderTexture using the ConfigureTarget calls,
        // these are treated as temporary surfaces that are discarded at the end of the renderpass
        var albedo = new AttachmentDescriptor(RenderTextureFormat.ARGB32);
        var specRough = new AttachmentDescriptor(RenderTextureFormat.ARGB32);
        var normal = new AttachmentDescriptor(RenderTextureFormat.ARGB2101010);
        var emission = new AttachmentDescriptor(RenderTextureFormat.ARGBHalf);
        var depth = new AttachmentDescriptor(RenderTextureFormat.Depth);        // At the beginning of the render pass, clear the emission buffer to all black, and the depth buffer to 1.0f
        emission.ConfigureClear(new Color(0.0f, 0.0f, 0.0f, 0.0f), 1.0f, 0);
        depth.ConfigureClear(new Color(), 1.0f, 0);        // Bind the albedo surface to the current camera target, so the final pass will render the Scene to the screen backbuffer
        // The second argument specifies whether the existing contents of the surface need to be loaded as the initial values;
        // in our case we do not need that because we'll be clearing the attachment anyway. This saves a lot of memory
        // bandwidth on tiled GPUs.
        // The third argument specifies whether the rendering results need to be written out to memory at the end of
        // the renderpass. We need this as we'll be generating the final image there.
        // We could do this in the constructor already, but the camera target may change on the fly, esp. in the editor
        albedo.ConfigureTarget(BuiltinRenderTextureType.CameraTarget, false, true);        // All other attachments are transient surfaces that are not stored anywhere. If the renderer allows,
        // those surfaces do not even have a memory allocated for the pixel values, saving RAM usage.        // Start the renderpass using the given scriptable rendercontext, resolution, samplecount, array of attachments that will be used within the renderpass and the depth surface
        var attachments = new NativeArray<AttachmentDescriptor>(5, Allocator.Temp);
        const int depthIndex = 0, albedoIndex = 1, specRoughIndex = 2, normalIndex = 3, emissionIndex = 4;
        attachments[depthIndex] = depth;
        attachments[albedoIndex] = albedo;
        attachments[specRoughIndex] = specRough;
        attachments[normalIndex] = normal;
        attachments[emissionIndex] = emission;
        context.BeginRenderPass(camera.pixelWidth, camera.pixelHeight, 1, 1, attachments, depthIndex);
        attachments.Dispose();        // Start the first subpass, GBuffer creation: render to albedo, specRough, normal and emission, no need to read any input attachments
        var gbufferColors = new NativeArray<int>(4, Allocator.Temp);
        gbufferColors[0] = albedoIndex;
        gbufferColors[1] = specRoughIndex;
        gbufferColors[2] = normalIndex;
        gbufferColors[3] = emissionIndex;
        context.BeginSubPass(gbufferColors);
        gbufferColors.Dispose();        // Render the deferred G-Buffer
        // RenderGBuffer(cullResults, camera, context);        context.EndSubPass();        // Second subpass, lighting: Render to the emission buffer, read from albedo, specRough, normal and depth.
        // The last parameter indicates whether the depth buffer can be bound as read-only.
        // Note that some renderers (notably iOS Metal) won't allow reading from the depth buffer while it's bound as Z-buffer,
        // so those renderers should write the Z into an additional FP32 render target manually in the pixel shader and read from it instead
        var lightingColors = new NativeArray<int>(1, Allocator.Temp);
        lightingColors[0] = emissionIndex;
        var lightingInputs = new NativeArray<int>(4, Allocator.Temp);
        lightingInputs[0] = albedoIndex;
        lightingInputs[1] = specRoughIndex;
        lightingInputs[2] = normalIndex;
        lightingInputs[3] = depthIndex;
        context.BeginSubPass(lightingColors, lightingInputs, true);
        lightingColors.Dispose();
        lightingInputs.Dispose();        // PushGlobalShadowParams(context);
        // RenderLighting(camera, cullResults, context);        context.EndSubPass();        // Third subpass, tonemapping: Render to albedo (which is bound to the camera target), read from emission.
        var tonemappingColors = new NativeArray<int>(1, Allocator.Temp);
        tonemappingColors[0] = albedoIndex;
        var tonemappingInputs = new NativeArray<int>(1, Allocator.Temp);
        tonemappingInputs[0] = emissionIndex;
        context.BeginSubPass(tonemappingColors, tonemappingInputs, true);
        tonemappingColors.Dispose();
        tonemappingInputs.Dispose();        // present frame buffer.
        // FinalPass(context);        context.EndSubPass();        context.EndRenderPass();
    }
}
```
