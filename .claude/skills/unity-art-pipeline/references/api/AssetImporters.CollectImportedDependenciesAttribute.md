<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/AssetImporters.CollectImportedDependenciesAttribute.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Use this method attribute to specify which methods declare dependancies on imported assets. The methods are called by AssetDatabase during import.

The AssetDatabase imports the dependencies declared in methods with this attribute before importing the dependent assets. This also re-imports the dependent asset whenever the dependency asset changes. Use this declared dependency to safely load dependancies in AssetPostprocessor callbacks.

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

### Properties

| Property | Description |
| --- | --- |
| importerType | The type of the importer for which the imported dependency getter is declared. |
| version | The version of the imported dependency getter. |

### Constructors

| Constructor | Description |
| --- | --- |
| CollectImportedDependenciesAttribute | Use the CollectImportedDependencies attribute to declare getters for imported dependencies. |
