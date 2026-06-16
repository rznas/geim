<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Presets.DefaultPresetSelectorReceiver.OnSelectionChanged.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Applies the Preset to each target. If Preset is null, this method reverts the value of each target.

```csharp
using UnityEditor;
using UnityEditor.Presets;
using UnityEngine;public class DefaultPresetSelectorReceiver : PresetSelectorReceiver
{
    Object[] m_Targets;
    Preset[] m_InitialValues;    public override void OnSelectionChanged(Preset selection)
    {
        if (selection != null)
        {
            foreach (var target in m_Targets)
            {
                selection.ApplyTo(target);
            }
        }
        else
        {
            for (int i = 0; i < m_Targets.Length; i++)
            {
                m_InitialValues[i].ApplyTo(m_Targets[i]);
            }
        }
    }
}
```
