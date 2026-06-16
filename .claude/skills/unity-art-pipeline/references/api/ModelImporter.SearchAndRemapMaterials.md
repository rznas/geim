<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/ModelImporter.SearchAndRemapMaterials.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| nameOption | The name matching option. |
| searchOption | The search type option. |

### Returns

**bool** Returns false if the source file is empty or invalid. Returns true otherwise.

### Description

Search the project for matching materials and use them instead of the internal materials.

Unity uses the naming convention specified by nameOption to find and match Material assets in your project and maps them to the model. Use the search option to specify if you want the search to be done project wide, locally or recursive up from the model's location.

```csharp
using UnityEditor;public class MaterialRemapper : AssetPostprocessor
{
    void OnPreprocessModel()
    {
        ModelImporter modelImporter = assetImporter as ModelImporter;
        modelImporter.SearchAndRemapMaterials(ModelImporterMaterialName.BasedOnMaterialName, ModelImporterMaterialSearch.Everywhere);
    }
}
```
