<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/AssetModificationProcessor.OnWillMoveAsset.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Unity calls this method when it is about to move an Asset on disk.

Implement this method to customize the actions Unity performs when moving an Asset inside the Editor. This method allows you to move the Asset yourself but, if you do, please remember to return the correct enum. Alternatively, you can perform some processing and let Unity move the file. The moving of the asset can be prevented by returning AssetMoveResult.FailedMove You should not call any Unity AssetDatabase API from within this callback, preferably restrict yourself to the usage of file operations or VCS APIs.

```csharp
using UnityEditor;
using UnityEngine;public class CustomAssetModificationProcessor : UnityEditor.AssetModificationProcessor
{
    private static AssetMoveResult OnWillMoveAsset(string sourcePath, string destinationPath)
    {
        Debug.Log("Source path: " + sourcePath + ". Destination path: " + destinationPath + ".");
        AssetMoveResult assetMoveResult = AssetMoveResult.DidMove;        // Perform operations on the asset and set the value of 'assetMoveResult' accordingly.        return assetMoveResult;
    }
}
```
