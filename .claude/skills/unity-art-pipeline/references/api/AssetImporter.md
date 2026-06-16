<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/AssetImporter.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Provides access to import settings and base functionality for all asset types.

Although this is the base class for all asset importers, the recommended best practice is that you derive from the ScriptedImporter class if you want to write a new, custom importer.

Each asset imported into the project is linked to a corresponding asset importer object. This object provides access to the settings applied during the asset import process. These settings are stored in the `.meta` file, are located adjacent to the source asset file. They encompass asset bundle information, custom user data, and any external objects upon which the asset relies.

To obtain the asset importer object associated with an asset, use the AssetImporter.GetAtPath method.

To apply and save any changes made to the settings, use the AssetImporter.SaveAndReimport method. This action reimports the asset with the updated configuration.

The following example iterates through all assets within the project, identifying those that lack an asset bundle name by examining their respective asset importer objects.

```csharp
using System.Collections.Generic;
using System.IO;
using System.Linq;
using UnityEditor;
using UnityEngine;

public class AddUserData : MonoBehaviour
{
    [MenuItem("Examples/Log Unbundled Assets")]
    static void LogUnbundledAssets()
    {
        CreateAssets();
        List<string> unbundledAssets = FindUnbundledAssets();
        if (unbundledAssets.Count > 0)
        {
            Debug.Log("Unbundled assets:");
            foreach (string asset in unbundledAssets)
                Debug.Log("  " + asset);
        }
        else
        {
            Debug.Log("All assets are bundled.");
        }
    }

    static List<string> FindUnbundledAssets()
    {
        // Fetch all the assets under Assets/ExampleAssets, excluding the
        // folders.
        string[] assets = AssetDatabase.GetAllAssetPaths()
            .Where(path => path.StartsWith("Assets/ExampleAssets") &&
                !Directory.Exists(path))  // Exclude directories
            .ToArray();

        // Unbundled assets do not have an asset bundle name set in their
        // importer settings.
        List<string> unbundledAssets = new List<string>();
        foreach (string asset in assets)
        {
            AssetImporter importer = AssetImporter.GetAtPath(asset);
            if (importer.assetBundleName == "")
            {
                unbundledAssets.Add(asset);
            }
        }

        return unbundledAssets;
    }

    static void CreateAssets()
    {
        // Create a folder for the assets in this example.
        if (!AssetDatabase.IsValidFolder("Assets/ExampleAssets"))
        {
            AssetDatabase.CreateFolder("Assets", "ExampleAssets");
        }

        // Create a folder for prefab assets.
        if (!AssetDatabase.IsValidFolder("Assets/ExampleAssets/Prefabs"))
        {
            AssetDatabase.CreateFolder("Assets/ExampleAssets",
                                       "Prefabs");
        }

        // Create a sphere asset.
        GameObject sphere =
            GameObject.CreatePrimitive(PrimitiveType.Sphere);
        PrefabUtility.SaveAsPrefabAsset(
            sphere, "Assets/ExampleAssets/Prefabs/Sphere.prefab");

        // Create a text asset.
        TextAsset text = new TextAsset("Hello, World!");
        AssetDatabase.CreateAsset(text,
                                  "Assets/ExampleAssets/Text.asset");

        // Only the text assets has its asset bundle name set.
        AssetImporter importer =
            AssetImporter.GetAtPath("Assets/ExampleAssets/Text.asset");
        importer.assetBundleName = "myBundle";
        importer.SaveAndReimport();

        // Create a material asset.
        Material material = new Material(Shader.Find("Standard"));
        AssetDatabase.CreateAsset(material,
                                  "Assets/ExampleAssets/Material.mat");
    }
}
```

### Properties

| Property | Description |
| --- | --- |
| assetBundleName | Get or set the AssetBundle name. |
| assetBundleVariant | Get or set the AssetBundle variant. |
| assetPath | The path name of the asset for this importer. (Read Only) |
| importSettingsMissing | The value is true when no meta file is provided with the imported asset. |
| userData | Get or set any user data. |

### Public Methods

| Method | Description |
| --- | --- |
| AddRemap | Map a sub-asset from an imported asset (such as an FBX file) to an external Asset of the same type. |
| GetExternalObjectMap | Gets a copy of the external object map used by the AssetImporter. |
| RemoveRemap | Removes an item from the map of external objects. |
| SaveAndReimport | Save asset importer settings if asset importer is dirty. |
| SetAssetBundleNameAndVariant | Set the AssetBundle name and variant. |
| SupportsRemappedAssetType | Checks if the AssetImporter supports remapping the given asset type. |

### Static Methods

| Method | Description |
| --- | --- |
| GetAtPath | Retrieves the asset importer for the asset at path. |
| GetImportLog | Retrieves logs generated during the import of the asset at path. |

### Inherited Members

### Properties

| Property | Description |
| --- | --- |
| hideFlags | Should the object be hidden, saved with the Scene or modifiable by the user? |
| name | The name of the object. |

### Public Methods

| Method | Description |
| --- | --- |
| GetEntityId | Gets the EntityId of the object. |
| ToString | Returns the name of the object. |

### Static Methods

| Method | Description |
| --- | --- |
| Destroy | Removes a GameObject, component, or asset. |
| DestroyImmediate | Destroys the specified object immediately. Use with caution and in Edit mode only. |
| DontDestroyOnLoad | Do not destroy the target Object when loading a new Scene. |
| FindAnyObjectByType | Retrieves any active loaded object of Type type. |
| FindObjectsByType | Retrieves a list of all loaded objects of Type type. |
| Instantiate | Clones the object original and returns the clone. |
| InstantiateAsync | Captures a snapshot of the original object (that must be related to some GameObject) and returns the AsyncInstantiateOperation. |

### Operators

| Operator | Description |
| --- | --- |
| bool | Does the object exist? |
| operator != | Compares if two objects refer to a different object. |
| operator == | Compares two object references to see if they refer to the same object. |
