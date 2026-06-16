<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Input-acceleration.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Last measured linear acceleration of a device in three-dimensional space. (Read Only)

**Note**: This API is part of the legacy Input Manager. The recommended best practice is that you don't use this API in new projects. For new projects, use the Input System package. To learn more about input, refer to Input.

```csharp
using UnityEngine;public class Example : MonoBehaviour
{
    // Move object using accelerometer
    float speed = 10.0f;    void Update()
    {
        Vector3 dir = Vector3.zero;        // we assume that device is held parallel to the ground
        // and Home button is in the right hand        // remap device acceleration axis to game coordinates:
        //  1) XY plane of the device is mapped onto XZ plane
        //  2) rotated 90 degrees around Y axis
        dir.x = -Input.acceleration.y;
        dir.z = Input.acceleration.x;        // clamp acceleration vector to unit sphere
        if (dir.sqrMagnitude > 1)
            dir.Normalize();        // Make it move 10 meters per second instead of 10 meters per frame...
        dir *= Time.deltaTime;        // Move object
        transform.Translate(dir * speed);
    }
}
```
