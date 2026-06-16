<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Rendering.ScriptableCullingParameters-cullingOptions.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Flags to configure a culling operation in the Scriptable Render Pipeline.

Unity sets some of the CullingOptions flags with default values, and others depending on the properties of the Camera from which you obtained the ScriptableCullingParameters struct. You can override these values before performing the culling operation.

The following example demonstrates how to retrieve a ScriptableCullingParameters object from a Camera, disable occlusion culling on the ScriptableCullingParameters object by unsetting the CullingOptions.OcclusionCull flag, and then use the ScriptableCullingParameters object in a culling operation.

```csharp
using UnityEngine;
using UnityEngine.Rendering;public class ExampleRenderPipelineInstance : RenderPipeline
{
    public ExampleRenderPipelineInstance()
    {
    }    protected override void Render(ScriptableRenderContext context, Camera[] cameras)
    {
        // Get the culling parameters from the desired Camera
        if (cameras[0].TryGetCullingParameters(out var cullingParameters))
        {
            // Disable occlusion culling
            cullingParameters.cullingOptions &= ~CullingOptions.OcclusionCull;            // Schedule the cull operation
            CullingResults cullingResults = context.Cull(ref cullingParameters);            // Place code that schedules drawing operations using the CullingResults struct here
            // See ScriptableRenderContext.DrawRenderers for details and examples
            // …            // Execute all of the scheduled operations, in order
            context.Submit();
        }
    }
}
```

Additional resources: ScriptableRenderContext.Cull, Camera.
