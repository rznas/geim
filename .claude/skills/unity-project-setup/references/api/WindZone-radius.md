<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/WindZone-radius.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Radius of the Spherical Wind Zone (only active if the WindZoneMode is set to Spherical).

```csharp
// Creates a Spherical Wind Zone and sets its radius to 10.
using UnityEngine;public class ExampleScript : MonoBehaviour
{
    void Start()
    {
        var wind = gameObject.AddComponent<WindZone>();
        wind.mode = WindZoneMode.Spherical;
        wind.radius = 10f;
    }
}
```
