<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/AndroidAssetPackImporter.GetAllImporters.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Returns

**AndroidAssetPackImporter[]** Returns an array with all Android asset pack importers.

### Description

Gets all Android asset pack importers.

```csharp
using UnityEditor;
using UnityEngine;public class GetAllImportersExample
{
    [MenuItem("Tools/GetAllImportersExample")]
    static void Example()
    {
        //Get all asset pack importers 
        var importers = AndroidAssetPackImporter.GetAllImporters();
        
        foreach (var importer in importers)
        {
            Debug.Log($"Asset pack importer found at: {importer.assetPath}");
        }
    }
}
```
