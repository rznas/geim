<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Quaternion.LookRotation.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| forward | The direction to look in, in world coordinates. |
| upwards | The vector that defines in which direction up is, in world coordinates. |

### Description

Creates a rotation with the specified `forward` and `upwards` directions.

Z axis will be aligned with `forward`, X axis aligned with cross product between `forward` and `upwards`, and Y axis aligned with cross product between Z and X.
 
If the `forward` vector is zero, the method logs an error in the console and returns `identity`. 
If `forward` and `upwards` are colinear, or if the magnitude of `upwards` is zero, the result is the same as Quaternion.FromToRotation with `fromDirection` set to the positive Z-axis (0, 0, 1) and `toDirection` set to the normalized `forward` direction.

```csharp
// You can also use transform.LookAtusing UnityEngine;
using System.Collections;public class ExampleClass : MonoBehaviour
{
    public Transform target;    void Update()
    {
        Vector3 relativePos = target.position - transform.position;        // the second argument, upwards, defaults to Vector3.up
        Quaternion rotation = Quaternion.LookRotation(relativePos, Vector3.up);
        transform.rotation = rotation;
    }
}
```

Additional resources: SetLookRotation.
