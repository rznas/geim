<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/QualitySettings.GetActiveQualityLevelsForPlatform.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| buildTargetGroupName | The platform target. |

### Returns

**int[]** The array with the Quality Level indexes that are selected for the given platform.

### Description

[Editor Only] Obtains an array with the Quality Level indexes that are selected for the given platform.

```csharp
public int[] GetActiveQualityLevelsForPlatform(BuildTarget platform)
{
    var activeBuildTargetGroup = BuildPipeline.GetBuildTargetGroup(platform);
    var namedBuildTarget = NamedBuildTarget.FromBuildTargetGroup(activeBuildTargetGroup);
    return QualitySettings.GetActiveQualityLevelsForPlatform(namedBuildTarget.TargetName);
}
```

Obtains the indexes that where a given platform is included.
