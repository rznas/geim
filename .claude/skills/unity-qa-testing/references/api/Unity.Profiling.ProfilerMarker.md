<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Unity.Profiling.ProfilerMarker.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Performance marker used for profiling arbitrary code blocks.

Use *ProfilerMarker* to mark up script code blocks for the Profiler.
 The information produced by markers is displayed in the CPU Profiler and can be also captured with Recorder. During development (in Editor and Development Players) this can help to get performance overview of different parts of game code and identify performance issues.

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

*ProfilerMarker* represents a named profiler handle and is the most efficient way of profiling your code. It can be used in jobified code.
 Methods Begin and End are marked with ConditionalAttribute. They are conditionally compiled away and thus have zero overhead in non-Development (Release) builds.

When Profiler collects instrumentation data, *ProfilerMarker* helps to reduce overhead and the amount of transferred data. Profiler.BeginSample transfers full string to the data stream while ProfilerMarker.Begin and CustomSampler.Begin only integer identifier of the marker.

Also ProfilerMarker.End provides a context information to the Recorder making it possible to track timings of a marked code in Players.

Additional resources: Recorder.

### Properties

| Property | Description |
| --- | --- |
| Handle | Gets native handle of the ProfilerMarker. |

### Constructors

| Constructor | Description |
| --- | --- |
| ProfilerMarker | Constructs a new performance marker for code instrumentation. |

### Public Methods

| Method | Description |
| --- | --- |
| Auto | Creates a helper struct for the scoped using blocks. |
| Begin | Begin profiling a piece of code marked with a custom name defined by this instance of ProfilerMarker. |
| End | End profiling a piece of code marked with a custom name defined by this instance of ProfilerMarker. |
