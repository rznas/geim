<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Rendering.RenderPipelineManager-activeRenderPipelineTypeChanged.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Delegate that you can use to invoke custom code when Unity changes the active render pipeline, and the new RenderPipeline has a different type to the old one.

If the `RenderPipeline` that Unity uses to render a frame is a different type to the one from the previous frame, Unity executes the methods in this delegate's invocation list.

If you are writing a tool that relies on the resources or results of a type of `RenderPipeline`, you can use this delegate to be notified of any change.

The following code example demonstrates how to add a method to this delegate's invocation list, and later remove it.

```csharp
using UnityEngine;
using UnityEngine.Rendering;public class ExampleClass : MonoBehaviour
{
    void Start()
    {
        RenderPipelineManager.activeRenderPipelineTypeChanged += OnRenderPipelineTypeChanged;
    }    void OnRenderPipelineTypeChanged()
    {
        // Put the code that you want to execute everytime the Render Pipeline used is changed
        // You can know which pipeline is currently active by calling RenderPipelineManager.currentPipeline
    }    void OnDestroy()
    {
        RenderPipelineManager.activeRenderPipelineTypeChanged -= OnRenderPipelineTypeChanged;
    }
}
```

Additional resources: How to get, set, and configure the active render pipeline, GraphicsSettings.currentRenderPipeline, GraphicsSettings.defaultRenderPipeline, QualitySettings.renderPipeline, RenderPipelineManager.currentPipeline.
