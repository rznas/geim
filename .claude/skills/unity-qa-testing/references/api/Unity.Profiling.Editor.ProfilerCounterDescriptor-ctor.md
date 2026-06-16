<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Unity.Profiling.Editor.ProfilerCounterDescriptor-ctor.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| name | The name of the Profiler counter to describe. A string. |
| category | The category of the Profiler counter to describe. A ProfilerCategory. |

### Description

Initializes and returns an instance of ProfilerCounterDescriptor.

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

Additional resources: ProfilerModule.

### Parameters

| Parameter | Description |
| --- | --- |
| name | The name of the Profiler counter to describe, as a string. |
| categoryName | The category name of the Profiler counter to describe, as a string. |

### Description

Initializes and returns an instance of ProfilerCounterDescriptor.

```csharp
using System;
using Unity.Profiling;
using Unity.Profiling.Editor;[Serializable]
[ProfilerModuleMetadata("Garbage Collection")]
public class GarbageCollectionProfilerModule : ProfilerModule
{
    static readonly ProfilerCounterDescriptor[] k_ChartCounters = new ProfilerCounterDescriptor[]
    {
        new ProfilerCounterDescriptor("GC Reserved Memory", ProfilerCategory.Memory.Name),
        new ProfilerCounterDescriptor("GC Used Memory", ProfilerCategory.Memory.Name),
        new ProfilerCounterDescriptor("GC Allocated In Frame", ProfilerCategory.Memory.Name),
    };    public GarbageCollectionProfilerModule() : base(k_ChartCounters) {}
}
```

Additional resources: ProfilerModule.
