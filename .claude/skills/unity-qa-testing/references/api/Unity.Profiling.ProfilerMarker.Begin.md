<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Unity.Profiling.ProfilerMarker.Begin.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| contextUnityObject | Object associated with the operation. |

### Description

Begin profiling a piece of code marked with a custom name defined by this instance of ProfilerMarker.

Always use End to close a started section of an instrumented code.
 Code marked with Begin and End will show up in the Profiler hierarchy. Use Recorder to obtain per-frame timings in the Player.

**Note:** Both Begin and End are thread safe and can be used in jobified code.

```csharp
using Unity.Profiling;public class MySystemClass
{
    static ProfilerMarker s_PreparePerfMarker = new ProfilerMarker("MySystem.Prepare");    public void UpdateLogic()
    {
        s_PreparePerfMarker.Begin();
        // ...
        s_PreparePerfMarker.End();
    }
}
```

Begin is conditionally compiled away using ConditionalAttribute. Thus it will have zero overhead, when it is deployed in non-Development Build.

Additional resources: ProfilerMarker.End, Recorder, ProfilerCPU.
