<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Rendering.GraphicsSettings-allConfiguredRenderPipelines.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

An array containing the RenderPipelineAsset instances that describe the default render pipeline and any quality level overrides.

The default render pipeline is defined in GraphicsSettings.defaultRenderPipeline. The override render pipeline for the current quality level is defined in QualitySettings.renderPipeline, or you can request the override value for a given quality level with QualitySettings.GetRenderPipelineAssetAt.

This property returns all instances of RenderPipelineAsset that are assigned to these fields. The same RenderPipelineAsset can appear in this array more than once, if it is assigned to more than one field.

```csharp
using UnityEngine;
using UnityEngine.Rendering;public class AllConfiguredRenderPipelinesExample : MonoBehaviour
{
    void Start()
    {
        Debug.Log("All Render Pipeline Assets that define the default render pipeline, or an override: ");
        foreach (var asset in GraphicsSettings.allConfiguredRenderPipelines)
        {
            Debug.Log(asset.name);
        }
    }
}
```

Additional resources: How to get, set, and configure the active render pipeline, GraphicsSettings.currentRenderPipeline, GraphicsSettings.defaultRenderPipeline, QualitySettings.renderPipeline.
