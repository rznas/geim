<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Profiling.Sampler.Get.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| name | Profiler Sampler name. |

### Returns

**Sampler** Sampler object which represents specific profiler label.

### Description

Returns Sampler object for the specific CPU Profiler label.

You can use this function to get a Sampler associated with a built-in or custom label. The *name* parameter is the same you can see in Hierarchy view of the Profiler Window. If label with the specified *name* parameter does not exist or not available in the Player, an invalid Sampler object will be returned. You can use Sampler.isValid to verify if Sampler is valid.

```csharp
using UnityEngine;
using UnityEngine.Profiling;public class ExampleClass : MonoBehaviour
{
    Sampler sampler;
    void Start()
    {
        sampler = Sampler.Get("BehaviourUpdate");
    }
}
```

**Get** can be used to obtain any existing Sampler including custom Sampler. Return value is always Sampler type and can not be casted to CustomSampler.

**Note:** At the moment all built-in counters are available only in the Editor and Development Players. **Get** in non-Development Players returns invalid Sampler.

Additional resources: Sampler, Sampler.isValid, CPU Usage Profiler.
