<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/AssetDatabase.GetAssetPathsFromAssetBundleAndAssetName.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| assetBundleName | The name of the AssetBundle. |
| assetName | The name of the asset. |

### Description

Get the Asset paths for all Assets tagged with assetBundleName and named assetName.

Get the Asset paths for all Assets tagged with assetBundleName and named assetName, regardless of extension or path e.g. "Assets/House.prefab", "Assets/Textures/House.png" and "Assets/Data/House.xml" when assetName is "House".

```csharp
using UnityEditor;
using UnityEngine;public class ExampleScript
{
    [MenuItem("AssetDatabase/Display assets in an AssetBundle")]
    static void ExampleScriptCode1()
    {
        string[] assetPaths = AssetDatabase.GetAssetPathsFromAssetBundleAndAssetName("assetname", "House");
        foreach (var assetPath in assetPaths)
            Debug.Log(assetPath);
    }    [MenuItem("AssetDatabase/AssetBundle creation")]
    static void ExampleScriptCode2()
    {
        BuildPipeline.BuildAssetBundles("Assets/AssetBundles", BuildAssetBundleOptions.None, BuildTarget.StandaloneOSX);
    }
}
```
