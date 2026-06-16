<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/QualitySettings.TryExcludePlatformAt.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| buildTargetGroupName | The platform name. |
| index | The index of the Quality Level, must be positive and lower than the count of Quality Levels. |
| error | The error raised by the API. |

### Returns

**bool** True if no errors were found.

### Description

[Editor Only] Excludes a platform for the given Quality Level.

```csharp
public void ExcludeQualityLevelForPlatform(int qualityLevelToExclude, BuildTarget platformToExclude)
{
    var activeBuildTargetGroup = BuildPipeline.GetBuildTargetGroup(platformToExclude);
    var namedBuildTarget = NamedBuildTarget.FromBuildTargetGroup(activeBuildTargetGroup);
    bool result = QualitySettings.TryExcludePlatformAt(namedBuildTarget.TargetName, qualityLevelToExclude, out var ex);
    Debug.Log(result
        ? "Successfully excluded the platform at the specified quality level."
        : $"Failed to exclude the platform. {ex.Message}");
}
```

Exclude a given platform in a given Quality Level index.
