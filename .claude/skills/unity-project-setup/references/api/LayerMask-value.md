<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/LayerMask-value.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Converts a layer mask value to an integer value.

```csharp
using UnityEngine;public class Example : MonoBehaviour
{
    // Casts a ray using the layer mask,
    // which can be modified in the inspector.    LayerMask mask = -1;
    void Update()
    {
        if (Physics.Raycast(transform.position, transform.forward, 100, mask.value))
        {
            Debug.Log("Hit something");
        }
    }
}
```
