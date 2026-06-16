<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Gyroscope-attitude.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Returns the attitude (ie, orientation in space) of the device.

```csharp
using UnityEngine;public class Example : MonoBehaviour
{
    // Rotate the object to match the device's orientation
    // in space.
    void Update()
    {
        transform.rotation = Input.gyro.attitude;
    }
}
```
