<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/AssetDatabase.RemoveAssetBundleName.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| assetBundleName | The AssetBundle name you want to remove. |
| forceRemove | Flag to indicate if you want to remove the AssetBundle name even it's in use. |

### Description

Remove the AssetBundle name from the Asset Database.

```csharp
using UnityEditor;
using UnityEngine;public class AssetDatabaseExamples : MonoBehaviour
{
    [MenuItem("AssetDatabase/Remove Bundle Name")]
    static void RemoveAssetBundleNameExample()
    {
        //Remove Asset Bundle name that is on Cube.prefab and it's dependencies
        var prefabPath = "Assets/Prefabs/Cube.prefab";
        var assetBundleName = AssetDatabase.GetImplicitAssetBundleName(prefabPath);
        var assetBundleDependencies = AssetDatabase.GetAssetBundleDependencies(assetBundleName, true);
        AssetDatabase.RemoveAssetBundleName(assetBundleName, true);
        foreach (var bundleName in assetBundleDependencies)
        {
            AssetDatabase.RemoveAssetBundleName(bundleName, true);
        }
    }
}
```
