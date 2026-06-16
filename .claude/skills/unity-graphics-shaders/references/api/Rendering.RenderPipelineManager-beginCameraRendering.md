<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Rendering.RenderPipelineManager-beginCameraRendering.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Delegate that you can use to invoke custom code before Unity renders an individual Camera.

When Unity calls RenderPipeline.BeginCameraRendering, it executes the methods in this delegate's invocation list.

In the Universal Render Pipeline (URP) and the High Definition Render Pipeline (HDRP), Unity calls RenderPipeline.BeginCameraRendering automatically. If you are writing a custom Scriptable Render Pipeline and you want to use this delegate, you must add a call to RenderPipeline.BeginCameraRendering.

The following code example demonstrates how to add a method to this delegate's invocation list, and later remove it.

```csharp
using UnityEngine;
using UnityEngine.Rendering;public class ExampleClass : MonoBehaviour
{
    void Start()
    {
        RenderPipelineManager.beginCameraRendering += OnBeginCameraRendering;
    }    void OnBeginCameraRendering(ScriptableRenderContext context, Camera camera)
    {
        // Put the code that you want to execute before the camera renders here
        // If you are using URP or HDRP, Unity calls this method automatically
        // If you are writing a custom SRP, you must call RenderPipeline.BeginCameraRendering
    }    void OnDestroy()
    {
        RenderPipelineManager.beginCameraRendering -= OnBeginCameraRendering;
    }
}
```

Additional resources: RenderPipeline.BeginCameraRendering, RenderPipeline.EndCameraRendering, RenderPipeline.BeginFrameRendering, RenderPipeline.EndFrameRendering, Unity Manual: Scriptable Render Pipeline
