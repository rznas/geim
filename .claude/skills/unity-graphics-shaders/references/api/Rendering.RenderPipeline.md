<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Rendering.RenderPipeline.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Provides a way to implement rendering logic for a Scriptable Render Pipeline.

Inherit from this class to override the RenderPipeline.Render method as part of implementing a Scriptable Render Pipeline (SRP):

```csharp
using UnityEngine;
using UnityEngine.Rendering;
using System.Collections.Generic;public class CustomRenderPipeline : RenderPipeline
{
    protected override void Render(ScriptableRenderContext context, List<Camera> cameras)
    {
        // Implement this method to customize your SRP.
        // For a more complete example, refer to RenderPipeline.Render.
    }
}
```

For more detailed information, refer to Creating a custom render pipeline and Unity Manual: Scriptable Render Pipeline.

### Properties

| Property | Description |
| --- | --- |
| disposed | Returns true when the RenderPipeline is invalid or destroyed. |

### Protected Methods

| Method | Description |
| --- | --- |
| IsPreviewSupported | Allow to specify if a camera can be previewed or not. |
| IsRenderRequestSupported | Implement this method in a custom Scriptable Render Pipeline (SRP) to specify if a particular combination of camera and render request is supported. |
| ProcessRenderRequests | Implement this method in a custom Scriptable Render Pipeline (SRP) to execute render requests submitted using RenderPipeline.SubmitRenderRequest. |
| Render | Entry point method that defines custom rendering for this RenderPipeline. |

### Static Methods

| Method | Description |
| --- | --- |
| BeginCameraRendering | Calls the RenderPipelineManager.beginCameraRendering delegate. |
| BeginContextRendering | Calls the RenderPipelineManager.beginContextRendering and RenderPipelineManager.beginFrameRendering delegates. |
| EndCameraRendering | Calls the RenderPipelineManager.endCameraRendering delegate. |
| EndContextRendering | Calls the RenderPipelineManager.endContextRendering and RenderPipelineManager.endFrameRendering delegates. |
| SubmitRenderRequest | Submits a render request to a camera using the render pipeline, outside of the Unity render loop. |
| SupportsRenderRequest | Checks if the render pipeline supports the RequestData type with the camera. |
