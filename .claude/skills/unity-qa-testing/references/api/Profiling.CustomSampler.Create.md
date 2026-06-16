<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Profiling.CustomSampler.Create.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| name | Name of the Sampler. |
| collectGpuData | Specifies whether this Sampler records GPU timings. If you want the Sampler to record GPU timings, set this to true. |

### Returns

**CustomSampler** CustomSampler object or *null* if a built-in Sampler with the same name exists.

### Description

Creates a new CustomSampler for profiling parts of your code.

Multiple calls with the same *name* parameter return different CustomSampler objects which refer to the same native representation. CustomSampler represents scripting profiler label.

Method throws **ArgumentNullException** when used with *null* string.

```csharp
using UnityEngine;
using UnityEngine.Profiling;public class ExampleClass : MonoBehaviour
{
    CustomSampler sampler;
    void Start()
    {
        sampler = CustomSampler.Create("MyCustomSampler");
    }    void Update()
    {
        sampler.Begin();
        // do something that takes a lot of time
        sampler.End();
    }
}
```

Additional resources: CustomSampler.Begin, Sampler.Get.
