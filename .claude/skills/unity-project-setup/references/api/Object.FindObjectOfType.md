<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Object.FindObjectOfType.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| type | The type of object to find. |
| includeInactive | Whether to include components attached to inactive GameObjects. If you don't specify this parameter, this function doesn't include inactive objects in the results. |

### Returns

**T** **Object** The first active loaded object that matches the specified type. It returns null if no Object matches the type.

### Description

Returns the first active loaded object of Type `type`.

Object.FindObjectOfType will not return Assets (meshes, textures, prefabs, ...) or inactive objects. It will not return an object that has HideFlags.DontSave set.

Please note that this function is very slow. It is not recommended to use this function every frame. In most cases you can use the singleton pattern instead.

**Obsolete**: This function is obsolete, use Object.FindFirstObjectByType as a direct replacement or the faster Object.FindAnyObjectByType if any object of the specified type is acceptable.

See Also: Object.FindFirstObjectByType, Object.FindAnyObjectByType, Object.FindObjectsOfType.

```csharp
using UnityEngine;
using System.Collections;// Search for any object of Types TextMesh and CanvasRenderer,
// if found print the names, else print a message
// that says that it was not found.
public class ExampleClass : MonoBehaviour
{
    void Start()
    {
        TextMesh texture = (TextMesh)FindObjectOfType(typeof(TextMesh));
        if (texture)
            Debug.Log("TextMesh object found: " + texture.name);
        else
            Debug.Log("No TextMesh object could be found");        CanvasRenderer canvas = FindObjectOfType<CanvasRenderer>();
        if (canvas)
            Debug.Log("CanvasRenderer object found: " + canvas.name);
        else
            Debug.Log("No CanvasRenderer object could be found");
    }
}
```
