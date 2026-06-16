<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/AssetImporters.CollectImportedDependenciesAttribute-ctor.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| importerType | The type of the importer for which the getter is called by the AssetDatabase. |
| version | The version of the imported dependencies getter. |

### Description

Use the CollectImportedDependencies attribute to declare getters for imported dependencies.

It is recommended to always increment the version number of the callback whenever the script is changed. This forces assets imported with lower version numbers to be re-imported.

This example shows how you can declare a dependency between two prefabs imported by the ModelImporter and use them in an AssetPostprocessor.

```csharp
using UnityEditor;
using UnityEditor.AssetImporters;
using UnityEngine;public class ProceduralParentPostprocessor : AssetPostprocessor
{
    private const string s_DependentPath = "Assets/ProceduralPrefab.fbx";
    private const string s_DependencyPath = "Assets/DependencyPrefab.fbx";    [CollectImportedDependencies(typeof(ModelImporter), 1)]
    public static string[] CollectImportedDependenciesForModelImporter(string assetPath)
    {
        if (assetPath.Equals(s_DependentPath))
            return new[] { s_DependencyPath };        return null;
    }    void OnPostprocessMeshHierarchy(GameObject root)
    {
        if (root.name == "ProceduralPrefabRoot")
        {
            // Add a new child game object
            var go = AssetDatabase.LoadMainAssetAtPath(s_DependencyPath) as GameObject;
            Object.Instantiate(go, root.transform, true);
        }
    }
}
```

**Note:** The attribute supports only native importer types with AssetPostprocessor callbacks: ModelImporter, TextureImporter, AudioImporter, and SpeedTreeImporter.
