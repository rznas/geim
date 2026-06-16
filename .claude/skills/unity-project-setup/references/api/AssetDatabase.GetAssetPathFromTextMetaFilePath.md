<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/AssetDatabase.GetAssetPathFromTextMetaFilePath.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| path | The .meta file name. |

### Description

Gets the path to the asset file associated with a text .meta file.

```csharp
using System.IO;
using UnityEditor;
using UnityEngine; public class AssetDatabaseExamples : MonoBehaviour
 {
     [MenuItem("AssetDatabase/Get All Assets With Meta File")]
     static void GetAllAssetsWithMetaFiles()
     {
         var files = Directory.GetFiles("Assets/", "*.meta", SearchOption.AllDirectories);         foreach (var file in files)
         {
             var path = AssetDatabase.GetAssetPathFromTextMetaFilePath(file);
             Debug.Log(path);
         }
     }
 }
```
