<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Compass-trueHeading.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

The heading in degrees relative to the geographic North Pole. (Read Only)

The value in this property is always measured relative to the top of the screen in its current orientation. Note, that if you want this property to contain a valid value, you must also enable location updates by calling `Input.location.Start()`. (Read Only)

**Note:** On the web platform this property will return the magnetic heading.

```csharp
using UnityEngine;public class Example : MonoBehaviour
{
    void Update()
    {
        // Orient an object to point northward.
        transform.rotation = Quaternion.Euler(0, -Input.compass.trueHeading, 0);
    }
}
```
