<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/GameObjectUtility.DuplicateGameObject.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| gameObject | The GameObject to be duplicated. |

### Returns

**GameObject** The duplicated GameObject.

### Description

Duplicates a single GameObject and returns the new GameObject.

Duplicates a GameObject within a Scene. The duplicated GameObject will be on the same level in the hierarchy as the original GameObject, and they will share the same parent. If there are any children or components that belong to the original GameObject, the duplicate will have them as well.

For duplicating more than one GameObject use DuplicateGameObjects. For duplicating Assets use CopyAsset.

```csharp
using UnityEngine;
using UnityEditor;public static class DuplicateGameObjectExample
{
    // Create context menu
    [MenuItem("Example/DuplicateGameObject")]
    public static void DuplicateTest()
    {
        // The original GameObject
        GameObject gameObject = new GameObject();        // The duplicated GameObject
        GameObject duplicatedGameObject = GameObjectUtility.DuplicateGameObject(gameObject);        // Display the names of the original and duplicated GameObjects in the console
        Debug.Log("The original GameObject: " + gameObject.name);
        Debug.Log("The duplicated GameObject: " + duplicatedGameObject.name);
    }
}
```

Any errors and warnings from the duplication operation are reported in the log and the console.
