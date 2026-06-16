<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Vector3.Distance.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| a | The first three-dimensional point as a Vector3. |
| b | The second three-dimensional point as a Vector3. |

### Returns

**float** The scalar distance between points `a` and `b`.

### Description

Calculates the distance between two three-dimensional points.

This method calculates the shortest distance between the two input points. Both points should be defined in the same coordinate space. `Vector3.Distance(a,b)` returns the same result as `(a-b).magnitude`. The resulting value is always >= 0.

```csharp
using UnityEngine;public class Vector3DistanceExample : MonoBehaviour
{
    // the first point is this transform's position
    public Transform other;    void Start()
    {
        if (other)
        {
            // the second point is the position of the MonoBehaviour's transform
            float dist = Vector3.Distance(other.position, transform.position);
            print("Distance to other: " + dist);
        }
    }
}
```
