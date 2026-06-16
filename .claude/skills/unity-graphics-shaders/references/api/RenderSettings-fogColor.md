<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/RenderSettings-fogColor.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

The color of the fog.

```csharp
using UnityEngine;
using System.Collections;public class ExampleClass : MonoBehaviour
{
    void Example()
    {
        // Set the fog color to be blue
        RenderSettings.fogColor = Color.blue;        // And enable fog
        RenderSettings.fog = true;
    }
}
```
