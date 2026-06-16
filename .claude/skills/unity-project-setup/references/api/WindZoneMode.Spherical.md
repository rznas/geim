<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/WindZoneMode.Spherical.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Wind zone only has an effect inside the radius, and has a falloff from the center towards the edge.

```csharp
// Creates a Spherical Wind Zone.
using UnityEngine;public class ExampleScript : MonoBehaviour
{
    void Start()
    {
        var wind = gameObject.AddComponent<WindZone>();
        wind.mode = WindZoneMode.Spherical;
    }
}
```
