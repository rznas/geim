<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Rendering.RenderPipeline.EndCameraRendering.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| context | Context to use for rendering the camera. |
| camera | The camera currently being rendered. |

### Description

Calls the RenderPipelineManager.endCameraRendering delegate.

In the Universal Render Pipeline (URP) and the High Definition Render Pipeline (HDRP), Unity calls this method automatically after performing rendering operations for an individual Camera. If you are writing a custom Scriptable Render Pipeline, you can call this method manually to use the RenderPipelineManager.endCameraRendering delegate.

The following code example demonstrates where to call this method if you are creating a custom Scriptable Render Pipeline:

```csharp
using UnityEngine;
using UnityEngine.Rendering;public class ExampleRenderPipelineInstance : RenderPipeline
{
    public ExampleRenderPipelineInstance()
    {
    }    override protected void Render(ScriptableRenderContext context, Camera[] cameras)
    {
        for (var i = 0; i < cameras.Length; i++)
        {
            var camera = cameras[i];            // Put your code for rendering the Camera here            // Call the RenderPipelineManager.endCameraRendering delegate
            EndCameraRendering(context, camera);
        }
    }
}
```

Additional resources: RenderPipelineManager.endCameraRendering, RenderPipeline.BeginCameraRendering, RenderPipeline.BeginFrameRendering, RenderPipeline.EndFrameRendering, Unity Manual: Scriptable Render Pipeline.
