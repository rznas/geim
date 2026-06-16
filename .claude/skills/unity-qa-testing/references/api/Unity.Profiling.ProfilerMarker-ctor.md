<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Unity.Profiling.ProfilerMarker-ctor.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| name | Marker name. |
| category | Profiler category. |
| nameLen | Marker name length. |
| flags | The marker flags. |

### Description

Constructs a new performance marker for code instrumentation.

Use *ProfilerMarker* to markup a piece of code for the Profiler and Recorder.

```csharp
using Unity.Profiling;public class MySystemClass
{
    static readonly ProfilerMarker s_PreparePerfMarker = new ProfilerMarker("MySystem.Prepare");
    static readonly ProfilerMarker s_SimulatePerfMarker = new ProfilerMarker(ProfilerCategory.Ai, "MySystem.Simulate");    public void UpdateLogic()
    {
        s_PreparePerfMarker.Begin();
        // ...
        s_PreparePerfMarker.End();        using (s_SimulatePerfMarker.Auto())
        {
            // ...
        }
    }
}
```
