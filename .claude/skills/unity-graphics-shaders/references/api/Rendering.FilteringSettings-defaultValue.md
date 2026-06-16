<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Rendering.FilteringSettings-defaultValue.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Creates a `FilteringSettings` struct that contains default values for all properties. With these default values, Unity does not perform any filtering.

To override values at the time that you create the struct, use the FilteringSettings constructor.

This example demonstrates the syntax for creating a default `FilteringSettings` struct with default values.

```csharp
using UnityEngine;
using UnityEngine.Rendering;public class FilteringSettingsExample
{
    public FilteringSettings CreateFilteringSettings()
    {
        // Instantiate a FilteringSettings struct with the default value
        // (i.e., perform no filtering)
        FilteringSettings defaultFilteringSettings = FilteringSettings.defaultValue;        return defaultFilteringSettings;
    }
}
```

Additional resources: ScriptableRenderContext.DrawRenderers, Creating a simple render loop in a custom render pipeline.
