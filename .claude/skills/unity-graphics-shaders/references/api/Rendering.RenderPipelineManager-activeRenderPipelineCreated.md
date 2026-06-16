<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Rendering.RenderPipelineManager-activeRenderPipelineCreated.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Delegate that you can use to invoke custom code right after RenderPipelineManager.currentPipeline is created.

Unity does not switch the render pipeline immediately when you set GraphicsSettings.currentRenderPipeline or QualitySettings.renderPipeline. Unity only instantiate a new `RenderPipeline` instance the first time any Camera renders after you set a new `RenderPipelineAsset`. You can subscribe to this event to know that `RenderPipeline` is created. To access the current pipeline object you can rely on RenderPipelineManager.currentPipeline which will point to the newly created `RenderPipeline`.

```csharp
using UnityEngine;
using UnityEngine.Rendering;
public class CurrentRenderPipelineCreatedExample : MonoBehaviour
{
    void Start()
    {
        RenderPipelineManager.activeRenderPipelineCreated += RenderPipelineManager_activeRenderPipelineCreated;
    }    private void OnDestroy()
    {
        RenderPipelineManager.activeRenderPipelineCreated -= RenderPipelineManager_activeRenderPipelineCreated;
    }    private void RenderPipelineManager_activeRenderPipelineCreated()
    {
        Debug.Log($"Render Pipeline {RenderPipelineManager.currentPipeline.GetType().Name} is created.");
    }
}
```
