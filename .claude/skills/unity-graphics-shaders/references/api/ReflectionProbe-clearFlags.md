<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/ReflectionProbe-clearFlags.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

How the reflection probe clears the background.

Can be ReflectionProbeClearFlags.Skybox or ReflectionProbeClearFlags.SolidColor.

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

Additional resources: ReflectionProbeClearFlags.
