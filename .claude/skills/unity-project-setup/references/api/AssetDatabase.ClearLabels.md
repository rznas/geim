<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/AssetDatabase.ClearLabels.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| obj | The asset object to remove labels from. |

### Description

Removes all labels attached to an asset.

```csharp
using UnityEngine;
using UnityEditor;
public class AssetDatabaseExamples : MonoBehaviour
{
    [MenuItem("AssetDatabase/Clear Labels")]
    static void ClearAssetLabels()
    {
        for (var i = 0; i < 10; i++)
        {
            var prefabPath = $"Assets/Prefabs/Litter/Litter{i}.prefab";
            var asset = AssetDatabase.LoadMainAssetAtPath(prefabPath);
            AssetDatabase.ClearLabels(asset);
        }
    }
}
```
