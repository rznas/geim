<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/AssetImporter-importSettingsMissing.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

The value is true when no meta file is provided with the imported asset.

```csharp
using UnityEngine;
using UnityEditor;public class ImportSettingsMissingExample : MonoBehaviour
{
    [MenuItem("Tools/ImportSettingsMissingExample")]
    static void Example()
    {
        var importers = AndroidAssetPackImporter.GetAllImporters();
        
        foreach (var importer in importers)
        {
            //Get the importSettingsMissing property
            var isMissing = importer.importSettingsMissing;
            var path = importer.assetPath;
            
            //Check if import settings are missing and re-import the asset if needed
            if (isMissing)
            {
                AssetDatabase.ImportAsset(path, ImportAssetOptions.ForceUpdate);
                Debug.Log($"Import settings were missing for: {path}. Asset re-imported.");
            }
            else
            {
                Debug.Log($"Import settings are present for: {path}");
            }
        }
    }
}
```
