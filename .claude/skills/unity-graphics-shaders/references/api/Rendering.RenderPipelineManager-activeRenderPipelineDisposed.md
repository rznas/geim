<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Rendering.RenderPipelineManager-activeRenderPipelineDisposed.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Delegate that you can use to invoke custom code right before RenderPipelineManager.currentPipeline is disposed.

Whenever you switch GraphicsSettings.currentRenderPipeline or QualitySettings.renderPipeline, Unity will dispose the current `RenderPipeline` before instantiate the new `RenderPipeline`. You can subscribe to this event to know when current `RenderPipeline` will be disposed. To access the currently disposing `RenderPipeline` object you can rely on RenderPipelineManager.currentPipeline.

```csharp
using UnityEngine;
using UnityEngine.Rendering;public class CurrentRenderPipelineDisposedExample : MonoBehaviour
{
    void Start()
    {
        RenderPipelineManager.activeRenderPipelineDisposed += RenderPipelineManager_activeRenderPipelineDisposed;
    }    private void OnDestroy()
    {
        RenderPipelineManager.activeRenderPipelineDisposed -= RenderPipelineManager_activeRenderPipelineDisposed;
    }    private void RenderPipelineManager_activeRenderPipelineDisposed()
    {
        Debug.Log($"Render Pipeline {RenderPipelineManager.currentPipeline.GetType().Name} is disposing.");
    }
}
```
