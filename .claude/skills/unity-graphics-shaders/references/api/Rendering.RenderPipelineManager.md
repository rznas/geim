<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Rendering.RenderPipelineManager.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Static class that manages the currently active Render Pipeline.

The RenderPipelineManager provides access to the currently active RenderPipeline instance. It also provides a way to subscribe to various events related to the life cycle of the Render Pipeline.

The following example illustrates how RenderPipelineManager can be used to check if a SRP is currently active.

```csharp
using UnityEngine;
using UnityEngine.Rendering;public class RenderPipelineManagerExample : MonoBehaviour
{
    public void Update()
    {
        if (RenderPipelineManager.currentPipeline != null) {
            Debug.Log("A scriptable render pipeline is active");
        } else {
            Debug.Log("Built-in render pipeline is active");
        }
    }
}
```

Additional resources: How to get, set, and configure the active render pipeline.

### Static Properties

| Property | Description |
| --- | --- |
| currentPipeline | Returns the active RenderPipeline. |
| pipelineSwitchCompleted | Indicate when Render Pipeline switch is in progress. |

### Events

| Event | Description |
| --- | --- |
| activeRenderPipelineAssetChanged | Delegate that you can use to invoke custom code when the current RenderPipelineAsset between frames has changed. |
| activeRenderPipelineCreated | Delegate that you can use to invoke custom code right after RenderPipelineManager.currentPipeline is created. |
| activeRenderPipelineDisposed | Delegate that you can use to invoke custom code right before RenderPipelineManager.currentPipeline is disposed. |
| activeRenderPipelineTypeChanged | Delegate that you can use to invoke custom code when Unity changes the active render pipeline, and the new RenderPipeline has a different type to the old one. |
| beginCameraRendering | Delegate that you can use to invoke custom code before Unity renders an individual Camera. |
| beginContextRendering | Delegate that you can use to invoke custom code at the start of RenderPipeline.Render. |
| beginFrameRendering | Delegate that you can use to invoke custom code at the start of RenderPipeline.Render. |
| endCameraRendering | Delegate that you can use to invoke custom code after Unity renders an individual Camera. |
| endContextRendering | Delegate that you can use to invoke custom code at the end of RenderPipeline.Render. |
| endFrameRendering | Delegate that you can use to invoke custom code at the end of RenderPipeline.Render. |
