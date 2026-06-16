<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/WindZone-windTurbulence.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

The turbulence wind force.

Produces a rapidly changing wind pressure.

```csharp
// Creates a wind zone to produce a softly changing general wind
// Just place this into an empty game object
using UnityEngine;public class ExampleScript : MonoBehaviour
{
    void Start()
    {
        var wind = gameObject.AddComponent<WindZone>();
        wind.mode = WindZoneMode.Directional;
        wind.windMain = 0.70f;
        wind.windTurbulence = 0.1f;
        wind.windPulseMagnitude = 2.0f;
        wind.windPulseFrequency = 0.25f;
    }
}
```
