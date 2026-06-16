<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Profiling.Sampler-isValid.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Returns true if Sampler is valid. (Read Only)

Invalid Sampler represents non-existing Profiler label.

**Note:** At the moment all built-in counters are available only in the Editor and Development Players. Sampler.Get in non-Development Players returns invalid Sampler.

```csharp
using UnityEngine;
using UnityEngine.Profiling;
using System.Collections;public class ExampleClass : MonoBehaviour
{
    void Start()
    {
        var sampler = Sampler.Get("BehaviourUpdate");
        if (sampler.isValid)
            Debug.Log("Retrieved a Sampler for BehaviourUpdate!");        sampler = Sampler.Get("TerrainRenderer");
        if (!sampler.isValid)
            Debug.Log("Profiler label TerrainRenderer does not exist!");
    }
}
```
