<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/QualitySettings.GetRenderPipelineAssetsForPlatform.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| buildTargetGroupName | The platform to obtain the Render Pipeline Assets. |
| uniqueRenderPipelineAssets | A collection with the non null selected Render Pipeline Assets for the platform. |

### Description

[Editor Only] Obtains a set with the non null Render Pipeline Assets selected on all the Quality Levels for the given platform.

### Parameters

| Parameter | Description |
| --- | --- |
| buildTargetGroupName | The platform to obtain the Render Pipeline Assets. |
| uniqueRenderPipelineAssets | A collection with the non null selected Render Pipeline Assets for the platform. |
| allLevelsAreOverridden | An additional information that state if all quality settings were overridden in the project. |

### Description

[Editor Only] Obtains a set with the non null Render Pipeline Assets selected on all the Quality Levels for the given platform.

```csharp
public T[] GetAllRenderPipelineAssets<T>(BuildTarget platform)
    where T : RenderPipelineAsset
{
    var activeBuildTargetGroup = BuildPipeline.GetBuildTargetGroup(platform);
    var namedBuildTarget = NamedBuildTarget.FromBuildTargetGroup(activeBuildTargetGroup);
    QualitySettings.GetRenderPipelineAssetsForPlatform<T>(namedBuildTarget.TargetName, out var uniqueAssets, out bool allLevelsAreOverridden);
    if(allLevelsAreOverridden)
        return uniqueAssets.ToArray();    return Array.Empty<T>();
}
```
