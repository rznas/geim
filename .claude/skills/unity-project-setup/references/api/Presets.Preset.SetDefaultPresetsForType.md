<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Presets.Preset.SetDefaultPresetsForType.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| type | A valid default PresetType. |
| presets | An ordered list of DefaultPreset. |

### Returns

**bool** Returns true if the list was set as default. Returns false otherwise.

### Description

Sets a default list of Presets with a filter for a specific PresetType.

Default Presets are stored in the PresetManager. Access Presets with a script, using this method and Preset.GetDefaultListForType, or from the Preset Manager window.

```csharp
using UnityEditor.Presets;
using System.Linq;public static class PresetUility
{
    public static void InsertAsFirstDefault(Preset preset)
    {
        var type = preset.GetPresetType();
        if (type.IsValidDefault())
        {
            var list = Preset.GetDefaultPresetsForType(type).ToList();
            list.Insert(0, new DefaultPreset(string.Empty, preset));
            Preset.SetDefaultPresetsForType(type, list.ToArray());
        }
    }
}
```
