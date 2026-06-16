<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/QualitySettings.IsPlatformIncluded.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| buildTargetGroupName | The platform name. |
| index | The index of the Quality Level, must be positive and lower than the count of Quality Levels. |

### Returns

**bool** If the platform is included.

### Description

[Editor Only] Returns if the given platform is included by the Quality Level.

```csharp
public bool IsPlatformIcluded(BuildTarget platform, int index)
    {
        var activeBuildTargetGroup = BuildPipeline.GetBuildTargetGroup(platform);
        var namedBuildTarget = NamedBuildTarget.FromBuildTargetGroup(activeBuildTargetGroup);
        return QualitySettings.IsPlatformIncluded(namedBuildTarget.TargetName, index);
    }
```
