<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Vector3.Dot.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| lhs | The left operand of the dot product. |
| rhs | The right operand of the dot product. |

### Returns

**float** The dot product of the lhs and rhs vectors.

### Description

Calculates the dot product of two three-dimensional vectors defined in the same coordinate space.

The dot product is a float value equal to the product of the magnitudes of the lhs and rhs vectors and the cosine of the angle between them.

For normalized vectors Dot returns 1 if they point in exactly the same direction, -1 if they point in completely opposite directions and zero if the vectors are perpendicular.

The dot product can also be used to find the scalar component of one vector in the direction of another vector.

```csharp
// detects if other transform is behind this objectusing UnityEngine;
using System.Collections;public class Vector3DotProductExample : MonoBehaviour
{
    public Transform other;    void Update()
    {
        if (other)
        {
            // transform the forward vector from local to world space
            Vector3 forward = transform.TransformDirection(Vector3.forward);
            // calculate a unit vector from the other object to this object
            Vector3 toOther = Vector3.Normalize(other.position - transform.position);
            // use the dot product sign to determine whether other is in front or behind
            if (Vector3.Dot(forward, toOther) < 0)
            {
                print("The other transform is behind me!");
            }
        }
    }
}
```
