<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/AssetImporter.SaveAndReimport.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Save asset importer settings if asset importer is dirty.

Under the hood this calls AssetDatabase.ImportAsset. Additional resources: EditorUtility.SetDirty.

```csharp
using UnityEngine;
using UnityEditor;
public class SaveAndReinportExample : MonoBehaviour
{
    [MenuItem("Tools/SaveAndReimportExample")]
    static void Example()
    {
        var importer = AssetImporter.GetAtPath("Path/To/Your/Asset");
        
        //Setting asset as dirty to mark it for reimport
        EditorUtility.SetDirty(importer);
        //Save and reimport to apply changes
        importer.SaveAndReimport();
    }
}
```
