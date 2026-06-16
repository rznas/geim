<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Rendering.ReflectionProbeClearFlags.SolidColor.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Clear with a background color.

Additional resources: ReflectionProbe.clearFlags property.

```csharp
using UnityEngine;
using System.Collections;
public class ExampleScript : MonoBehaviour
{
    void Start()
    {
        ReflectionProbe probe = GetComponent<ReflectionProbe>();        // Clear with background color (ignore any skyboxes)
        probe.clearFlags = UnityEngine.Rendering.ReflectionProbeClearFlags.SolidColor;
    }
}
```
