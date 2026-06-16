<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/AssetDatabase.IsNativeAsset.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| obj | The object of the asset. |
| entityId | The EntityID of the asset. |
| instanceID | The InstanceID of the asset. |

### Returns

**bool** True if the asset is a native asset, otherwise false.

### Description

Determines whether the asset is a native asset.

A native asset is a file produced directly by Unity's serialization system (for example, a .mat material file is a native asset)

Scenes, prefabs and assembly definitions aren't native assets. For more information, refer to Native asset importers reference.

Additional resources: AssetDatabase.IsForeignAsset.

```csharp
using UnityEditor;
using UnityEngine;public class AssetDatabaseExamples : MonoBehaviour
{
    [MenuItem("AssetDatabase/List All Native Files")]
    static void ListNativeFiles()
    {
        //List all native assets in the project
        foreach (var guid in AssetDatabase.FindAssets("", new []{"Assets"}))
        {
            var path = AssetDatabase.GUIDToAssetPath(guid);
            var asset = AssetDatabase.LoadMainAssetAtPath(path);
            if(AssetDatabase.IsNativeAsset(asset))
                Debug.Log(asset);
        }
    }
}
```
