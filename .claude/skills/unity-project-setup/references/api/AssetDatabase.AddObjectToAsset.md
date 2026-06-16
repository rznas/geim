<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/AssetDatabase.AddObjectToAsset.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| objectToAdd | Object to add to the existing asset. |
| path | Project relative path to the destination asset. |

### Description

Adds `objectToAdd` to an existing asset at `path`.

Please note that you should only add objects to '.asset' assets, imported models or texture objects for example will lose their data.

All paths are relative to the project folder.

**Note:** You can not add GameObjects; use PrefabUtility instead.

```csharp
using UnityEngine;
using UnityEditor;public class AddObjectToAssetPathExample
{
    [MenuItem("AssetDatabase/AddObjectToAssetPathExample")]
    static void AddObjectToPathExample()
    {
        // Create a simple material object
        Material material = new Material(Shader.Find("Specular"));
        material.name = "My material";        // Create an instance of a simple scriptable object
        DummyObject dummyObject = ScriptableObject.CreateInstance<DummyObject>();
        dummyObject.name = "My scriptable asset";        // Create the scriptable object asset
        AssetDatabase.CreateAsset(dummyObject, "Assets/dummyObject.asset");        // Get the path of the scriptable object asset
        string dummyObjectPath = AssetDatabase.GetAssetPath(dummyObject);        // Add the material to the scriptable object asset
        AssetDatabase.AddObjectToAsset(material, dummyObjectPath);        // Serializing the changes in memory to disk
        AssetDatabase.SaveAssets();        // Print the path of the created asset
        Debug.Log(AssetDatabase.GetAssetPath(dummyObject));
    }
}// The DummyObject class used in the example above
public class DummyObject : ScriptableObject
{
    public string objectName = "dummy";
}
```

### Parameters

| Parameter | Description |
| --- | --- |
| objectToAdd | Object to add to the existing asset. |
| assetObject | Destination asset. |

### Description

Adds `objectToAdd` to an existing asset identified by `assetObject`.

**Note:** Having `objectToAdd` on disc before calling AddObjectToAsset will generate an error (ex. trying to add "MyMaterial" to an existing asset): "Couldn't add object to asset file because the Material 'MyMaterial' is already an asset at 'Assets/MyMaterial.mat'!"

**Note:** You have to serialize the changes in memory to disk. 
This is because assets that have been modified in memory, must be saved to disk. 
Failling to do this will produce an inconsistent result warning, as in-memory modifications to the asset will be lost.

```csharp
using UnityEngine;
using UnityEditor;public class AddObjectToAssetExample
{
    [MenuItem("AssetDatabase/AddObjectExample")]
    static void AddObjectExample()
    {
        // Create a simple material object
        Material material = new Material(Shader.Find("Specular"));
        material.name = "My material";        // Create an instance of a simple scriptable object
        DummyObject dummyObject = ScriptableObject.CreateInstance<DummyObject>();
        dummyObject.name = "My scriptable asset";        // Create the scriptable object asset
        AssetDatabase.CreateAsset(dummyObject, "Assets/dummyObject.asset");        // Add the material to the scriptable object asset
        AssetDatabase.AddObjectToAsset(material, dummyObject);        // Serializing the changes in memory to disk
        AssetDatabase.SaveAssets();        // Print the path of the created asset
        Debug.Log(AssetDatabase.GetAssetPath(dummyObject));
    }
}// The DummyObject class used in the example above
public class DummyObject : ScriptableObject
{
    public string objectName = "dummy";
}
```
