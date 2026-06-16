<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/AssetDatabase.SetLabels.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| obj | The asset object. |
| labels | An array of labels. |

### Description

Replaces the list of labels on an asset.

```csharp
using UnityEngine;
using UnityEditor;public class AssetDatabaseExamples : MonoBehaviour
{
    [MenuItem("AssetDatabase/Set Vegetation Labels")]
    static void SetVegetationAssetLabels()
    {
        //Search the Assets folder for all assets with "tree" in its name and then add "Vegetation" Label to every asset that we find
        foreach (var guid in AssetDatabase.FindAssets("tree", new [] {"Assets"}))
        {
            var path = AssetDatabase.GUIDToAssetPath(guid);
            var asset = AssetDatabase.LoadMainAssetAtPath(path);
            AssetDatabase.SetLabels(asset, new []{"Vegetation"});
        }
    }
}
```
