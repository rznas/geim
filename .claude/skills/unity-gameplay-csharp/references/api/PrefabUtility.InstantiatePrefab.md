<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/PrefabUtility.InstantiatePrefab.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| assetComponentOrGameObject | Prefab Asset to instantiate. |
| destinationScene | Scene to instantiate the Prefab in. |

### Returns

**Object** The GameObject at the root of the Prefab.

### Description

Instantiates the given Prefab in a given Scene.

This is similar to Instantiate but creates a Prefab connection to the Prefab. If you do not specify a Scene handle, the Prefab is instantiated in the active Scene.

**Note:** You should not instantiate Prefabs from the OnValidate() or Awake() method. This is because the order in which GameObjects become awake is not deterministic, and therefore can result in unexpected behaviour. If you try this, Unity will generate a warning reading "SendMessage cannot be called during Awake, CheckConsistency, or OnValidate".

```csharp
using UnityEngine;
using UnityEditor;public class Example
{
    [MenuItem("Examples/Instantiate Selected")]
    static void InstantiatePrefab()
    {
        Selection.activeObject = PrefabUtility.InstantiatePrefab(Selection.activeObject as GameObject);
    }    [MenuItem("Examples/Instantiate Selected", true)]
    static bool ValidateInstantiatePrefab()
    {
        GameObject go = Selection.activeObject as GameObject;
        if (go == null)
            return false;        return PrefabUtility.IsPartOfPrefabAsset(go);
    }
}
```
