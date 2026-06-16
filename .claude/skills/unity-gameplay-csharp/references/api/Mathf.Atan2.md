<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Mathf.Atan2.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| y | Y-component of the input 2D vector. |
| x | X-component of the input 2D vector. |

### Returns

**float** Angle in radians between the (`x`,`y`) vector and the (1,0) unit vector, in the range [-Pi, Pi].

### Description

Returns the angle in radians whose Tan is `y/x`.

Return value is the angle between the x-axis unit vector (1, 0) and a 2D vector starting at zero and terminating at (x,y).

**Note:** This function takes account of the cases where x is zero and returns the correct angle rather than throwing a division by zero exception.

Additional resources: Tan, Atan.

```csharp
using UnityEngine;public class ExampleClass : MonoBehaviour
{
    public Transform target;
    public float turnSpeed = 2f; // higher = faster slerp    void Update()
    {
        if (!target) return;        // Compute desired yaw angle to target in local space
        Vector3 relative = transform.InverseTransformPoint(target.position);
        float angle = Mathf.Atan2(relative.x, relative.z) * Mathf.Rad2Deg;        // Build target rotation around global up (yaw only)
        Quaternion targetRotation = Quaternion.Euler(0f, transform.eulerAngles.y + angle, 0f);        // Smoothly rotate toward the target rotation
        transform.rotation = Quaternion.Slerp(
            transform.rotation,
            targetRotation,
            Time.deltaTime * turnSpeed
        );
    }
}
```
