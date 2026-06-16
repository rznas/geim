<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/PrefabUtility.ReplacePrefabAssetOfPrefabInstance.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| prefabInstanceRoot | The Prefab instance root that will have its Prefab Asset replaced. |
| prefabAssetRoot | The new Prefab Asset used for the Prefab instance. |
| mode | The interaction mode used. |
| settings | The settings used to control the details of the replacement. |

### Description

Replace the Prefab Asset for a Prefab instance that exists in a Scene or for a nested Prefab instance inside another Prefab.

This function will keep the Prefab instance root position, rotation and scale in the Scene but merge the contents from the new Prefab Asset while, by default, maintaining as many overrides and references as possible by using name based matching. Note that the root GameObject and its components will always reuse these objects regardless of the ObjectMatchMode, so references to these objects will always survive a replacement. Use ObjectMatchMode.ByHierarchy which will retain references if GameObjects and Components are matched up using their full GameObject hierarchy path so ensure all siblings have unique names. When using ObjectMatchMode.ByName an object match is only performed if the name match is unique. It is therefore recommended that the Prefab instance and Prefab Asset only have unique names in the hierarchy of GameObjects. Matching cannot be done for GameObjects with duplicate names.

No property overrides are deleted from the serialized state of the Prefab instance so replacing back and forth between different Prefab Assets is a non-destructive action for property overrides. When the final Prefab instance is decided upon then any unused overrides can be cleaned up from either Hierarchy or Overrides window. Added Components are preserved if a name match exists, otherwise the added Component is deleted. Added GameObjects are preserved by adding them to the root of the new instance if no name match was found for its parent GameObject. Since an added GameObject can have a full hierarchy under it, we leave it to you to decide whether it makes sense to delete the object if it proves redundant on the new instance. This can be done from either the Hierarchy or Overrides window. For explict control over which overrides should be cleared use the PrefabReplacingSettings.prefabOverridesOptions flags found in the PrefabReplacingSettings.

Additional resources: ReplacePrefabAssetOfPrefabInstances, ConvertToPrefabInstance.

```csharp
using System.Collections.Generic;
using UnityEditor;
using UnityEngine;class PrefabReplacing
{
    [MenuItem("Assets/Replace Scene Selection with Prefab Asset", false, 32)]
    static void ReplaceSelectedWithPrefabInstance(MenuCommand menuCommand)
    {
        GameObject prefabAsset = null;
        var listOfInstanceRoots = new List<GameObject>();
        var listOfPlainGameObjects = new List<GameObject>();
        foreach (var go in Selection.gameObjects)
        {
            if (AssetDatabase.Contains(go))
                prefabAsset = go;
            else if (PrefabUtility.IsOutermostPrefabInstanceRoot(go))
                listOfInstanceRoots.Add(go);
            else if (!PrefabUtility.IsPartOfNonAssetPrefabInstance(go))
                listOfPlainGameObjects.Add(go);
        }        if (prefabAsset == null || (listOfInstanceRoots.Count == 0 && listOfPlainGameObjects.Count == 0))
        {
            ShowHelpDialog(prefabAsset);
            return;
        }        if (listOfInstanceRoots.Count > 0)
        {
            var settings = new PrefabReplacingSettings
            {
                logInfo = true,
                objectMatchMode = ObjectMatchMode.ByHierarchy,
                prefabOverridesOptions = PrefabOverridesOptions.ClearAllNonDefaultOverrides
            };
            PrefabUtility.ReplacePrefabAssetOfPrefabInstances(listOfInstanceRoots.ToArray(), prefabAsset, settings, InteractionMode.UserAction);
        }        if (listOfPlainGameObjects.Count > 0)
        {
            var settings = new ConvertToPrefabInstanceSettings
            {
                logInfo = true,
                objectMatchMode = ObjectMatchMode.ByHierarchy,
            };
            PrefabUtility.ConvertToPrefabInstances(listOfPlainGameObjects.ToArray(), prefabAsset, settings, InteractionMode.UserAction);
        }
    }    [MenuItem("Assets/Replace Scene Selection with Prefab Asset", true, 32)]
    static bool ValidateReplaceSelectedWithPrefabInstance(MenuCommand menuCommand)
    {
        foreach (var go in Selection.gameObjects)
        {
            if (AssetDatabase.Contains(go))
                return true;
        }        return false;
    }    static void ShowHelpDialog(GameObject prefabAsset)
    {
        var helptext = "Please make a multiselection with at least one Prefab instance root or plain GameObject in the Scene and one Prefab Asset from the Project Browser. \n\nUse Ctrl/Cmd + Click.";
        EditorUtility.DisplayDialog("Replace Prefab Asset of Prefab instance", (prefabAsset == null ? "Prefab Asset missing.\n\n" : "Prefab instance missing.\n\n") + helptext, "OK");
    }
}
```
