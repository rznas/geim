<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Input.GetAccelerationEvent.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Returns specific acceleration measurement which occurred during last frame. (Does not allocate temporary variables).

**Note**: This API is part of the legacy Input Manager. The recommended best practice is that you don't use this API in new projects. For new projects, use the Input System package. To learn more about input, refer to Input.

```csharp
using UnityEngine;public class Example : MonoBehaviour
{
    // Calculates weighted sum of acceleration measurements which occurred during the last frame
    // Might be handy if you want to get more precise measurements
    void Update()
    {
        Vector3 acceleration = Vector3.zero;
        for (var i = 0; i < Input.accelerationEventCount; ++i)
        {
            AccelerationEvent accEvent = Input.GetAccelerationEvent(i);
            acceleration += accEvent.acceleration * accEvent.deltaTime;
        }
        print(acceleration);
    }
}
```
