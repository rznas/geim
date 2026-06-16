<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/QualitySettings.GetActiveQualityLevelsForPlatformCount.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| buildTargetGroupName | The platform to obtain the number of selected Quality Levels. |

### Returns

**int** The total amount of Quality Levels active for the given platform.

### Description

[Editor Only] Obtains the number of Quality Levels that are selected for a given platform.

```csharp
public int GetActiveActiveQualityLevelsForPlatform(BuildTarget platform)
{
    var activeBuildTargetGroup = BuildPipeline.GetBuildTargetGroup(platform);
    var namedBuildTarget = NamedBuildTarget.FromBuildTargetGroup(activeBuildTargetGroup);
    return QualitySettings.GetActiveQualityLevelsForPlatformCount(namedBuildTarget.TargetName);
}
```

Returns the count of quality levels that are including the given platform.
