<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/PrefabUtility.LoadPrefabContents.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| assetPath | The path of the Prefab Asset to load the contents of. |

### Returns

**GameObject** The root of the loaded contents.

### Description

Loads a Prefab Asset at a given path into an isolated Scene and returns the root GameObject of the Prefab.

You can use this to get the content of the Prefab and modify it directly instead of going through an instance of the Prefab. This is useful for batch operations.

To release the prefab and isolated scene from memory when you are finished with it, call UnloadPrefabContents. If you modified the Prefab contents, use SaveAsPrefabAsset to save any changes, and then call UnloadPrefabContents.

Additional resources: EditPrefabContentsScope.

```csharp
using UnityEngine;
using UnityEditor;public class Example
{
    [MenuItem("Examples/Add BoxCollider to Prefab Asset")]
    static void AddBoxColliderToPrefab()
    {
        // Get the Prefab Asset root GameObject and its asset path.
        GameObject assetRoot = Selection.activeObject as GameObject;
        string assetPath = AssetDatabase.GetAssetPath(assetRoot);        // Load the contents of the Prefab Asset.
        GameObject contentsRoot = PrefabUtility.LoadPrefabContents(assetPath);        // Modify Prefab contents.
        contentsRoot.AddComponent<BoxCollider>();        // Save contents back to Prefab Asset and unload contents.
        PrefabUtility.SaveAsPrefabAsset(contentsRoot, assetPath);
        PrefabUtility.UnloadPrefabContents(contentsRoot);
    }    [MenuItem("Examples/Add BoxCollider to Prefab Asset", true)]
    static bool ValidateAddBoxColliderToPrefab()
    {
        GameObject go = Selection.activeObject as GameObject;
        if (go == null)
            return false;        return PrefabUtility.IsPartOfPrefabAsset(go);
    }
}
```
