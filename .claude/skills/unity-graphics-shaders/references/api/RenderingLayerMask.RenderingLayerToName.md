<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/RenderingLayerMask.RenderingLayerToName.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| layer | Provide a layer index. |

### Returns

**string** Returns empty string if not found.

### Description

Given a rendering layer index, returns the name of the layer as defined in the Tags and Layers manager.

```csharp
using UnityEngine;
using UnityEngine.Rendering;public class Example : MonoBehaviour
{
    void Start()
    {
        // Prints the name of the rendering layer 1        Debug.Log(RenderingLayerMask.RenderingLayerToName(1));
    }
}
```
