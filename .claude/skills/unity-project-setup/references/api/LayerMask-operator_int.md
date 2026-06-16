<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/LayerMask-operator_int.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Implicitly converts an integer to a LayerMask.

```csharp
using UnityEngine;public class Example : MonoBehaviour
{
    void Start()
    {
        // Converts an int to a layer mask and prints all the layer names.
        // As the value is 3, it will print "Default" and "TransparentFX".
        // 2^0 + 2^1 = 1 + 2 = 3        int number = 3;
        LayerMask layerMask;
        
        // ✅ This line is the key to this example:
        // Implicitly converts the integer 'number' into a LayerMask.
        // This uses LayerMask.LayerMask implicitly.
        layerMask = number;
        for (int i = 0; i < 32; i++)
        {
            if ((layerMask.value & (1 << i)) != 0)
            {
                Debug.Log($"Layer {i}: {LayerMask.LayerToName(i)}");
            }
        }
    }
}
```
