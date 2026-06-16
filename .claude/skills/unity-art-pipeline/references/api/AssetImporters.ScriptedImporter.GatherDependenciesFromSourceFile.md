<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/AssetImporters.ScriptedImporter.GatherDependenciesFromSourceFile.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| path | The path of the asset currently being processed by this method. |

### Returns

**void** A string array containing paths to the assets that you want create dependencies on for the asset currently being processed by this method.

### Description

A static callback that you can implement to set up artifact dependencies to other Assets, and optimize the order your assets are imported.

If you implement this method in a class inheriting from ScriptedImporter, it will be called for all Assets that your class is configured to import, before the importing starts.

Your ScriptedImporter class can then return an array of paths to other Assets that the Asset depends on the import result from (which might depend on how your ScriptedImporter interprets the contents of the file that it is importing).

Unity uses the information you return from this method to import assets in the most efficient order, avoiding the need to re-import assets multiple times where possible.

Note: Each type of importer has a specific priority in the import process. If you specify an asset dependency that belongs to a different import priority, it will not override the import priority, and therefore a repeat import can still occur.

For more information about artifact dependencies check AssetImportContext.DependsOnArtifact. For the dependencies reported using GatherDependenciesFromSourceFile, there is no need to report them again with AssetImportContext.DependsOnArtifact. It however valid to add more artifact dependencies that may be discovered during the actual import.

**Note:**
 In your implementation of this method, or any methods that you call from your implementation, you must not call any of the following APIs:

AssetDatabase.CreateAsset

AssetDatabase.LoadAllAssetRepresentationsAtPath

AssetDatabase.LoadAllAssetsAtPath

AssetDatabase.LoadAssetAtPath

AssetDatabase.LoadMainAssetAtPath

AssetImporter.GetAtPath

Unity throws an exception if you call any of the above methods from your implementation of this method.

```csharp
using UnityEditor.AssetImporters;[ScriptedImporter(1, "my_asset_type", AllowCaching = true)]
class MyAssetImporter : ScriptedImporter
{
    static string[] GatherDependenciesFromSourceFile(string path)
    {
        // Called before actual import for each changed asset that is imported by this importer type (assets having "my_asset_type" file extension in this example)
        // Extract the dependencies for the asset specified in path.
        // For asset dependencies that are discovered, return them in the string array, where the string is the path to asset
    }    public override void OnImportAsset(AssetImportContext ctx)
    {
        // There is no need to call ctx.DependsOnArtfact for the dependencies reported in GatherDependenciesFromSourceFile.
    }
}
```
