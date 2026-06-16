<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/AssetDatabase.IsMainAsset.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| obj | The object of the asset. |
| entityId | The EntityID of the asset. |
| instanceID | The instanceID of the asset. |

### Returns

**bool** True if the asset is a main asset, false otherwise.

### Description

Checks whether the asset is a main asset in the Project window.

For example, an imported model has a GameObject as its root and several meshes and child GameObjects in an expanded state. The root GameObject is the main asset in this case.

```csharp
using UnityEditor;
using UnityEngine;public class Scriptable : ScriptableObject
{
}public class AssetDatabaseExamples : MonoBehaviour
{
    [MenuItem("AssetDatabase/Is Main Asset Example")]
    static void IsMainAssetExample()
    {
        var materialAsset = new Material(Shader.Find("Standard"));        //materialAsset is still in memory, therefore this will be False
        Debug.Log(AssetDatabase.IsMainAsset(materialAsset));        //Create a Scriptable object
        var scriptableAssetPath = "Assets/ScriptableObjects/NewObject.asset";
        var mainAsset = ScriptableObject.CreateInstance<Scriptable>();
        AssetDatabase.CreateAsset(mainAsset, scriptableAssetPath);        //Add the Material Asset to the Scriptable object, so that the Material becomes a Sub Asset of the Scriptable object
        AssetDatabase.AddObjectToAsset(materialAsset, scriptableAssetPath);
        AssetDatabase.SaveAssets();        //This will be false because material asset has been added to the main Asset and is now a Sub Asset
        Debug.Log(AssetDatabase.IsMainAsset(materialAsset));        //Remove the subAsset from the Scriptable object and create it as an Asset
        AssetDatabase.RemoveObjectFromAsset(materialAsset);
        AssetDatabase.CreateAsset(materialAsset, "Assets/Materials/New Mat0.mat");        //This will be True because the material is now the main Asset
        Debug.Log(AssetDatabase.IsMainAsset(materialAsset));
    }
}
```
