<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/RenderSettings-fogDensity.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

The density of the exponential fog.

Fog density is used by FogMode.Exponential and FogMode.ExponentialSquared modes.

```csharp
using UnityEngine;
using System.Collections;public class ExampleClass : MonoBehaviour
{
    void Example()
    {
        // Set the fog density
        RenderSettings.fogDensity = 0.1f;        // And enable fog
        RenderSettings.fog = true;
    }
}
```

Additional resources: RenderSettings.fogMode.
