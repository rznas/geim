<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Compass-rawVector.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

The raw geomagnetic data measured in microteslas. (Read Only)

The compass is actually a magnetometer that measures the magnetic field in the device's XYZ coordinates - in the absence of a stronger magnet, it will measure the Earth's field from which the compass heading can be found. This property can be used if you want to make non-standard use of the compass (eg, find the heading from the X or Z axis of the device).

**Note:** This property is currently not supported on the web platform.

```csharp
using UnityEngine;public class Example : MonoBehaviour
{
    void OnGUI()
    {
        GUILayout.Label("Magnetometer reading: " + Input.compass.rawVector.ToString());
    }
}
```
