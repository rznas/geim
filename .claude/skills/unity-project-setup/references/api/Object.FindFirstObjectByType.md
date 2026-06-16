<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Object.FindFirstObjectByType.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| type | The type of object to find. |
| findObjectsInactive | Whether to include components attached to inactive GameObjects. If you don't specify this parameter, this function doesn't include inactive objects in the results. |

### Returns

**T** Returns the first active loaded object that matches the specified type. If no object matches the specified type, returns null.

### Description

Retrieves the first active loaded object of Type `type`.

Object.FindFirstObjectByType doesn't return Assets (for example meshes, textures, or prefabs), or inactive objects. It also doesn't return objects that have HideFlags.DontSave set.

**Note**: This function is very resource intensive. It's best practice to not use this function every frame and instead, in most cases, use the singleton pattern. Alternatively if you only need any instance of a matching object rather than the first one you can use the faster Object.FindAnyObjectByType

See Also: Object.FindAnyObjectByType, Object.FindObjectsByType.

```csharp
using UnityEngine;
using System.Collections;// Search for the first active TextMesh and first active or inactive CanvasRenderer.
// If found print the names, else print a message saying none were found.
public class ExampleClass : MonoBehaviour
{
    void Start()
    {
        TextMesh texture = (TextMesh)FindFirstObjectByType(typeof(TextMesh));
        if (texture)
            Debug.Log("TextMesh object found: " + texture.name);
        else
            Debug.Log("No TextMesh object could be found");
// Include inactive objects in search for CanvasRenderer
        CanvasRenderer canvas = FindFirstObjectByType<CanvasRenderer>(FindObjectsInactive.Include);
        if (canvas)
            Debug.Log("CanvasRenderer object found: " + canvas.name);
        else
            Debug.Log("No CanvasRenderer object could be found");
    }
}
```
