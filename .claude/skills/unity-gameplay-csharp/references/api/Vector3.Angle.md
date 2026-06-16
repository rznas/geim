<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Vector3.Angle.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| from | The vector from which the angular difference is measured. |
| to | The vector to which the angular difference is measured. |

### Returns

**float** The angle in degrees between the two vectors.

### Description

Calculates the angle between two vectors.

The angle returned is the angle of rotation from the first vector to the second, when treating these two vector inputs as directions.
 Note: The angle returned will always be between 0 and 180 degrees, because the method returns the smallest angle between the vectors. That is, it will never return a reflex angle.

```csharp
using UnityEngine;public class AngleExample : MonoBehaviour
{
    public Transform target;    // prints "close" if the z-axis of this transform looks
    // almost towards the target    void Update()
    {
        Vector3 targetDir = target.position - transform.position;
        float angle = Vector3.Angle(targetDir, transform.forward);        if (angle < 5.0f)
            print("Close");
    }
}
```

Additional resources: SignedAngle function.
