<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Presets.Preset.GetAllDefaultTypes.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Returns all the PresetType that have at least one DefaultPreset entry in the default Presets list.

Use this method to gather all existing DefaultPreset and all Preset used as default in a project.

```csharp
using UnityEditor;
using UnityEditor.Presets;
using UnityEngine;public static class PresetExample
{
    [MenuItem("Presets Example/Log All Default Preset")]
    public static void LogDefaultPreset()
    {
        var defaultTypes = Preset.GetAllDefaultTypes();
        foreach (var defaultType in defaultTypes)
        {
            var defaults = Preset.GetDefaultPresetsForType(defaultType);
            foreach (var defaultPreset in defaults)
            {
                Debug.Log($"Default - Filter:{defaultPreset.filter}, Enabled:{defaultPreset.enabled}, Name:{defaultPreset.preset.name}", defaultPreset.preset);
            }
        }
    }
}
```
