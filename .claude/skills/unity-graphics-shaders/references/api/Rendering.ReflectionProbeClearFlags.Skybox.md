<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Rendering.ReflectionProbeClearFlags.Skybox.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Clear with the skybox.

If a skybox is not set up, the Reflection Probe will clear with a ReflectionProbe.backgroundColor. Additional resources: ReflectionProbe.clearFlags property.

```csharp
using UnityEngine;
using System.Collections;
public class ExampleScript : MonoBehaviour
{
    void Start()
    {
        ReflectionProbe probe = GetComponent<ReflectionProbe>();        // Clear with skybox
        probe.clearFlags = UnityEngine.Rendering.ReflectionProbeClearFlags.Skybox;
    }
}
```
