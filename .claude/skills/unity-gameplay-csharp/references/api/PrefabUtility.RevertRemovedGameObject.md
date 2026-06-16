<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/PrefabUtility.RevertRemovedGameObject.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| gameObjectInInstance | A GameObject in the Prefab instance containing the removed GameObject. |
| assetGameObject | The GameObject on the Prefab Asset corresponding to the removed GameObject on the instance. |
| action | The interaction mode for this action. |

### Description

Adds this removed GameObject back on the Prefab instance.

After the revert action the GameObject will once again exist on the Prefab instance.

The GameObject's components and children will also exist again, unless they had previously been removed.

Note that added GameObjects and added component overrides, which were in the hierarchy of the reverted GameObject before it was removed, will not be restored.

Additional resources: PrefabUtility.ApplyRemovedGameObject, PrefabUtility.GetRemovedGameObjects.

```csharp
using System.Collections.Generic;
using System.IO;
using UnityEditor;
using UnityEditor.SceneManagement;
using UnityEngine;// Creates new menu items under 'Examples' in the main menu.
public class RevertRemovedGameObjectExample
{
    [MenuItem("Examples/RevertRemovedGameObject Example 1")]
    static void CreatePrefabAndRevertChanges()
    {
        // Create folder Prefabs and set the path as within the Prefabs folder,
        // and name it as the GameObject's name with the .Prefab format
        if (!Directory.Exists("Assets/Prefabs"))
            AssetDatabase.CreateFolder("Assets", "Prefabs");        //Setup hierarchy with root and one child
        GameObject rootGameObject = new GameObject("Root");
        GameObject child = new GameObject("Child");
        child.transform.parent = rootGameObject.transform;        //Create prefab based on the GameObject hierarchy we just created
        GameObject prefabAsset = PrefabUtility.SaveAsPrefabAssetAndConnect(rootGameObject, "Assets/Prefabs/" + rootGameObject.name + ".prefab", InteractionMode.AutomatedAction);        //Get the corresponding object matching the Child GameObject that was destroyed
        GameObject correspondingChildGameObject = prefabAsset.transform.GetChild(0).gameObject;        //Destroy child GameObject so we can apply the override to the Prefab
        Object.DestroyImmediate(child);        //Use the variables from above to revert the removed GameObject override in the instance and restore the child GameObject
        PrefabUtility.RevertRemovedGameObject(rootGameObject, correspondingChildGameObject, InteractionMode.AutomatedAction);        if (prefabAsset.transform.childCount == 1)
            Debug.Log("'Child' GameObject was removed and the override reverted successfully.");
        else
            Debug.Log("The override was not reverted successfully");
    }    [MenuItem("Examples/RevertRemovedGameObject Example 2")]
    static void CreatePrefabAndApplyChangesWithGetRemovedGameObjects()
    {
        // Create folder Prefabs and set the path as within the Prefabs folder,
        // and name it as the GameObject's name with the .Prefab format
        if (!Directory.Exists("Assets/Prefabs"))
            AssetDatabase.CreateFolder("Assets", "Prefabs");        //Setup hierarchy with root and one child
        GameObject rootGameObject = new GameObject("Root");
        GameObject child = new GameObject("Child");
        child.transform.parent = rootGameObject.transform;        //Create prefab based on the GameObject hierarchy we just created
        GameObject prefabAsset = PrefabUtility.SaveAsPrefabAssetAndConnect(rootGameObject, "Assets/Prefabs/" + rootGameObject.name + ".prefab", InteractionMode.AutomatedAction);        //Destroy child GameObject so we can apply the override to the Prefab
        Object.DestroyImmediate(child);        //Get the override and the information to apply the changes to the Prefab asset
        List<RemovedGameObject> removedGameObjects = PrefabUtility.GetRemovedGameObjects(rootGameObject);
        GameObject assetGameObject = removedGameObjects[0].assetGameObject;
        GameObject parentOfRemovedGameObjectInInstance = removedGameObjects[0].parentOfRemovedGameObjectInInstance;        //Use the variables from above to revert the removed GameObject override in the instance and restore the child GameObject
        PrefabUtility.RevertRemovedGameObject(parentOfRemovedGameObjectInInstance, assetGameObject, InteractionMode.AutomatedAction);        if (prefabAsset.transform.childCount == 1)
            Debug.Log("'Child' GameObject was removed and the override reverted successfully.");
        else
            Debug.Log("The override was not reverted successfully");
    }
}
```
