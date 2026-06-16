<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Object.FindAnyObjectByType.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| type | The type of object to find. |
| findObjectsInactive | Whether to include components attached to inactive GameObjects. If you don't specify this parameter, this function doesn't include inactive objects in the results. |

### Returns

**T** Returns an arbitrary active loaded object that matches the specified type. If no object matches the specified type, returns null.

### Description

Retrieves any active loaded object of Type `type`.

`Object.FindAnyObjectByType` doesn't return Assets (for example meshes, textures, or prefabs), or inactive objects. It also doesn't return objects that have HideFlags.DontSave set.

**Note**: The object that this function returns isn't guaranteed to be the same between calls, but it is always of the specified type. This function is faster than Object.FindFirstObjectByType if you don't need a specific object instance.

See Also: Object.FindFirstObjectByType, Object.FindObjectsByType.

```csharp
using UnityEngine;
using System.Collections;// Search for any object of Types TextMesh and CanvasRenderer,
// if found print the names, else print a message
// that says that it was not found.
public class ExampleClass : MonoBehaviour
{
    void Start()
    {
        TextMesh texture = (TextMesh)FindAnyObjectByType(typeof(TextMesh));
        if (texture)
            Debug.Log("TextMesh object found: " + texture.name);
        else
            Debug.Log("No TextMesh object could be found");        CanvasRenderer canvas = FindAnyObjectByType<CanvasRenderer>();
        if (canvas)
            Debug.Log("CanvasRenderer object found: " + canvas.name);
        else
            Debug.Log("No CanvasRenderer object could be found");
    }
}
```
