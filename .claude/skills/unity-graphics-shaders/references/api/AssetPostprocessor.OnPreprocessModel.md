<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/AssetPostprocessor.OnPreprocessModel.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Add this function to a subclass to get a notification just before a model (.fbx, .mb file etc.) is imported.

This lets you control the import settings through code.

```csharp
using UnityEngine;
using UnityEditor;// Disable import of materials if the file contains
// the @ sign marking it as an animation.
public class Example : AssetPostprocessor
{
    // Increment the version number, when the AssetPostprocessors code/behavior is changed
    static readonly uint k_Version = 0;
    public override uint GetVersion() { return k_Version; }    void OnPreprocessModel()
    {
        if (assetPath.Contains("@"))
        {
            ModelImporter modelImporter = assetImporter as ModelImporter;
            modelImporter.materialImportMode = ModelImporterMaterialImportMode.None;
        }
    }
}
```
