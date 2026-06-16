<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/AssetImporter-assetPath.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

The path name of the asset for this importer. (Read Only)

```csharp
using UnityEngine;
using UnityEditor;
public class AssetPathExample : MonoBehaviour
{
    [MenuItem("Tools/AssetPathExample")]
    static void Example()
    {
        var importers = AndroidAssetPackImporter.GetAllImporters();
        
        foreach (var importer in importers)
        {
            var labels = new string[0];
            //Get asset path
            var path = importer.assetPath;
            //Use asset path to set labels if path contains "Icon"
            if (path.Contains("Icon"))
            {
                labels = new [] { "Icon" };
                AssetDatabase.SetLabels(AssetDatabase.LoadAssetAtPath<Object>(path), labels);
            }
        }
    }
}
```
