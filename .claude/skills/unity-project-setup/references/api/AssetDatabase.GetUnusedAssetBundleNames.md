<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/AssetDatabase.GetUnusedAssetBundleNames.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Returns

**string[]** Returns any unused AssetBundle names in the Asset Database.

### Description

Obtains any unused AssetBundle names in the Asset Database.

```csharp
using System.Linq;
using UnityEngine;
using UnityEditor;public class AssetDatabaseExamples : MonoBehaviour
{
    [MenuItem("AssetDatabase/Check For Unused Asset Bundles")]
    static void FindUnusedAssetBundles()
    {
        var unusedBundles = AssetDatabase.GetUnusedAssetBundleNames();
        var unusedAssetBundleString = "";        //Add all except the last Asset Bundle name into the Unused Asset Bundle String with a comma at the end
        for (var i = 0; i < unusedBundles.Length - 1; i++)
        {
            unusedAssetBundleString += unusedBundles[i] + ", ";
        }
        //Add the last string without a comma
        unusedAssetBundleString += unusedBundles.Last();
        Debug.Log($"Unused Asset Bundles: {unusedAssetBundleString}.");
    }
}
```
