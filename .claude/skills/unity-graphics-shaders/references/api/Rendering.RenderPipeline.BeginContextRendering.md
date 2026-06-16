<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Rendering.RenderPipeline.BeginContextRendering.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| context | Context to use for rendering the cameras. |
| cameras | List of cameras currently being rendered. |

### Description

Calls the RenderPipelineManager.beginContextRendering and RenderPipelineManager.beginFrameRendering delegates.

Use the delegates that this method calls to implement functionality at the start of RenderPipeline.Render.

In the Universal Render Pipeline (URP) and the High Definition Render Pipeline (HDRP), Unity calls this method automatically at the start of RenderPipeline.Render. If you are writing a custom Scriptable Render Pipeline, you can call this method yourself in the same place. This functionality is not compatible with the Built-in Render Pipeline.

The delegates that this method calls work in the same way as one another, except that RenderPipelineManager.beginFrameRendering causes heap allocations and RenderPipelineManager.beginContextRendering does not. You should therefore use RenderPipelineManager.beginContextRendering to avoid unnecessary heap allocations and garbage collection.

This method replaces RenderPipeline.BeginFrameRendering. It does everything that method does, and in addition it calls the RenderPipelineManager.beginContextRendering delegate. If you are writing a custom Scriptable Render Pipeline, use this method instead of RenderPipeline.BeginFrameRendering.

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
        // Call the RenderPipelineManager.beginContextRendering and RenderPipelineManager.beginFrameRendering delegates
        BeginContextRendering(context, cameras);        // Put the rest of your Render method code here
    }    // Older version of the Render function that can generate garbage, needed for backwards compatibility
    override protected void Render(ScriptableRenderContext context, Camera[] cameras)
    {
    }
}
```

Additional resources: RenderPipelineManager.beginContextRendering, RenderPipelineManager.beginFrameRendering, RenderPipeline.EndContextRendering, Unity Manual: Scriptable Render Pipeline.
