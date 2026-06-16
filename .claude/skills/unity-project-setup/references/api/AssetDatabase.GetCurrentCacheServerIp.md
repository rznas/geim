<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/AssetDatabase.GetCurrentCacheServerIp.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Returns

**string** Returns a string representation of the current Cache Server IP address.

### Description

Gets the IP address of the Cache Server currently in use by the Editor.

```csharp
using UnityEditor;
using UnityEngine;public class AssetDatabaseExamples : AssetPostprocessor
{
    static void OnPostprocessAllAssets(string[] importedAssets, string[] deletedAssets, string[] movedAssets, string[] movedFromAssetPaths)
    {
        //Throw a warning in the console if Cache Server IP is not set or could not be connected to
        if(AssetDatabase.GetCurrentCacheServerIp() == "")
            Debug.LogWarning("Cache Server IP is not set!");
    }
}
```
