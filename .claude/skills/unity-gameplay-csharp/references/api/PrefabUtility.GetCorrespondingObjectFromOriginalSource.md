<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/PrefabUtility.GetCorrespondingObjectFromOriginalSource.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| componentOrGameObject | The object to find the corresponding original object from. |

### Returns

**TObject** The corresponding object from the original source or null.

### Description

Retrieves the object of origin for the given object.

For any object you pass to this method, Unity follows through the chain of corresponding objects until there are no more and returns the last one found.

You can use this method to find the corresponding prefab asset where the input object originated.

For example, in the following diagram, prefab asset A contains a child nested prefab B, which contains a child nested prefab C.



The image shows the nested prefab assets, with B and C nested under A, and C nested under B, and how this structure carries over to their nested instances in the Hierarchy window.

Due to this structure, prefab C exists in both A and B. It was originally added in B, but the last object in the chain is C.

In this example scenario, if you supply the instance of GameObject C as the `componentOrGameObject` parameter to `GetCorrespondingObjectFromOriginalSource`, then the method returns the asset C.

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
        var o1 = PrefabUtility.GetCorrespondingObjectFromOriginalSource(instance);
        Debug.Log("Corresponding object from original source: " + o1.name + " from: " + AssetDatabase.GetAssetPath(o1));
    }
}
```

If you need to know the asset where a given GameObject or Component was originally added (not the last object in the chain), use GetOriginalSourceRootWhereGameObjectIsAdded.

See also: GetCorrespondingObjectFromSource, GetCorrespondingObjectFromSourceAtPath, GetOriginalSourceRootWhereGameObjectIsAdded.
