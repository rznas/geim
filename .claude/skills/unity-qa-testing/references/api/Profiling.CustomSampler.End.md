<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Profiling.CustomSampler.End.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

End profiling a piece of code with a custom label.

This will show up in the Profiler hierarchy.

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

Profiler.BeginSample is conditionally compiled away using ConditionalAttribute. Thus it will have zero overhead, when it is deployed in non-Development Build.

Additional resources: CustomSampler.Begin, CustomSampler.Create, ProfilerCPU.
