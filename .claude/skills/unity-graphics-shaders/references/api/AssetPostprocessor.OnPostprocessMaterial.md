<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/AssetPostprocessor.OnPostprocessMaterial.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Add this function to a subclass to get a notification when a new Material is created during an import of a ModelImporter.

Use this method to modify the properties of newly created Material assets during import.

Note: This method is only called by the ModelImporter when the ModelImporter.MaterialImportMode option is set to ModelImporterMaterialImportMode.ImportStandard.

```csharp
using UnityEngine;
using UnityEditor;public class MakeMaterialsRed : AssetPostprocessor
{
    // Increment the version number, when the AssetPostprocessors code/behavior is changed
    static readonly uint k_Version = 0;
    public override uint GetVersion() { return k_Version; }    void OnPostprocessMaterial(Material material)
    {
        material.color = Color.red;
    }
}
```
