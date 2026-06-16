<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/PrefabUtility.SaveAsPrefabAssetAndConnect.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| instanceRoot | The GameObject to save as a Prefab and make into a Prefab instance. |
| assetPath | The path at which to save the prefab. Must be within the `Assets` folder and must end with the extension `.prefab`. |
| action | The interaction mode to use for this action. |
| success | The result of the save action, either successful or unsuccessful. Use this together with the console log to get more insight into the save process. |

### Returns

**GameObject** The root GameObject of the saved Prefab Asset, if available.

### Description

Creates a Prefab Asset at the given path from the given GameObject, including any children in the Scene and at the same time make the given GameObject into an instance of the new Prefab.

In case some of the children are Prefab instances they will automatically become nested inside the new Prefab.

The input object must be a plain GameObject or the outermost root of a Prefab Instance. It cannot be a child inside a Prefab instance.

If the input object is a Prefab instance root the resulting Prefab will be a Prefab Variant. If you want to create a new unique Prefab instead, you need to unpack the Prefab instance first.

The returned object is the root GameObject of the saved Prefab Asset, if available. If the editor is currently in the middle of an asset editing batch operation, as controlled with AssetDatabase.StartAssetEditing and AssetDatabase.StopAssetEditing, assets are not immediately imported upon being saved. In this case, SaveAsPrefabAsset will return null even if the save was successful because the saved Prefab Asset was not yet reimported and thus not yet available.

If you are saving over an existing Prefab, Unity tries to preserve references to the Prefab itself and the individual parts of the Prefab such as child GameObjects and Components. To do this, it matches the names of GameObjects between the new saved Prefab and the existing Prefab.

Note: Because this matching is done by name only, if there are multiple GameObjects with the same name in the Prefab's hierarchy, you cannot predict which will be matched. Therefore if you need to ensure your references are preserved when saving over an existing prefab, you must ensure all GameObjects within the Prefab have unique names.

Also note: You may encounter a similar problem in the case of preserving references to existing Components when you save over an existing Prefab, if a single GameObject within the Prefab has more than one of the same Component type attached. In this case you cannot predict which of them will be matched to the existing references.

Additional resources: PrefabUtility.SaveAsPrefabAsset and Unpacking Prefab instances.

```csharp
// This script creates a new menu item Examples>Create Prefab in the main menu.
// Use it to create Prefab(s) from the selected GameObject(s).
// Prefab(s) are placed in the "Prefabs" folder.using System.IO;
using UnityEngine;
using UnityEditor;public class Example
{
    // Creates a new menu item 'Examples > Create Prefab' in the main menu.
    [MenuItem("Examples/Create Prefab")]
    static void CreatePrefab()
    {
        // Keep track of the currently selected GameObject(s)
        GameObject[] objectArray = Selection.gameObjects;        // Loop through every GameObject in the array above
        foreach (GameObject gameObject in objectArray)
        {
            // Create folder Prefabs and set the path as within the Prefabs folder,
            // and name it as the GameObject's name with the .Prefab format
            if (!Directory.Exists("Assets/Prefabs"))
                AssetDatabase.CreateFolder("Assets", "Prefabs");
            string localPath = "Assets/Prefabs/" + gameObject.name + ".prefab";            // Make sure the file name is unique, in case an existing Prefab has the same name.
            localPath = AssetDatabase.GenerateUniqueAssetPath(localPath);            // Create the new Prefab and log whether Prefab was saved successfully.
            bool prefabSuccess;
            PrefabUtility.SaveAsPrefabAssetAndConnect(gameObject, localPath, InteractionMode.UserAction, out prefabSuccess);
            if (prefabSuccess == true)
                Debug.Log("Prefab was saved successfully");
            else
                Debug.Log("Prefab failed to save" + prefabSuccess);
        }
    }    // Disable the menu item if no selection is in place.
    [MenuItem("Examples/Create Prefab", true)]
    static bool ValidateCreatePrefab()
    {
        return Selection.activeGameObject != null && !EditorUtility.IsPersistent(Selection.activeGameObject);
    }
}
```
