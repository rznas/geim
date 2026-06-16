<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Vector2.SmoothDamp.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| current | The current position. |
| target | The position we are trying to reach. |
| currentVelocity | The current velocity, this value is modified by the function every time you call it. |
| smoothTime | Approximately the time it will take to reach the target. A smaller value will reach the target faster. |
| maxSpeed | Optionally allows you to clamp the maximum speed. |
| deltaTime | The time since the last call to this function. By default Time.deltaTime. |

### Description

Gradually changes a vector towards a desired goal over time.

The vector is smoothed by some spring-damper like function, which will never overshoot.

```csharp
// Smooth towards the targetusing UnityEngine;
using System.Collections;public class ExampleClass : MonoBehaviour
{
    public Transform target;
    public float smoothTime = 0.3F;
    private Vector2 velocity = Vector2.zero;    void Update()
    {
        // Define a target position above the target transform
        Vector2 targetPosition = target.TransformPoint(new Vector2(0, 5));        // Smoothly move the camera towards that target position
        transform.position = Vector2.SmoothDamp(transform.position, targetPosition, ref velocity, smoothTime);
    }
}
```
