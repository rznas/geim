<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/AssetImporters.AssetImporterEditor.OnApplyRevertGUI.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Returns

**bool** Returns true if the new settings were successfully applied.

### Description

Process the 'Apply' and 'Revert' buttons.

This is called by ApplyRevertGUI to place and handle the 'Apply' and 'Revert' buttons.

```csharp
using UnityEngine;
using UnityEditor;
using UnityEditor.AssetImporters;public class ExampleScript : ScriptedImporterEditor
{
    public override void OnInspectorGUI()
    {
        serializedObject.Update();        // Draw custom GUI        serializedObject.ApplyModifiedProperties();
        ApplyRevertGUI();
    }    private bool CanApply()
    {
        // Add custom checks that make sure the Importer is in a valid state to be applied.
        return false;
    }    protected virtual bool OnApplyRevertGUI()
    {
        using (new EditorGUI.DisabledScope(!HasModified()))
        {
            RevertButton();
            using (new EditorGUI.DisabledScope(!CanApply()))
            {
                return ApplyButton();
            }
        }
    }
}
```
