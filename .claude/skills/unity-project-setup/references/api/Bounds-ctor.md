<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Bounds-ctor.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| center | The location of the origin of the Bounds. |
| size | The dimensions of the Bounds. |

### Description

Creates a new Bounds.

Create a new Bounds with the given center and total size. Bound extents will be half the given size.

```csharp
// Create bounding box centered at the origin
using UnityEngine;
using System.Collections;public class Example : MonoBehaviour
{
    Bounds b;    void Start()
    {
        b = new Bounds(new Vector3(0, 0, 0), new Vector3(1, 2, 1));
    }
}
```

When no parameters are given to the constructor, the bounds created has a center of (0,0,0) and an extent of (0,0,0).
