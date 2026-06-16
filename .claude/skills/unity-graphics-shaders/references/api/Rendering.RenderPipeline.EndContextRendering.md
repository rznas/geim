<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Rendering.RenderPipeline.EndContextRendering.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| context | Context to use for rendering the cameras. |
| cameras | List of cameras currently being rendered. |

### Description

Calls the RenderPipelineManager.endContextRendering and RenderPipelineManager.endFrameRendering delegates.

Use the delegates that this method calls to implement functionality at the end of RenderPipeline.Render.

In the Universal Render Pipeline (URP) and the High Definition Render Pipeline (HDRP), Unity calls this method automatically at the end of RenderPipeline.Render. If you are writing a custom Scriptable Render Pipeline, you can call this method yourself in the same place. This functionality is not compatible with the Built-in Render Pipeline.

The delegates that this method calls work in the same way as one another, except that RenderPipelineManager.endFrameRendering causes heap allocations and RenderPipelineManager.endContextRendering does not. You should therefore use RenderPipelineManager.endContextRendering to avoid unnecessary heap allocations and garbage collection.

This method replaces RenderPipeline.EndFrameRendering. It does everything that method does, and in addition it calls the RenderPipelineManager.endContextRendering delegate. If you are writing a custom Scriptable Render Pipeline, use this method instead of RenderPipeline.EndFrameRendering.

The following code example demonstrates where to call this method if you are creating a custom Scriptable Render Pipeline:

```csharp
using UnityEngine;
using UnityEngine.Rendering;
using System.Collections.Generic;public class ExampleRenderPipelineInstance : RenderPipeline
{
    public ExampleRenderPipelineInstance()
    {
    }    override protected void Render(ScriptableRenderContext context, List<Camera> cameras)
    {
        // Put the rest of your Render method code here        // Call the RenderPipelineManager.endContextRendering and RenderPipelineManager.endFrameRendering delegates
        EndContextRendering(context, cameras);
    }    // Older version of the Render function that can generate garbage, needed for backwards compatibility
    override protected void Render(ScriptableRenderContext context, Camera[] cameras)
    {
    }
}
```

Additional resources: RenderPipelineManager.endContextRendering, RenderPipelineManager.endFrameRendering, RenderPipeline.BeginContextRendering, RenderPipelineManager.beginContextRendering, RenderPipelineManager.beginFrameRendering, Unity Manual: Scriptable Render Pipeline.
