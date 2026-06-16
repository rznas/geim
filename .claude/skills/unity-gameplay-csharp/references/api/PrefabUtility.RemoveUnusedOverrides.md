<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/PrefabUtility.RemoveUnusedOverrides.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| prefabInstances | List of Prefab instances to remove unused overrides from. |
| action | UserAction will record undo and write result to Editor log file. |

### Description

This method identifies and removes all unused overrides from a list of Prefab Instance roots. See the manual Unused Overides for more detail.

```csharp
using System.IO;
using UnityEngine;
using UnityEditor;public class RemoveUnusedOverridesExample
{
    // Creates a new menu item 'Examples > Remove Unused Overrides Example' in the main menu.
    [MenuItem("Examples/Remove Unused Overrides Example")]
    static void RemoveUnusedOverrides()
    {
        var exampleGameObject = new GameObject("Example", typeof(BoxCollider));        // Create folder Prefabs and set the path as within the Prefabs folder,
        // and name it as the GameObject's name with the .Prefab format
        if (!Directory.Exists("Assets/Prefabs"))
            AssetDatabase.CreateFolder("Assets", "Prefabs");
        string localPath = "Assets/Prefabs/" + exampleGameObject.name + ".prefab";        // Make sure the file name is unique, in case an existing Prefab has the same name.
        localPath = AssetDatabase.GenerateUniqueAssetPath(localPath);        // Create the new Prefab and log whether Prefab was saved successfully.
        var prefabAsset = PrefabUtility.SaveAsPrefabAssetAndConnect(exampleGameObject, localPath, InteractionMode.UserAction, out bool prefabSuccess);        //Set a value on the example script and record it
        exampleGameObject.GetComponent<BoxCollider>().center = new Vector3(2.0f, 2.0f, 2.0f);
        PrefabUtility.RecordPrefabInstancePropertyModifications(exampleGameObject.GetComponent<BoxCollider>());        //Remove the component from the prefab asset. We now have an unused override.
        PrefabUtility.ApplyRemovedComponent(exampleGameObject, prefabAsset.GetComponent(typeof(BoxCollider)), InteractionMode.UserAction);        //Remove the unused override that was created earlier
        PrefabUtility.RemoveUnusedOverrides(new [] { exampleGameObject }, InteractionMode.UserAction);
    }
}
```
