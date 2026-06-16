<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/PrefabUtility.GetCorrespondingObjectFromSource.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| componentOrGameObject | The object to find the corresponding object from. |

### Returns

**TObject** The corresponding object or null.

### Description

Retrieves the corresponding source prefab asset object of a given GameObject or component, or null if it can't be found.

Use this method to get the source prefab asset object the GameObject or component was instantiated from.

For example, in the diagram shown below, prefab asset A contains a child nested prefab B, which contains a child nested prefab C.



The image shows the nested prefab assets, with B and C nested under A, and C nested under B, and how this structure carries over to their nested instances in the Hierarchy window.

In this example scenario, if you supply the instance of GameObject C as the `componentOrGameObject` parameter to `GetCorrespondingObjectFromSource`, then the method returns the object C from the asset Prefab A.

For more information about source objects, refer to Introduction to prefabs.

The following example adds a menu item to the Editor, which launches a simple wizard that allows you to test the results of this method.

```csharp
using UnityEditor;
using UnityEngine;
public class AssetSourceTestWizard : ScriptableWizard
{
    public GameObject instance;    [MenuItem("Test/Asset Source Test Wizard")]
    static void CreateWizard()
    {
        ScriptableWizard.DisplayWizard<AssetSourceTestWizard>("Asset Source Test Wizard", "Do Test");
    }    void OnWizardCreate()
    {
        var o1 = PrefabUtility.GetCorrespondingObjectFromSource(instance);
        Debug.Log("Corresponding object from source: " + o1.name + " from: " + AssetDatabase.GetAssetPath(o1));
    }
}
```

See also: GetCorrespondingObjectFromSourceAtPath, GetOriginalSourceRootWhereGameObjectIsAdded, GetCorrespondingObjectFromOriginalSource.
