<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/AssetImporters.ScriptedImporter.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Abstract base class for custom Asset importers.

Scripted importers are scripts that are associated with specific file extensions. They are invoked by Unity's Asset pipeline to convert the contents of associated files into Assets.

Use the ScriptedImporterAttribute class to register custom importers with the Asset pipeline.

The C# fields of a ScriptedImporter are serialized, exactly like fields on a MonoBehaviour. See Script Serialization for details. You can see these properties in the Inspector and use them to control the behaviour of the importer for each asset. To programmatically access the value of an asset's properties, use AssetImporter.GetAtPath and type cast the return value to the correct class derived from ScriptedImporter. After changing values, trigger a fresh import by calling EditorUtility.SetDirty and then AssetImporter.SaveAndReimport.

```csharp
using UnityEngine;
using UnityEditor.AssetImporters;
using System.IO;[ScriptedImporter(1, "cube")]
public class CubeImporter : ScriptedImporter
{
    public float m_Scale = 1;    public override void OnImportAsset(AssetImportContext ctx)
    {
        var cube = GameObject.CreatePrimitive(PrimitiveType.Cube);
        var position = JsonUtility.FromJson<Vector3>(File.ReadAllText(ctx.assetPath));        cube.transform.position = position;
        cube.transform.localScale = new Vector3(m_Scale, m_Scale, m_Scale);        // 'cube' is a GameObject and will be automatically converted into a Prefab
        // (Only the 'Main Asset' is eligible to become a Prefab.)
        ctx.AddObjectToAsset("main obj", cube);
        ctx.SetMainObject(cube);        var material = new Material(Shader.Find("Standard"));
        material.color = Color.red;        // Assets must be assigned a unique identifier string consistent across imports
        ctx.AddObjectToAsset("my Material", material);        // Assets that are not passed into the context as import outputs must be destroyed
        var tempMesh = new Mesh();
        DestroyImmediate(tempMesh);
    }
}
```

### Public Methods

| Method | Description |
| --- | --- |
| OnImportAsset | This method must be overriden by the derived class and is called by the Asset pipeline to import files. |
| SupportsRemappedAssetType | Override this method if your ScriptedImporter supports remapping specific asset types. |

### Messages

| Message | Description |
| --- | --- |
| GatherDependenciesFromSourceFile | A static callback that you can implement to set up artifact dependencies to other Assets, and optimize the order your assets are imported. |
| OnValidate | This function is called when the importer is loaded or a value is changed in the Inspector. |
| Reset | Reset to default values. |

### Inherited Members

### Properties

| Property | Description |
| --- | --- |
| assetBundleName | Get or set the AssetBundle name. |
| assetBundleVariant | Get or set the AssetBundle variant. |
| assetPath | The path name of the asset for this importer. (Read Only) |
| importSettingsMissing | The value is true when no meta file is provided with the imported asset. |
| userData | Get or set any user data. |
| hideFlags | Should the object be hidden, saved with the Scene or modifiable by the user? |
| name | The name of the object. |

### Public Methods

| Method | Description |
| --- | --- |
| AddRemap | Map a sub-asset from an imported asset (such as an FBX file) to an external Asset of the same type. |
| GetExternalObjectMap | Gets a copy of the external object map used by the AssetImporter. |
| RemoveRemap | Removes an item from the map of external objects. |
| SaveAndReimport | Save asset importer settings if asset importer is dirty. |
| SetAssetBundleNameAndVariant | Set the AssetBundle name and variant. |
| GetEntityId | Gets the EntityId of the object. |
| ToString | Returns the name of the object. |

### Static Methods

| Method | Description |
| --- | --- |
| GetAtPath | Retrieves the asset importer for the asset at path. |
| GetImportLog | Retrieves logs generated during the import of the asset at path. |
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
