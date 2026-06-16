<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/AssetDatabase.IsSubAsset.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| obj | The asset object to query. |
| instanceID | Instance ID of the asset object to query. |
| entityId | The EntityID of the asset object to query. |

### Returns

**bool** True if the asset is part of another asset, otherwise false.

### Description

Checks whether the asset is part of another asset.

Some assets may form part of another asset (for example, a procedural material can be part of a material package). This method determines whether an asset is subordinated in this way.

```csharp
using UnityEditor;
using UnityEngine;
public class Scriptable : ScriptableObject
{
}public class AssetDatabaseExamples : MonoBehaviour
{
    [MenuItem("AssetDatabase/Is Sub Asset Example")]
    static void IsSubAssetExample()
    {
        var materialAsset = new Material(Shader.Find("Standard"));
        //materialAsset is still in memory, therefore this will be False
        Debug.Log(AssetDatabase.IsSubAsset(materialAsset));        //Create a Scriptable object
        var scriptableAssetPath = "Assets/ScriptableObjects/NewObject.asset";
        var mainAsset = ScriptableObject.CreateInstance<Scriptable>();
        AssetDatabase.CreateAsset(mainAsset, scriptableAssetPath);        //Add the Material Asset to the Scriptable object, so that the Material becomes a Sub Asset of the Scriptable object
        AssetDatabase.AddObjectToAsset(materialAsset, scriptableAssetPath);
        AssetDatabase.SaveAssets();        //This will be True because the Material asset has been added to the mainAsset and is now a Sub Asset
        Debug.Log(AssetDatabase.IsSubAsset(materialAsset));
    }
}
```
