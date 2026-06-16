<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/AssetPostprocessor-assetImporter.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Reference to the asset importer.

```csharp
using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEditor;// Set the scale of all the imported models to  "globalScaleModifier"
// and dont generate materials for the imported objectspublic class CustomImportSettings : AssetPostprocessor
{
    // Increment the version number, when the AssetPostprocessors code/behavior is changed
    static readonly uint k_Version = 0;
    public override uint GetVersion() { return k_Version; }    float globalScaleModifier  = 0.0028f;    void OnPreprocessModel()
    {
        ModelImporter importer = (ModelImporter)assetImporter;
        importer.globalScale = globalScaleModifier;
        importer.materialImportMode = ModelImporterMaterialImportMode.None;
    }
}
```
