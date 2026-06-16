<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/AssetDatabase.RemoveUnusedAssetBundleNames.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Remove all the unused AssetBundle names in the Asset Database.

```csharp
using System.Linq;
using UnityEngine;
using UnityEditor;public class AssetDatabaseExamples : MonoBehaviour
{
    [MenuItem("AssetDatabase/Remove Unused Asset Bundles")]
    static void FindAndRemoveUnusedAssetBundles()
    {
        var unusedBundles = AssetDatabase.GetUnusedAssetBundleNames();
        var unusedAssetBundleString = "";        //Add all except the last Asset Bundle name into the Unused Asset Bundle String with a comma at the end
        for (var i = 0; i < unusedBundles.Length - 1; i++)
        {
            unusedAssetBundleString += unusedBundles[i] + ", ";
        }
        //Add the last string without a comma
        unusedAssetBundleString += unusedBundles.Last();
        //Remove the asset bundles from the editor
        AssetDatabase.RemoveUnusedAssetBundleNames();
        Debug.Log($"Removed Asset Bundles: {unusedAssetBundleString}.");
    }
}
```
