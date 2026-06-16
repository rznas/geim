<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/RenderingLayerMask.NameToRenderingLayer.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| layerName | Provide a rendering layer name. |

### Returns

**int** Returns -1 if not found.

### Description

Given a rendering layer name, returns the rendering layer index as defined in the Tags and Layers manager.

```csharp
using UnityEngine;
using UnityEngine.Rendering;public class Example : MonoBehaviour
{
    void Start()
    {
        // Prints the name of the rendering layer 1        Debug.Log(RenderingLayerMask.NameToRenderingLayer("Default"));
    }
}
```
