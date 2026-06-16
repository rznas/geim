<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Gyroscope-gravity.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Returns the gravity acceleration vector expressed in the device's reference frame.

```csharp
using UnityEngine;public class Example : MonoBehaviour
{
    float movementScale;    void Update()
    {
        // A "spirit level" - the dot product of the gravity and the Y axis (ie, Vector3.up)
        // is a measure of how far the device is from level on that axis (it will be zero
        // if the device is perfectly level). This value can be used to position an object
        // to act as the "bubble".
        Vector3 pos = transform.position;
        pos.y = Vector3.Dot(Input.gyro.gravity, Vector3.up) * movementScale;
        transform.position = pos;
    }
}
```
