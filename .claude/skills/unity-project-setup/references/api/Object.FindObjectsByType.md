<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Object.FindObjectsByType.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| type | The type of object to find. Must be a reference type derived from UnityEngine.Object. |
| findObjectsInactive | Whether to include components attached to inactive GameObjects. If you don't specify this parameter, this function doesn't include inactive objects in the results. |
| sortMode | Whether and how to sort the returned array. Not sorting saves time, which can be significant if the search returns many objects. |

### Returns

**Object[]** The array of objects found matching the type specified.

### Description

Retrieves a list of all loaded objects of Type `type`.

`FindObjectsByType` doesn't return Assets (for example meshes, textures, or prefabs). It also doesn't return objects that have HideFlags.DontSave set.Use Resources.FindObjectsOfTypeAll to avoid these limitations.

You can't use `Object.FindObjectsByType` with interfaces directly. Instead, find all components of a base type and then filter the results by interface using LINQ's `OfType`.

In the Editor, `FindObjectsByType` searches the Scene view by default. If you want to find an object in the Prefab stage, use the StageUtility APIs.

```csharp
using UnityEngine;// Ten GameObjects are created and have TextMesh and
// CanvasRenderer components added.
// When the game runs press the Space key to display the
// number of TextMesh and CanvasRenderer components.public class ScriptExample : MonoBehaviour
{
    private const int count = 10;    void Start()
    {
        var gameObjects = new GameObject[count];
        var expectedTextMeshObjects = new TextMesh[count];
        var expectedCanvasObjects = new CanvasRenderer[count];        for (var i = 0; i < count; ++i)
        {
            gameObjects[i] = new GameObject();
            expectedTextMeshObjects[i] = gameObjects[i].AddComponent<TextMesh>();
            expectedCanvasObjects[i] = gameObjects[i].AddComponent<CanvasRenderer>();
        }
    }    void Update()
    {
        if (Input.GetKeyDown(KeyCode.Space))
        {
            var foundCanvasObjects = FindObjectsByType<CanvasRenderer>(FindObjectsSortMode.None);
            var foundTextMeshObjects = FindObjectsByType(typeof(TextMesh), FindObjectsSortMode.None);
            Debug.Log(foundCanvasObjects + " : " + foundCanvasObjects.Length);
            Debug.Log(foundTextMeshObjects + " : " + foundTextMeshObjects.Length);
        }
    }
}
```

Additional resources: Object.FindFirstObjectByType, Object.FindAnyObjectByType.
