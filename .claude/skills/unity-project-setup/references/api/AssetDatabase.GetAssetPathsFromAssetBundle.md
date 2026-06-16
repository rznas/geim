<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/AssetDatabase.GetAssetPathsFromAssetBundle.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| assetBundleName | The name of the AssetBundle. |

### Description

Returns an array containing the paths of all assets marked with the specified AssetBundle name.

All paths returned are relative to the project folder, for example: "Assets/MyTextures/hello.png" will be returned if "hello.png" has been added to an Asset Bundle.

```csharp
using System.Collections.Generic;
using UnityEditor;
using UnityEngine;public class GetAssetPathsFromAssetBundleExample : MonoBehaviour
{
    [MenuItem("APIExamples/GetAssetPathsFromAssetBundle")]
    static void GatherAllAssetsInAssetBundles()
    {
        string[] allAssetBundles = AssetDatabase.GetAllAssetBundleNames();        List<string> allAssetsInAnAssetBundle = new List<string>();
        for (int i = 0; i < allAssetBundles.Length; ++i)
        {
            var curBundleName = allAssetBundles[i];
            var assetsInCurBundle = AssetDatabase.GetAssetPathsFromAssetBundle(curBundleName);            allAssetsInAnAssetBundle.AddRange(assetsInCurBundle);
        }        //allAssetsInAnAssetBundle now contains all assets that belong to an asset bundle
    }
}
```
