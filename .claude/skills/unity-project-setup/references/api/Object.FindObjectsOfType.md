<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Object.FindObjectsOfType.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| type | The type of object to find. |
| includeInactive | If true, components attached to inactive GameObjects are also included. |

### Returns

**Object[]** The array of objects found matching the type specified.

### Description

Gets a list of all loaded objects of Type `type`.

This does not return assets (such as meshes, textures or prefabs), or objects with HideFlags.DontSave set. Objects attached to inactive GameObjects are only included if `includeInactive` is set to true. Use Resources.FindObjectsOfTypeAll to avoid these limitations.

In Editor, this searches the Scene view by default. If you want to find an object in the Prefab stage, see the StageUtility APIs.

**Note**: This function is very slow. It is not recommended to use this function every frame. In most cases you can use the singleton pattern instead.

**Obsolete**: This function is obsolete, use Object.FindObjectsByType instead. This replacement allows you to specify whether to sort the resulting array. FindObjectsOfType() always sorts by InstanceID, so calling FindObjectsByType(FindObjectsSortMode.InstanceID) produces identical results. If you specify not to sort the array, the function runs significantly faster, however, the order of the results can change between calls.

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
            var foundCanvasObjects = FindObjectsOfType<CanvasRenderer>();
            var foundTextMeshObjects = FindObjectsOfType(typeof(TextMesh));
            Debug.Log(foundCanvasObjects + " : " + foundCanvasObjects.Length);
            Debug.Log(foundTextMeshObjects + " : " + foundTextMeshObjects.Length);
        }
    }
}
```

Additional resources: Object.FindObjectsByType.
