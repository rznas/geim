<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/WindZoneMode.Directional.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Wind zone affects the entire Scene in one direction.

```csharp
// Creates a Directional Wind Zone that blows wind up.
using UnityEngine;public class ExampleScript : MonoBehaviour
{
    void Start()
    {
        var wind = gameObject.AddComponent<WindZone>();
        wind.mode = WindZoneMode.Directional;
        transform.rotation = Quaternion.LookRotation(Vector3.up);
    }
}
```
