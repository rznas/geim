<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/AssetDatabase.AssetEditingScope.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Places the Asset Database into a state that temporarily prevents automatic import, allowing you to group several asset imports together into one larger import.

This class allows you to pause the Asset Database's automatic import of new or modified assets. This is useful if you want to perform actions via script that make multiple changes to assets without the Asset Database importing each change in a separate import process. 

Instead, you can pause imports, make multiple changes, then resume imports, which means Unity will only perform one input process for all the changes you made while the importing was paused.

This class is an alternative to the AssetDatabase.StartAssetEditing and AssetDatabase.StopAssetEditing methods, which serve the same purpose.

The `AssetEditingScope` class is intended to be used within a `using` statement, which automatically disposes of the class, as in the following example:

```csharp
using UnityEngine;
using UnityEditor;public class AssetEditingScopeExample : MonoBehaviour
{
    [MenuItem("APIExamples/AssetEditingScope")]
    static void CallAssetDatabaseAPIsBetweenAssetEditingScope()
    {
        // Place the Asset Database in a state where
        // importing is suspended for most APIs
        using (var editingScope = new AssetDatabase.AssetEditingScope())
        {
            // Modify the assets however we like
            AssetDatabase.CopyAsset("Assets/CopyAsset.txt", "Assets/Text/CopyAsset.txt");
            AssetDatabase.MoveAsset("Assets/MoveAsset.txt", "Assets/Text/MoveAsset.txt");
        }
        // Assets will now be imported again, as editingScope has been disposed.
    }
}
```

If you use it in a different context other than a `using` statement, you must ensure that its `Dispose()` method is called or the Asset Database will remain in a paused state.

Additional resources: AssetDatabase.StartAssetEditing, AssetDatabase.StopAssetEditing.

### Constructors

| Constructor | Description |
| --- | --- |
| AssetDatabase.AssetEditingScope | Instantiates AssetEditingScope. Equivalent to calling AssetDatabase.StartAssetEditing(). |

### Public Methods

| Method | Description |
| --- | --- |
| Dispose | Disposes of AssetEditingScope. Equivalent to calling AssetDatabase.StopAssetEditing(). |
