<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/PrefabUtility.MergePrefabInstance.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| instanceRoot | Root of Prefab instance to update. |

### Description

Forces a Prefab instance to merge with changes from the Prefab Asset.

Unity will in most cases handle re-merging of the Prefab instance when you make changes in the Editor or via scripting. However, as shown in the example below, there are some rare cases where editing a Prefab instance from script requires you to force merge the instance to get immediate updates.

If you do not call MergePrefabInstance in those rare cases the re-merge will happen automatically at the end of the current frame, but if you need the changes reflected immediately in your script you have to force the merge.

```csharp
using UnityEngine;
using UnityEditor;// This example shows how to use PrefabUtility.MergePrefabInstance to force update an instance after some changespublic class SuppressedComponentExample
{
    public static void MergePrefabInstanceExample()
    {
        var instance = new GameObject("MyPrefabInstance");
        const string path = "Assets/MyPrefab.prefab";
        var prefab = PrefabUtility.SaveAsPrefabAssetAndConnect(instance, path, InteractionMode.AutomatedAction);        // Add Component to instance
        var component = instance.AddComponent<Rigidbody>();        // Add same type of component to the Prefab asset
        using (var scope = new PrefabUtility.EditPrefabContentsScope(path))
        {
            scope.prefabContentsRoot.AddComponent<Rigidbody>();
        }        // Because a Rigidbody already exists on the Prefab instance the one from the asset will be suppressed
        // we can get the suppressor and verify this
        var suppressor = instance.GetComponent<Rigidbody>();
        Debug.Log($"Is component part of the Prefab instance: {PrefabUtility.IsPartOfPrefabInstance(suppressor)}");        // Destroy the suppressor to make the suppressed object return to glory
        Undo.DestroyObjectImmediate(suppressor);
        PrefabUtility.MergePrefabInstance(instance);        // Now we will get the former suppressed component and verify that it is actually part of the prefab
        var formerSuppressed = instance.GetComponent<Rigidbody>();
        Debug.Log($"Is component part of the Prefab instance: {PrefabUtility.IsPartOfPrefabInstance(formerSuppressed)}");
    }
}
```
