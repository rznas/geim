<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/AssetDatabase.Refresh.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| options | Set any asset import options. For more information, refer to ImportAssetOption. |

### Description

Import any changed assets.

Import any assets that have modified or added content, import settings, or dependencies since the last refresh. The Asset Database also updates for any assets that have been removed. This operation happens synchronously for asset imports, and asynchronously for script compilation. 

This method implicitly triggers an asset garbage collection. For more information, refer to Resources.UnloadUnusedAssets.

Most of the time, you don't need to call this method yourself, because the Editor automatically detects changes to assets on disk and imports them as needed. You might need to call this method if you have disabled Auto Refresh in the Asset Pipeline Preferences, or if you have made changes to assets on disk from an external application while the Editor is running.

Additional resources: ImportAssetOptions.

```csharp
using System.Collections.Generic;
using System.IO;
using UnityEditor;
using UnityEngine;public class AssetDatabaseExamples : MonoBehaviour
{
    [MenuItem("AssetDatabase/Refresh Example")]
    public static void RefreshExample()
    {
        var folderList = new List<string>{"Textures", "Models", "Sounds"};
        foreach (var folder in folderList)
        {
            Directory.CreateDirectory($"Assets/{folder}");
        }        foreach (var folder in folderList)
        {
            //Output will be false
            Debug.Log(AssetDatabase.IsValidFolder($"Assets/{folder}"));
        }        AssetDatabase.Refresh();
        foreach (var folder in folderList)
        {
            //Output will be true
            Debug.Log(AssetDatabase.IsValidFolder($"Assets/{folder}"));
        }
    }
}
```
