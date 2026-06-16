<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Ray2D-ctor.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| Vector2 | Origin. |
| Vector2 | Direction. |

### Description

Creates a 2D ray starting at origin along direction.

```csharp
using UnityEngine;public class ExampleClass : MonoBehaviour
{
    void Start()
    {
        // Create a ray from the transform position along the transform's z-axis
        Ray2D ray = new Ray2D(transform.position, transform.forward);
    }
}
```
