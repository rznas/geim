<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Profiling.Profiler.BeginSample.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| name | A string to identify the sample in the Profiler window. |
| targetObject | An object that provides context to the sample,. |

### Description

Begin profiling a piece of code with a custom label.

The Profiler displays the sample in the Hierarchy and Timeline views. The sample is nested under the events or functional calls that lead to the execution of the sampled code. For example, a sample placed in Update displays under `Update.ScriptRunBehaviourUpdate` in the Profiler Hierarchy and Timeline views. If you supply a `targetObject`, then you can click on the sample in the Profiler Timeline to select that object in the Editor (when profiling from the Editor Play mode).

Profiler.BeginSample is conditionally compiled away using ConditionalAttribute. Thus it will have zero overhead, when it is deployed in non-Development Build.

```csharp
using UnityEngine;
using System.Collections;
using UnityEngine.Profiling;public class ExampleClass : MonoBehaviour
{
    void Example()
    {
        Profiler.BeginSample("MyPieceOfCode");
        // Code to measure...
        Profiler.EndSample();
    }
}
```

Additional resources: Profiler.EndSample, ProfilerCPU.
