<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/QualitySettings.GetAllRenderPipelineAssetsForPlatform.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| buildTargetGroupName | The platform to obtain the Render Pipeline Assets. |
| renderPipelineAssets | The list that will be filled with the unfiltered Render Pipeline Assets. There might be null Render Pipeline Assets. |

### Description

[Editor Only] Fills the given list with all the Render Pipeline Assets on any Quality Level for the given platform. Without filtering by Render Pipeline Asset type or null.

```csharp
public RenderPipelineAsset[] GetAllRenderPipelineAssets(BuildTarget platform)
{
    var activeBuildTargetGroup = BuildPipeline.GetBuildTargetGroup(platform);
    var namedBuildTarget = NamedBuildTarget.FromBuildTargetGroup(activeBuildTargetGroup);
    List<RenderPipelineAsset> assets = new List<RenderPipelineAsset>();
    QualitySettings.GetAllRenderPipelineAssetsForPlatform(namedBuildTarget.TargetName, ref assets);
    return assets.ToArray();
}
```

Gets all the Render Pipeline Assets. That are included in all the Quality levels for the given platform.
