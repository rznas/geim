<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/AssetImporter.GetImportLog.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Retrieves logs generated during the import of the asset at `path`.

Additional resources: ImportLog, AssetImportContext.LogImportError, AssetImportContext.LogImportWarning.

```csharp
using UnityEngine;
using UnityEditor;public class GetImportLogExample
{
    [MenuItem("Tools/GetImportLogExample")]
    static void Example()
    {
        var assetPath = "Path/To/Your/Asset";
        //Get import log for the specified asset
        var log = AssetImporter.GetImportLog(assetPath);
        
        //Log the import log entries
        if (log != null)
        {
            Debug.Log($"Import log for {assetPath}: {log.logEntries.Length} entries.");
            foreach (var entry in log.logEntries)
            {
                Debug.Log(entry.message);
            }
        }
        else
        {
            Debug.Log($"No import log found for {assetPath}");
        }
    }
}
```
