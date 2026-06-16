<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/QualitySettings.TryIncludePlatformAt.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| buildTargetGroupName | The platform name. |
| index | The index of the Quality Level, must be positive and lower than the count of Quality Levels. |
| error | The error found by the API. |

### Returns

**bool** If errors were found.

### Description

[Editor Only] Includes a platform to be supported by the Quality Level.

```csharp
public void IncludeQualityLevelForPlatform(int qualityLevelToExclude, BuildTarget platformToExclude)
{
    var activeBuildTargetGroup = BuildPipeline.GetBuildTargetGroup(platformToExclude);
    var namedBuildTarget = NamedBuildTarget.FromBuildTargetGroup(activeBuildTargetGroup);
    bool result = QualitySettings.TryIncludePlatformAt(namedBuildTarget.TargetName, qualityLevelToExclude, out var ex);
    Debug.Log(result
        ? "Successfully included the platform at the specified quality level."
        : $"Failed to include the platform. {ex.Message}");
}
```

Includes a platform in a given Quality Level.
