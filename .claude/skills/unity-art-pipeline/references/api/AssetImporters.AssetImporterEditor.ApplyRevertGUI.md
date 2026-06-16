<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/AssetImporters.AssetImporterEditor.ApplyRevertGUI.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Adds 'Apply' and 'Revert' buttons to the Editor.

Call this method from the OnInspectorGUI event handler, because this is where the Apply/Revert buttons are placed in the Editor. You can't override this method but you can inject custom behavior by re-implementing OnApplyRevertGUI event handler method.

```csharp
using UnityEngine;
using UnityEditor;
using UnityEditor.AssetImporters;public class ExampleScript : ScriptedImporterEditor
{
    public override void OnInspectorGUI()
    {
        serializedObject.Update();        // Draw custom GUI        serializedObject.ApplyModifiedProperties();        ApplyRevertGUI();
    }
}
```
