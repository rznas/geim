<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/AssetDatabase.ImportAsset.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| path | The path of the asset to import. |

### Description

Import asset at path.

Import an asset at the specified path. Calling this method triggers a number of callbacks including AssetModificationProcessor.OnWillSaveAssets and AssetPostprocessor.OnPostprocessAllAssets.

All paths are relative to the project folder, for example: "Assets/MyTextures/hello.png"

Additional resources: ImportAssetOptions.

```csharp
using System.IO;
using UnityEditor;
using UnityEngine;public class ImportAssetExample : MonoBehaviour
{
    [MenuItem("APIExamples/ImportAsset")]
    static void ImportAssetOnlyImportsSingleAsset()
    {
        string[] fileNames = new[] { "test_file01.txt", "test_file02.txt" };        for (int i = 0; i < fileNames.Length; ++i)
        {
            var unimportedFileName = fileNames[i];
            var assetsPath = Application.dataPath + "/Artifacts/" + unimportedFileName;
            File.WriteAllText(assetsPath, "Testing 123");
        }        var relativePath = "Assets/Artifacts/test_file01.txt";
        AssetDatabase.ImportAsset(relativePath);
    }
}public class PostProcessImportAsset : AssetPostprocessor
{
    //Based on this example, the output from this function should be:
    //  OnPostprocessAllAssets
    //  Imported: Assets/Artifacts/test_file01.txt
    //
    //test_file02.txt should not even show up on the Project Browser
    //until a refresh happens.
    static void OnPostprocessAllAssets(string[] importedAssets, string[] deletedAssets, string[] movedAssets, string[] movedFromAssetPaths)
    {
        Debug.Log("OnPostprocessAllAssets");        foreach (var imported in importedAssets)
            Debug.Log("Imported: " + imported);        foreach (var deleted in deletedAssets)
            Debug.Log("Deleted: " + deleted);        foreach (var moved in movedAssets)
            Debug.Log("Moved: " + moved);        foreach (var movedFromAsset in movedFromAssetPaths)
            Debug.Log("Moved from Asset: " + movedFromAsset);
    }
}
```
