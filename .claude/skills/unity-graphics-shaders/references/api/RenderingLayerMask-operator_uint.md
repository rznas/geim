<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/RenderingLayerMask-operator_uint.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Implicitly converts `uint` to a RenderingLayerMask.

```csharp
using UnityEngine;
using UnityEngine.Rendering;public class Example : MonoBehaviour
{
    void Start()
    {
        // Converts a uint to a rendering layer and prints all the rendering layer names.
        // As the value is 1025, it will print "Default" and Rendering Layer 10 Name.
        // 2^0 + 2^10 = 1 + 1024 = 1025        uint number = 1025;
        RenderingLayerMask mask = number;
        for (int i = 0; i < 32; i++)
        {
            if ((mask.value & (1 << i)) != 0)
            {
                Debug.Log($"Rendering Layer {i}: {RenderingLayerMask.RenderingLayerToName(i)}");
            }
        }
    }
}
```
