<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/AssetDatabase.GetCachedIcon.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| path | Path to the asset. |

### Description

Retrieves an icon for the asset at the given asset path.

```csharp
using System.Collections.Generic;
using UnityEditor;
using UnityEngine;public class AssetDatabaseExamples : MonoBehaviour
{
    [MenuItem("AssetDatabase/Get Cached Icon Example")]
    public static void GetCachedIconExample()
    {
        var textureList = new List<Texture>();
        //Get asset icons and put them in a list
        foreach (var guid in AssetDatabase.FindAssets("", new []{"Assets"}))
        {
            var path = AssetDatabase.GUIDToAssetPath(guid);
            textureList.Add(AssetDatabase.GetCachedIcon(path));
        }        //Set Material textures to the asset icons
        var textureNo = 0;
        for (var i = 0; i < 10; i++)
        {
            var path = $"Assets/Materials/GroundMaterial{i}.mat";
            var asset = (Material)AssetDatabase.LoadMainAssetAtPath(path);
            if (textureNo >= textureList.Count)
                textureNo = 0;
            asset.mainTexture = textureList[textureNo++];
        }
    }
}
```
