<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/GameObjectUtility.DuplicateGameObjects.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| gameObjects | The array of GameObjects to be duplicated. |

### Returns

**GameObject[]** The array of the duplicated GameObject roots.

### Description

Duplicates an array of GameObjects and returns the array of the new GameObject roots.

Duplicates GameObjects within a Scene. Each GameObject will be on the same level in the hierarchy as its original GameObject, and they will share the same parent. If there are any children or components that belong to the original GameObject, the duplicate will have them as well. If a parent and a child are both added to the input array, only the parent will be duplicated and returned (similar to the way Ctrl + D works in the editor).

For duplicating a single GameObject use DuplicateGameObject. For duplicating Assets use AssetDatabase.CopyAsset.

```csharp
using UnityEngine;
using UnityEditor;public static class DuplicateGameObjectsExample
{
    // Create context menu
    [MenuItem("Example/Duplicating GameObjects Example")]
    public static void DuplicatingGameObjectsExample()
    {
        // Creating the original GameObjects
        GameObject gameObject1 = new GameObject("gameObject1");
        GameObject gameObject2 = new GameObject("gameObject2");
        GameObject gameObject3 = new GameObject("gameObject3");        // Creating an array of all GameObjects
        GameObject[] gameObjectArray = { gameObject1, gameObject2, gameObject3 };        // Duplicating the array of GameObjects
        GameObject[] duplicatedGameObjectArray = GameObjectUtility.DuplicateGameObjects(gameObjectArray);        // Display the names of the duplicated GameObjects in the console
        Debug.Log("Duplicated GameObjects: ");
        for (int i = 0; i < duplicatedGameObjectArray.Length; i++)
        {
            Debug.Log(duplicatedGameObjectArray[i].name);
        }
    }    // Create context menu
    [MenuItem("Example/Duplicating Hierarchy Example")]
    public static void DuplicatingHierarchyExample()
    {
        // Creating the original GameObjects
        GameObject parent = new GameObject("parent");
        GameObject child1 = new GameObject("child1");
        GameObject child2 = new GameObject("child2");        // Assigning parents to children
        child1.transform.parent = parent.transform;
        child2.transform.parent = parent.transform;        // Creating an array of all GameObjects
        GameObject[] gameObjectArray = { parent, child1, child2 };        // Duplicating the array of GameObjects
        GameObject[] duplicatedGameObjectArray = GameObjectUtility.DuplicateGameObjects(gameObjectArray);        // Display the names of the duplicated GameObjects in the console
        // Only the parent will be returned
        Debug.Log("Duplicated GameObjects: ");
        for (int i = 0; i < duplicatedGameObjectArray.Length; i++)
        {
            Debug.Log(duplicatedGameObjectArray[i].name);
        }
    }
}
```

Any errors and warnings from the duplication operation are reported in the log and the console.
