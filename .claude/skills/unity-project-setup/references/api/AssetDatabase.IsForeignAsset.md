<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/AssetDatabase.IsForeignAsset.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| obj | The object of the asset. |
| entityId | The EntityID of the asset. |
| instanceID | The InstanceID of the asset. |

### Returns

**bool** Returns true if the asset is a foreign asset, and false otherwise.

### Description

Determines whether a given asset is an external asset, also known as a foreign asset.

A foreign asset is any asset that isn't created within Unity, for example a .png texture file. An asset created in Unity is a Native asset importers reference, for example a material or a prefab.

Unity creates a serialized representation of foreign assets in the Project's Library folder during import. This happens when the asset is first added, when it's updated externally, or when you modify its import settings in the Editor.

Additional resources: AssetDatabase.IsNativeAsset.

```csharp
using UnityEditor;
using UnityEngine;public class AssetDatabaseExamples : MonoBehaviour
{
    [MenuItem("AssetDatabase/Find Foreign Assets")]
    static void FindForeignAssets()
    {
        //Find all foreign assets
        foreach (var guid in AssetDatabase.FindAssets("",new []{"Assets"}))
        {
            var path = AssetDatabase.GUIDToAssetPath(guid);
            var asset = AssetDatabase.LoadMainAssetAtPath(path);
            var assetIsForeign = AssetDatabase.IsForeignAsset(asset);
            if(assetIsForeign)
                Debug.Log(asset);
        }
    }
}
```
