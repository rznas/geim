<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/AssetDatabase.GetTextMetaFilePathFromAssetPath.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| path | Project relative path to the asset. |

### Returns

**string** The path to the .meta text file or an empty string if the file does not exist.

### Description

Gets the path to the text .meta file associated with an asset.

```csharp
using UnityEngine;
using UnityEditor;public class AssetDatabaseExamples
{
    [MenuItem("AssetDatabase/Get Meta file path of Animations")]
    static void GetMetaFilePathOfAllAnimations()    {
        //This will create a list of file paths of all Animation assets.
        string[] animAssetsGuids = AssetDatabase.FindAssets("t:Animation");        foreach (var animAssetGuid in animAssetsGuids)
        {
            //This will output the path of an asset and a .meta file associated with an asset
            string animAsset = AssetDatabase.GUIDToAssetPath(animAssetGuid);
            string metaPath = AssetDatabase.GetTextMetaFilePathFromAssetPath(animAsset);
            Debug.Log("Asset file path: " + animAsset);
            Debug.Log("Meta file path: " + metaPath);
        }
    }
}
```
