<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/PrefabUtility.ApplyRemovedGameObject.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| gameObjectInInstance | A GameObject in the Prefab instance containing the removed GameObject. |
| assetGameObject | The GameObject in the Prefab Asset corresponding to the removed GameObject on the instance. |
| action | The interaction mode for this action. |

### Description

Removes the GameObject from the source Prefab Asset.

When a GameObject is removed from a Prefab instance, that modification is a type of Instance Override. The act of applying the change (the removal of the GameObject) to the Prefab means the GameObject is removed from the Prefab Asset itself, along with its components and GameObject children, and is no longer an override on the Prefab instance.

When applying a removed GameObject to a Prefab Asset, you must supply the asset path as a parameter. This is because there are some situations where there are multiple possible targets to apply the change to. For example, if the GameObject was removed from a GameObject that is part of a nested Prefab instance, you may have the choice of applying the change to the inner nested Prefab Asset, or to the outer root Prefab Asset. Therefore, by specifying the asset path, you make it clear to Unity which Prefab Asset the change must be applied to. It mirrors the **Apply** functionality in the Editor, as described in the Apply overrides to the prefab asset documentation.

For more information, refer to Override prefab instances.

Additional resources: PrefabUtility.ApplyAddedComponent, PrefabUtility.ApplyAddedGameObject, PrefabUtility.ApplyObjectOverride, PrefabUtility.ApplyPrefabInstance, PrefabUtility.ApplyPropertyOverride, PrefabUtility.ApplyRemovedComponent.

```csharp
using System.Collections.Generic;
using System.IO;
using UnityEditor;
using UnityEditor.SceneManagement;
using UnityEngine;// Creates new menu items under 'Examples' in the main menu.
public class ApplyRemovedGameObjectExample
{
    [MenuItem("Examples/ApplyRemovedGameObject Example 1")]
    static void CreatePrefabAndApplyChanges()
    {
        //Ensure the existence of a Prefabs folder inside the Assets folder
        if (!Directory.Exists("Assets/Prefabs"))
            AssetDatabase.CreateFolder("Assets", "Prefabs");        //Setup hierarchy with root and one child
        GameObject rootGameObject = new GameObject("Root");
        GameObject child = new GameObject("Child");
        child.transform.parent = rootGameObject.transform;        //Create prefab based on the GameObject hierarchy we just created
        GameObject prefabAsset = PrefabUtility.SaveAsPrefabAssetAndConnect(rootGameObject, "Assets/Prefabs/" + rootGameObject.name + ".prefab", InteractionMode.AutomatedAction);        //Get the corresponding object matching the Child GameObject that was destroyed
        GameObject correspondingChildGameObject = prefabAsset.transform.GetChild(0).gameObject;        //Destroy child GameObject so we can apply the override to the Prefab
        Object.DestroyImmediate(child);        //Use the variables from above to apply the removed GameObject override to the Prefab asset
        PrefabUtility.ApplyRemovedGameObject(rootGameObject, correspondingChildGameObject, InteractionMode.AutomatedAction);        if (prefabAsset.transform.childCount == 0)
            Debug.Log("'Child' GameObject was removed and the override was applied to the Prefab successfully.");
        else
            Debug.Log("The override was not applied successfully");
    }    [MenuItem("Examples/ApplyRemovedGameObject Example 2")]
    static void CreatePrefabAndApplyChangesWithGetRemovedGameObjects()
    {
        //Ensure the existence of a Prefabs folder inside the Assets folder
        if (!Directory.Exists("Assets/Prefabs"))
            AssetDatabase.CreateFolder("Assets", "Prefabs");        //Setup hierarchy with root and one child
        GameObject rootGameObject = new GameObject("Root");
        GameObject child = new GameObject("Child");
        child.transform.parent = rootGameObject.transform;        //Create prefab based on the GameObject hierarchy we just created
        GameObject prefabAsset = PrefabUtility.SaveAsPrefabAssetAndConnect(rootGameObject, "Assets/Prefabs/" + rootGameObject.name + ".prefab", InteractionMode.AutomatedAction);        //Destroy child GameObject so we can apply the override to the Prefab
        Object.DestroyImmediate(child);        //Get the override and the information to apply the changes to the Prefab asset
        List<RemovedGameObject> removedGameObjects = PrefabUtility.GetRemovedGameObjects(rootGameObject);
        GameObject assetGameObject = removedGameObjects[0].assetGameObject;
        GameObject parentOfRemovedGameObjectInInstance = removedGameObjects[0].parentOfRemovedGameObjectInInstance;        //Use the variables from above to apply the removed GameObject override to the Prefab
        PrefabUtility.ApplyRemovedGameObject(parentOfRemovedGameObjectInInstance, assetGameObject, InteractionMode.AutomatedAction);        if (prefabAsset.transform.childCount == 0)
            Debug.Log("'Child' GameObject was removed and the override was applied to the Prefab successfully.");
        else
            Debug.Log("The override was not applied successfully");
    }
}
```
