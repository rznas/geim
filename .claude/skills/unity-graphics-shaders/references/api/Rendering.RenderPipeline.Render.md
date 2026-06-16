<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Rendering.RenderPipeline.Render.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| context | Context to use for rendering the cameras. |
| cameras | List of cameras to render. |

### Description

Entry point method that defines custom rendering for this RenderPipeline.

This method is the entry point to the Scriptable Render Pipeline (SRP). This functionality is not compatible with the Built-in Render Pipeline.

Unity calls this method automatically. In a standalone application, Unity calls this method once per frame to render the main view, and once per frame for each manual call to Camera.Render. In the Unity Editor, Unity calls this method once per frame for each Scene view or Game view that is visible, once per frame if if the Scene camera preview is visible, and once per frame for each manual call to Camera.Render.

If you are using the Universal Render Pipeline (URP) or the High Definition Render Pipeline (HDRP), you can use the RenderPipelineManager.beginContextRendering, RenderPipelineManager.beginCameraRendering, RenderPipelineManager.endCameraRendering and RenderPipelineManager.endContextRendering delegates to call your custom code at defined points during this method.

If you are writing a custom SRP, you can either add code directly to this method body, or call the delegates yourself using RenderPipeline.BeginContextRendering, RenderPipeline.BeginCameraRendering, RenderPipeline.EndCameraRendering and RenderPipeline.EndContextRendering.

The following example code shows how to implement this method in a custom SRP:

```csharp
using UnityEngine;
using UnityEngine.Rendering;
using System.Collections.Generic;public class ExampleRenderPipelineInstance : RenderPipeline
{
    public ExampleRenderPipelineInstance()
    {
    }    protected override void Render(ScriptableRenderContext context, List<Camera> cameras)
    {
        // This is where you can write custom rendering code. Customize this method to customize your SRP.
        // Create and schedule a command to clear the current render target
        var cmd = new CommandBuffer();
        cmd.ClearRenderTarget(true, true, Color.red);
        context.ExecuteCommandBuffer(cmd);
        cmd.Release();        // Tell the ScriptableRenderContext to tell the graphics API to perform the scheduled commands
        context.Submit();
    }    // Older version of the Render function that can generate garbage, needed for backwards compatibility
    protected override void Render(ScriptableRenderContext context, Camera[] cameras)
    {
    }
}
```

Additional resources: Unity Manual: Scriptable Render Pipeline, RenderPipelineManager.beginContextRendering, RenderPipelineManager.beginCameraRendering, RenderPipelineManager.endContextRendering, RenderPipelineManager.endFrameRendering.

### Description

Entry point method that defines custom rendering for this RenderPipeline.

The functionality for this signature is exactly the same as for the version that uses a List of Cameras, except that this version can cause heap allocations due to array resizing.

If you experience heap allocations, use the version that uses a List instead.

```csharp
using UnityEngine;
using UnityEngine.Rendering;public class ExampleRenderPipeline : RenderPipeline
{
    public ExampleRenderPipeline()
    {
    }    protected override void Render(ScriptableRenderContext context, Camera[] cameras)
    {
        // This is where you can write custom rendering code. Customize this method to customize your SRP.
        // Create and schedule a command to clear the current render target
        var cmd = new CommandBuffer();
        cmd.ClearRenderTarget(true, true, Color.red);
        context.ExecuteCommandBuffer(cmd);
        cmd.Release();        // Tell the ScriptableRenderContext to tell the graphics API to perform the scheduled commands
        context.Submit();
    }
}
```
