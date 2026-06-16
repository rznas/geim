<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/AssetImporter.GetExternalObjectMap.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Returns

**Dictionary<SourceAssetIdentifier,Object>** The map between a sub-asset and an external Asset.

### Description

Gets a copy of the external object map used by the AssetImporter.

Changing the map does not affect the state of the AssetImporter.

Additional resources: AssetImporter.AddRemap, AssetImporter.RemoveRemap.

```csharp
using UnityEditor;
using UnityEngine;public class GetExternalObjectMapExample
{
    [MenuItem("Tools/GetExternalObjectMapExample")]
    static void Example()
    {
        var importer = AssetImporter.GetAtPath("Path/To/Your/Asset");
        //Get external object map from asset pack importer
        var externalObjectMap = importer.GetExternalObjectMap();
        
        //Log each external reference if any exist; otherwise, report that none are present
        if (externalObjectMap.Count > 0)
        {
            foreach (var map in externalObjectMap)
            {
                Debug.Log($"{map.Value} path: {map.Key} in asset pack importer at path: {importer.assetPath}");
            }
        }
        else
        {
            Debug.Log("No external object map found for the specified asset pack importer.");
        }
    }
}
```
