<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Unity.Profiling.Editor.ProfilerModuleMetadataAttribute.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Provides metadata related to a ProfilerModule, such as its name and icon path.

You must attribute a ProfilerModule derived type with ProfilerModuleMetadataAttribute for Unity to display it in the Profiler window.

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

### Properties

| Property | Description |
| --- | --- |
| DisplayName | The attributed Profiler module’s display name. |
| IconPath | The path to the attributed Profiler module’s icon. |

### Constructors

| Constructor | Description |
| --- | --- |
| ProfilerModuleMetadataAttribute | Initializes and returns an instance of ProfilerModuleMetadataAttribute. |
