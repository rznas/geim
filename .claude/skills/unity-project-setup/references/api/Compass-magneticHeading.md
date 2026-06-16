<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Compass-magneticHeading.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

The heading in degrees relative to the magnetic North Pole. (Read Only)

The value in this property is always measured relative to the top of the screen in its current orientation. The heading of magnetic north is not exactly the same as true geographical north - to get the exact heading, use the trueHeading property.

```csharp
using UnityEngine;public class Example : MonoBehaviour
{
    void Update()
    {
        // Orient an object to point to magnetic north.
        transform.rotation = Quaternion.Euler(0, -Input.compass.magneticHeading, 0);
    }
}
```
