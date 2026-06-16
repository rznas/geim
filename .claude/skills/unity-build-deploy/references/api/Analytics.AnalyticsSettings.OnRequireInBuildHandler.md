<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Analytics.AnalyticsSettings.OnRequireInBuildHandler.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Dispatches whenever a platform build starts. Use this event to enable Analytics in a platform build.

```csharp
using UnityEditor;[InitializeOnLoad]
internal class SomeNewServiceRequiresAnalyticsDeviceStats
{
    static SomeNewServiceRequiresAnalyticsDeviceStats()
    {
        UnityEditor.Analytics.AnalyticsSettings.OnRequireInBuildHandler += () =>
        {
            return true;
        };
    }
}
```
