<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Unity.Profiling.Editor.ProfilerCounterDescriptor.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Provides a descriptor for a Profiler counter.

Used to describe a Profiler Counter or Profiler Counter Value, often within a ProfilerModule or ProfilerModuleViewController.

```csharp
using System;
using Unity.Profiling;
using Unity.Profiling.Editor;[Serializable]
[ProfilerModuleMetadata("Garbage Collection")]
public class GarbageCollectionProfilerModule : ProfilerModule
{
    static readonly ProfilerCounterDescriptor[] k_ChartCounters = new ProfilerCounterDescriptor[]
    {
        new ProfilerCounterDescriptor("GC Reserved Memory", ProfilerCategory.Memory),
        new ProfilerCounterDescriptor("GC Used Memory", ProfilerCategory.Memory),
        new ProfilerCounterDescriptor("GC Allocated In Frame", ProfilerCategory.Memory),
    };    public GarbageCollectionProfilerModule() : base(k_ChartCounters) {}
}
```

Additional resources: ProfilerModule, ProfilerModuleViewController.

### Properties

| Property | Description |
| --- | --- |
| CategoryName | The category name of the described Profiler counter. |
| Name | The name of the described Profiler counter. |

### Constructors

| Constructor | Description |
| --- | --- |
| ProfilerCounterDescriptor | Initializes and returns an instance of ProfilerCounterDescriptor. |
