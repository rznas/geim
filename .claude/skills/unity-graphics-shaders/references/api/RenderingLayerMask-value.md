<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/RenderingLayerMask-value.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Converts a layer mask value to an integer value.

```csharp
using UnityEngine;
using UnityEngine.Rendering;public class Example : MonoBehaviour
{
    // Set the rendering layer mask for MeshRenderer    RenderingLayerMask mask = 1 << 10;
    void Start()
    {
        GetComponent<MeshRenderer>().renderingLayerMask = mask;
    }
}
```
