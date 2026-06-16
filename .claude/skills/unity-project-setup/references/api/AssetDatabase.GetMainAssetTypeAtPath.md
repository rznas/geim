<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/AssetDatabase.GetMainAssetTypeAtPath.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| assetPath | Filesystem path of the asset to load. |

### Returns

**Type** Returns the type of the main asset object at `assetPath`.

### Description

Obtains the type of the main asset object.

All paths are relative to the Project folder, for example: "Assets/MyTextures/hello.png".

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
            var path = AssetDatabase.GUIDToAssetPath(guid);
            var typeString = AssetDatabase.GetMainAssetTypeAtPath(path).ToString();
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
