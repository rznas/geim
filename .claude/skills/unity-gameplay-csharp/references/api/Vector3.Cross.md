<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Vector3.Cross.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| lhs | The first input vector. |
| rhs | The second input vector. |

### Returns

**Vector3** The cross product of the `lhs` and `rhs` vectors. This vector is usually not normalized.

### Description

Calculates the cross product of two three-dimensional vectors.

The cross product of two three-dimensional vectors results in a third vector which is perpendicular to the two input vectors. The result's magnitude is equal to the magnitudes of the two inputs multiplied together and then multiplied by the sine of the angle between the inputs. You can determine the direction of the result vector from the two input vectors using the "left hand rule".


 *The left hand rule applied to Cross(a, b).*

```csharp
using UnityEngine;
using System.Collections;public class ExampleClass : MonoBehaviour
{
    // Get the normal to a triangle from the three corner points a, b, and o, where o is the common origin point used to calculate two side vectors of the triangle.
    Vector3 GetNormal(Vector3 a, Vector3 b, Vector3 o)
    {
        // Calculate vectors corresponding to two of the sides of the triangle.
        Vector3 side1 = a - o;
        Vector3 side2 = b - o;        // Cross the vectors to get a perpendicular vector, then normalize it. This is the Result vector in the drawing above.
        return Vector3.Cross(side1, side2).normalized;
    }
}
```
