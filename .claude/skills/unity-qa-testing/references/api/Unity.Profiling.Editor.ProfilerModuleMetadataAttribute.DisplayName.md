<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Unity.Profiling.Editor.ProfilerModuleMetadataAttribute.DisplayName.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

The attributed Profiler module’s display name.

The attributed Profiler module’s display name as a string. Read-only.

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
