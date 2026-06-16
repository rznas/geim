<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/AssetImporters.AssetImporterEditor.ApplyAndImport.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Saves the changes from the editor UI to the settings object and imports the asset.

```csharp
using UnityEngine;
using UnityEditor;
using UnityEditor.AssetImporters;public class ExampleScript : AssetImporterEditor
{
    public void OnInspectorGUI()
    {
        serializedObject.Update();        // Draw custom GUI        serializedObject.ApplyModifiedProperties();        ApplyRevertGUI();
    }    protected virtual bool OnApplyRevertGUI()
    {
        using (new EditorGUI.DisabledScope(!HasModified()))
        {
            bool applied;            RevertButton();
            applied = ApplyButton();            if (GUILayout.Button("Apply And Generate Other Files..."))
            {
                // Apply first to make sure the importer settings are up-to-date
                Apply();                // Generate a bunch of new files for each importer
                foreach (AssetImporter importer in targets)
                {
                    var path = importer.assetPath;
                    // Do create files based on the path.
                }                ApplyAndImport();
                applied = true;
            }
            return applied;
        }
    }
}
```
