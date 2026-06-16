<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/WindZone-windMain.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

The primary wind force.

It produces a softly changing wind Pressure.

```csharp
// Creates a wind zone with the effect of a helicopter passing by
// Just place this into an empty game object and move it over a tree
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
