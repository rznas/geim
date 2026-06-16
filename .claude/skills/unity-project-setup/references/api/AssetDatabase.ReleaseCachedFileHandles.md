<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/AssetDatabase.ReleaseCachedFileHandles.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Calling this function will release file handles internally cached by Unity. This allows modifying asset or meta files safely thus avoiding potential file sharing IO errors.

```csharp
using System.IO;
using UnityEditor;
using UnityEngine;public class AssetDatabaseExamples : MonoBehaviour
{
    //Replace meta file information
    [MenuItem("AssetDatabase/Release Cached File Handles Example")]
    public static void ReleaseCachedFileHandlesExample()
    {
        //Read and store meta information that will be replacing the meta file
        var metaContent = File.ReadAllText("NewMetaFile.txt");        //Get Material's meta file path
        var metaFilePath = AssetDatabase.GetTextMetaFilePathFromAssetPath("Assets/Material.mat");        //Release CachedFileHandles to avoid any I/O errors
        AssetDatabase.ReleaseCachedFileHandles();        //Replace the meta file with the contents of NewMetaFile.txt
        File.WriteAllText(metaFilePath, metaContent);
        AssetDatabase.Refresh();
    }
}
```
