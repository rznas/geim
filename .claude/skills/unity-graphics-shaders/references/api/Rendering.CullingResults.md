<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Rendering.CullingResults.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

A struct containing the results of a culling operation.

In the Scriptable Render Pipeline, when Unity performs a culling operation, it stores the results in a `CullingResults` struct. This data includes information about visible objects, lights, and reflection probes. Unity uses this data to render objects and process lights. A `CullingResults` struct also provides several functions to aid shadow rendering.

To obtain a `CullingResults` struct, call ScriptableRenderContext.Cull.

A `CullingResults` struct is valid within the scope of a RenderPipeline.Render function; its data goes out of scope when the `Render` function returns. You can use the same `CullingResults` struct multiple times within the same render loop, and you can share a `CullingResults` struct between multiple Cameras if you know that they can see the same objects. This can save on wasted CPU operations, and therefore improve performance.

After Unity performs drawing operations with `CullingResults`, you can't invoke ScriptableRenderContext.Cull again or modify the renderer list. The renderer list must remain consistent throughout the rendering process to avoid unpredictable results or crashes. To ensure that the renderer list isn't accidentally modified, wrap your code between ScriptableRenderContext.PushDisableApiRenderers and ScriptableRenderContext.PopDisableApiRenderers.

This example demonstrates how to obtain a `CullingResults` struct, and then pass it to ScriptableRenderContext.DrawRenderers.

```csharp
using UnityEngine;
using UnityEngine.Rendering;public class ExampleRenderPipeline : RenderPipeline
{
    public ExampleRenderPipeline()
    {
    }    protected override void Render(ScriptableRenderContext context, Camera[] cameras)
    {
        foreach (Camera camera in cameras)
        {
            // Get the culling parameters from the current camera
            camera.TryGetCullingParameters(out var cullingParameters);            // Schedule the cull operation that populates the CullingResults struct
            CullingResults cullingResults = context.Cull(ref cullingParameters);            // Place code that schedules drawing operations using the CullingResults struct here
            // See ScriptableRenderContext.DrawRenderers for details and examples
            // …            // Execute all of the scheduled operations, in order
            context.Submit();
        }
    }
}
```

### Properties

| Property | Description |
| --- | --- |
| lightAndReflectionProbeIndexCount | Gets the number of per-object light and reflection probe indices. |
| lightIndexCount | Gets the number of per-object light indices. |
| reflectionProbeIndexCount | Gets the number of per-object reflection probe indices. |
| visibleLights | Array of visible lights. |
| visibleOffscreenVertexLights | Off-screen lights that still affect visible vertices. |
| visibleReflectionProbes | Array of visible reflection probes. |

### Public Methods

| Method | Description |
| --- | --- |
| ComputeDirectionalShadowMatricesAndCullingPrimitives | Calculates the view and projection matrices and shadow split data for a directional light. |
| ComputePointShadowMatricesAndCullingPrimitives | Calculates the view and projection matrices and shadow split data for a point light. |
| ComputeSpotShadowMatricesAndCullingPrimitives | Calculates the view and projection matrices and shadow split data for a spot light. |
| FillLightAndReflectionProbeIndices | Fills a buffer with per-object light indices. |
| GetLightIndexMap | If a RenderPipeline sorts or otherwise modifies the VisibleLight list, an index remap will be necessary to properly make use of per-object light lists. |
| GetReflectionProbeIndexMap | If a RenderPipeline sorts or otherwise modifies the VisibleReflectionProbe list, an index remap will be necessary to properly make use of per-object reflection probe lists. |
| GetShadowCasterBounds | Returns the bounding box that encapsulates the visible shadow casters. Can be used to, for instance, dynamically adjust cascade ranges. |
| SetLightIndexMap | If a RenderPipeline sorts or otherwise modifies the VisibleLight list, an index remap will be necessary to properly make use of per-object light lists. |
| SetReflectionProbeIndexMap | If a RenderPipeline sorts or otherwise modifies the VisibleReflectionProbe list, an index remap will be necessary to properly make use of per-object reflection probe lists. |
