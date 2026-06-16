<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/AssetDatabase.SetMainObject.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| mainObject | The object to become the main object. |
| assetPath | Path to the asset file. |

### Description

Specifies which object in the asset file should become the main object after the next import.

All other objects in the asset become children of the main object. NOTE: This function modifies the importer object, not the asset itself. The next import reflects the change in the imported asset.

```csharp
using UnityEditor;
using UnityEngine;public class Scriptable : ScriptableObject
{
}
public class AssetDatabaseExamples : MonoBehaviour
{
    [MenuItem("AssetDatabase/Set Main Object Example")]
    public static void SetMainObjectExample()
    {
        //Create a Scriptable Object and a Material
        var materialAsset = new Material(Shader.Find("Standard"));
        var scriptableAssetPath = "Assets/ScriptableObjects/NewObject.asset";
        var mainAsset = ScriptableObject.CreateInstance<Scriptable>();
        AssetDatabase.CreateAsset(mainAsset, scriptableAssetPath);        //Add the Material to the Scriptable Object
        AssetDatabase.AddObjectToAsset(materialAsset, scriptableAssetPath);
        AssetDatabase.SaveAssets();        //Set the Material to be the main Object and import it
        AssetDatabase.SetMainObject(materialAsset, scriptableAssetPath);
        AssetDatabase.ImportAsset(scriptableAssetPath);
    }
}
```
