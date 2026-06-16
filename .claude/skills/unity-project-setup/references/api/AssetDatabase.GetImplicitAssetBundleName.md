<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/AssetDatabase.GetImplicitAssetBundleName.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| assetPath | The asset's path. |

### Returns

**string** Returns the name of the AssetBundle that a given asset belongs to. See the method description for more details.

### Description

Returns the name of the AssetBundle that a given asset belongs to.

If the asset has been explicitly assigned to an AssetBundle, then that value is returned. If the asset doesn't belong to an AssetBundle, its parent folders are traversed until one that belongs to an AssetBundle is found. If a folder that matches this condition is found, its AssetBundle name is returned. If none is found, an empty string is returned.

```csharp
using System.Collections.Generic;
using System.Linq;
using UnityEngine;
using UnityEditor;
public class AssetDatabaseExamples : MonoBehaviour
{
    [MenuItem("AssetDatabase/Check Bundle Names")]
    static void CheckBundleNames()
    {
        var assetsWithIncorrectBundle = new List<string>();
        var correctBundleName = "metaltexturebundle";
        //Check if any of the assets have an incorrect bundle set to them
        for (var i = 0; i < 10; i++)
        {
            var texturePath = $"Assets/Textures/Metal/Metal{i}.png";
            if(AssetDatabase.GetImplicitAssetBundleName(texturePath) != correctBundleName)
                assetsWithIncorrectBundle.Add(texturePath);
        }        //If no such assets exist then return
        if (!assetsWithIncorrectBundle.Any())
            return;
        //If there are such assets then print them out
        var incorrectAssetNames = "";
        foreach (var asset in assetsWithIncorrectBundle)
        {
            incorrectAssetNames += $"\"{asset}\" ";
        }
        Debug.LogWarning($"Assets with an incorrect Asset Bundle {incorrectAssetNames}");
    }
}
```
