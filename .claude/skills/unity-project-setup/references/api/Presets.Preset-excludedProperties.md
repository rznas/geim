<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Presets.Preset-excludedProperties.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

List of properties to ignore when applying the Preset to an object.

Sets the list of properties or parent properties to ignore when applying the Preset to an object.

```csharp
using UnityEngine;
using UnityEditor.Presets;static class PresetsExample
{
    public static bool ApplyToWithExclusion(Preset preset, Transform target, string[] exclusion)
    {
        var current = preset.excludedProperties;
        preset.excludedProperties = exclusion;
        var success = preset.ApplyTo(target);
        preset.excludedProperties = current;
        return success;
    }    public static void ApplyTransformPresetWithoutPosition(Preset preset, Transform target)
    {
        if (ApplyToWithExclusion(preset, target, new[] { "m_LocalPosition" }))
        {
            Debug.Log("The Preset has been applied and the position hasn't changed");
        }
        else
        {
            Debug.Log("The Preset was not applied");
        }
    }
}
```

```csharp
using UnityEngine;
using UnityEditor.Presets;static class PresetsExample
{
    public static bool ApplyOnlyTheYPosition(Preset preset, Transform target)
    {
        var current = preset.excludedProperties;
        preset.excludedProperties = new[] { "m_LocalPosition.x", "m_LocalPosition.z" };
        var success = preset.ApplyTo(target, new[] { "m_LocalPosition" });
        preset.excludedProperties = current;
        return success;
    }
}
```

Note: If every properties get ignored on a Preset, ApplyTo will always return false. This is also the case when using ApplyTo(Object, string[]) and the specified list of properties to apply are all ignored.

```csharp
using UnityEngine;
using UnityEditor.Presets;static class PresetsExample
{
    public static bool ApplyAlwaysReturnFalse(Preset preset, Transform target)
    {
        var current = preset.excludedProperties;
        preset.excludedProperties = new[] { "m_LocalPosition" };
        var success = preset.ApplyTo(target, new[] { "m_LocalPosition" });  // always false because we try to apply only the ignored property.
        preset.excludedProperties = current;
        return success;
    }
}
```
