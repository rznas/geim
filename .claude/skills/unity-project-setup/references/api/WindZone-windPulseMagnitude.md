<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/WindZone-windPulseMagnitude.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Defines how much the wind changes over time.

```csharp
// Creates a wind zone with the effect of a helicopter passing by
// Place this into an empty GameObject and move it over a tree
using UnityEngine;public class ExampleScript : MonoBehaviour
{
    void Start()
    {
        var wind = gameObject.AddComponent<WindZone>();
        wind.mode = WindZoneMode.Spherical;
        wind.radius = 10.0f;
        wind.windMain = 3.0f;
        wind.windTurbulence = 0.5f;
        wind.windPulseMagnitude = 2.0f;
        wind.windPulseFrequency = 0.01f;
    }
}
```
