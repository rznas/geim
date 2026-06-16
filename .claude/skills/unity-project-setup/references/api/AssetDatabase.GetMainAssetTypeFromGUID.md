<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/AssetDatabase.GetMainAssetTypeFromGUID.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| guid | The GUID of the asset. |

### Returns

**Type** Returns the type of the main asset object with `guid`.

### Description

Obtains the type of the main object of a given asset.

```csharp
using System.Collections.Generic;
using UnityEngine;
using UnityEditor;public class AssetDatabaseExamples : MonoBehaviour
{
    [MenuItem("AssetDatabase/Print Type Count")]
    static void GetAllAssetTypeCount()
    {
        var typeCount = new Dictionary<string, uint>();
        //Put all the types that were found in the typeCount dictionary and increment their count
        foreach (var guid in AssetDatabase.FindAssets("", new []{"Assets"}))
        {
            var typeString = AssetDatabase.GetMainAssetTypeFromGUID(new GUID(guid)).ToString();
            if (typeCount.ContainsKey(typeString))
                typeCount[typeString]++;
            else
                typeCount.Add(typeString, 1);
        }
        //Print types and their count into the Unity Console
        foreach (var element in typeCount)
        {
            Debug.Log(element);
        }
    }
}
```
