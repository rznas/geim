<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/SpeedTreeImporter.SearchAndRemapMaterials.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| materialFolderPath | The path to search for matching materials. |

### Returns

**bool** Returns true if any materials have been remapped, otherwise false.

### Description

Search the project for matching materials and use them instead of the internal materials.

Unity follows specific naming conventions when importing SpeedTree materials. This allows Unity to search for matching material assets by name.

The **materialFolderPath** is relative to the project folder, for example "Assets/MyModel Materials".

Throws **ArgumentNullException** when the path is *null* and **ArgumentException** when the file path is *empty*.

```csharp
using UnityEditor;public class MaterialRemapper : AssetPostprocessor
{
    void OnPreprocessModel()
    {
        var importer = assetImporter as SpeedTreeImporter;
        importer.SearchAndRemapMaterials(importer.materialFolderPath);
    }
}
```
