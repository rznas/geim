<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/PrefabUtility.UnpackAllInstancesOfPrefab.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| prefabRoot | The root GameObject of a Prefab Asset used to find all Prefab instances in open scenes that should be unpacked. |
| unpackMode | Whether to unpack the outermost root or unpack completely. |
| action | The interaction mode to use for this action. |

### Description

Unpacks all instances of a given Prefab Asset root GameObject in all open scenes so that all instances are replaced with the contents of the Prefab Asset while retaining all override values.

The Prefab instances will not be unpacked in closed scenes. This function uses PrefabUtility.FindAllInstancesOfPrefab to determine which instances to unpack and calls PrefabUtility.UnpackPrefabInstance for each instance.

Unpacking throws an ArgumentException if the given object is not the root GameObject of a Prefab Asset.

```csharp
using UnityEditor;
using UnityEngine;public class Example
{
    public static void UnpackAllInstancesOfPrefab(string prefabPath)
    {
        var prefabAssetRoot = AssetDatabase.LoadMainAssetAtPath(prefabPath) as GameObject;
        if (prefabAssetRoot != null)
        {
            PrefabUtility.UnpackAllInstancesOfPrefab(prefabAssetRoot, PrefabUnpackMode.OutermostRoot, InteractionMode.UserAction);
        }
    }
}
```
