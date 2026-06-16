<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Mathf.SmoothDamp.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| current | The current value. |
| target | The target value. |
| currentVelocity | Use this parameter to specify the initial velocity to move the current value towards the target value. This method updates the currentVelocity based on this movement and smooth-damping. |
| smoothTime | The approximate time it takes for the current value to reach the target value. The lower the smoothTime, the faster the current value reaches the target value. The minimum smoothTime is 0.0001. If a lower value is specified, it is clamped to the minimum value. |
| maxSpeed | Use this optional parameter to specify a maximum speed. By default, the maximum speed is set to infinity. |
| deltaTime | The time since this method was last called. By default, this is set to `Time.deltaTime`. |

### Returns

**float** The current value after moving one step towards the target value.

### Description

Gradually moves the current value towards a target value, over a specified time and at a specified velocity.

This method smoothes the current value towards a target value with a spring-damper like algorithm. This algorithm is based on Game Programming Gems 4, Chapter 1.10.

**Note:** This method attempts to avoid overshooting the target value. When deltaTime is 0.0f, this yields NaN for the currentVelocity. If you call back with a currentVelocity of NaN, this method returns a NaN.

```csharp
using UnityEngine;public class Example : MonoBehaviour
{
    // Smooth towards the height of the target    public Transform target;
    float smoothTime = 0.3f;
    float yVelocity = 0.0f;    void Update()
    {
        float newPosition = Mathf.SmoothDamp(transform.position.y, target.position.y, ref yVelocity, smoothTime);
        transform.position = new Vector3(transform.position.x, newPosition, transform.position.z);
    }
}
```
