<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Vector3.SignedAngle.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| from | The vector from which the angular difference is measured. |
| to | The vector to which the angular difference is measured. |
| axis | The contextual direction for the calculation. |

### Returns

**float** Returns the signed angle between `from` and `to` in degrees.

### Description

Calculates the signed angle between two vectors, using a third vector to determine the sign.

The angle returned is the angle of rotation from the first vector to the second inside the plane that contains both vectors. The returned angle is between -180 and 180 degrees, because the method returns the smallest angle between the vectors.

 The sign of the angle is determined using the direction axis provided as the `axis` parameter. The direction is determined by whether the direction axis projects onto the positive or negative of the rotation axis. The axis of rotation is the vector perpendicular to the rotation plane. You can use the cross product to determine the axis of rotation for the two input vectors. If the direction axis points the same side of the rotation plane as the rotation axis, then the resulting angle is positive. If the direction axis points the opposite direction to the rotation axis, then the resulting angle is negative. Note that changing the order of `from` and `to` reverses the direction of the rotation angle.

 The following diagram shows the relationships between the input vectors and the rotation and direction axes. 

 
 The `from` and `to` vectors lie in the blue plane. Both the rotation axis and the direction axis point above the rotation plane, so in this case the returned angle is positive.

```csharp
using UnityEngine;public class ExampleClass : MonoBehaviour
{
    public Transform target;    void Update()
    {
        Vector3 targetDir = target.position - transform.position;
        Vector3 forward = transform.forward;
        float angle = Vector3.SignedAngle(targetDir, forward, Vector3.up);
        if (angle < -5.0F)
            print("turn right");
        else if (angle > 5.0F)
            print("turn left");
        else
            print("forward");
    }
}
```

Additional resources: Angle function.
