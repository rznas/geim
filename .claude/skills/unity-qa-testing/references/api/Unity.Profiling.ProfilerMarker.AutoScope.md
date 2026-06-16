<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Unity.Profiling.ProfilerMarker.AutoScope.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| metadata | Additional contextual data for the marker |

### Description

Helper IDisposable struct for use with ProfilerMarker.Auto.

Use ProfilerMarker.Auto to enclose a piece of code you want to profile in *using* statement. Constructor of *AutoScope* calls ProfilerMarker.Begin and *Dispose* method - ProfilerMarker.Begin.

```csharp
using Unity.Profiling;public class MySystemClass
{
    ProfilerMarker simulatePerfMarker = new ProfilerMarker("MySystem.Simulate");    public void UpdateLogic()
    {
        using (simulatePerfMarker.Auto())
        {
            // ...
        }
    }
}
```
