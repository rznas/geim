<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Rendering.RenderPipelineManager-activeRenderPipelineAssetChanged.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| value | The delegate that will be executed when the current RenderPipelineAsset has changed between frames. The first argument will be the previous RenderPipelineAsset, and the second argument will be the current RenderPipelineAsset. The one used to create the current RenderPipeline used to render the last frame. |

### Description

Delegate that you can use to invoke custom code when the current RenderPipelineAsset between frames has changed.

```csharp
using UnityEngine;
using UnityEngine.Rendering;public class CurrentRenderPipelineAssetChangedExample : MonoBehaviour
{
    void Start()
    {
        RenderPipelineManager.activeRenderPipelineAssetChanged += RenderPipelineManager_activeRenderPipelineAssetChanged;
    }    private void OnDestroy()
    {
        RenderPipelineManager.activeRenderPipelineAssetChanged -= RenderPipelineManager_activeRenderPipelineAssetChanged;
    }    private void RenderPipelineManager_activeRenderPipelineAssetChanged(RenderPipelineAsset from, RenderPipelineAsset to)
    {
        Debug.Log($"RenderPipelineAsset has changed {(from != null ? from.GetType().Name : "Built-In")} to {(to != null ? to.GetType().Name : "Built-In")}");
    }
}
```
