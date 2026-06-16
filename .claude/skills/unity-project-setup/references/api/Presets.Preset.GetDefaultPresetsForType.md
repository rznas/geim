<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Presets.Preset.GetDefaultPresetsForType.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| type | A valid default PresetType. |

### Returns

**DefaultPreset[]** Returns a list of DefaultPreset from the PresetManager that match the specified PresetType.

### Description

Gets an ordered list of DefaultPreset based on the specified PresetType.

See also Preset.SetDefaultPresetsForType.

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
