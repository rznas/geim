<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/PrefabUtility.GetCorrespondingObjectFromSourceAtPath.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| componentOrGameObject | The object to find the corresponding object from. |
| assetPath | The asset path of the Prefab Asset to get the corresponding object from. |

### Returns

**TObject** The corresponding object or null.

### Description

Retrieves the corresponding object of the given object from a given Prefab Asset path.

Use this method to find the corresponding asset the `source` was instantiated from, if but only if it is within the prefab asset at the specified path.

If you don't have the path to pass in, you can use GetCorrespondingObjectFromSource instead.

This method returns null if the given object does not have a corresponding object within the prefab asset at the specified path.

For example, in the following image prefab asset A contains a child nested prefab B, which contains a child nested prefab C.



The image shows the nested prefab assets, with B and C nested under A, and C nested under B, and how this structure carries over to their nested instances in the Hierarchy window.

In this example scenario, if you call `GetCorrespondingObjectFromSourceAtPath` with the instance of GameObject C as the `componentOrGameObject` parameter and `Assets/A.prefab` as the `assetPath`, this method returns the nested prefab object C from the prefab asset A.

The following example adds a menu item to the Editor, which launches a simple wizard that allows you to test the results of this method.

```csharp
using UnityEditor;
using UnityEngine;
public class AssetSourceTestWizard : ScriptableWizard
{
    public GameObject instance;
    public string path;    [MenuItem("Test/Asset Source Test Wizard")]
    static void CreateWizard()
    {
        ScriptableWizard.DisplayWizard<AssetSourceTestWizard>("Asset Source Test Wizard", "Do Test");
    }    void OnWizardCreate()
    {
        var o1 = PrefabUtility.GetCorrespondingObjectFromSourceAtPath(instance, path);
        Debug.Log("Corresponding object from source: " + o1.name);
    }
}
```

See also: GetCorrespondingObjectFromSource, GetOriginalSourceRootWhereGameObjectIsAdded, GetCorrespondingObjectFromOriginalSource.
