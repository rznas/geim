<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Unity.Profiling.Editor.ProfilerModule.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Represents a Profiler module in the Profiler window.

Use ProfilerModule to extend the Profiler window with custom Profiler modules. You can use ProfilerModule with the [Profiling Core package](https://docs.unity3d.com/Packages/com.unity.profiling.core@latest), to expose and visualize performance metrics for your own systems in the Profiler window.

To define a ProfilerModule derived type, use an Editor script inside your project or package and attribute it with the ProfilerModuleMetadataAttribute. At a minimum, you must define the Profiler module’s name and chart counters, as shown below. The Profiler window automatically displays any ProfilerModule derived types present in your project.

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
    };    public GarbageCollectionProfilerModule() : base(k_ChartCounters) { }
}
```

When a Profiler module is selected in the Profiler window, Unity displays the module's **Details View**, which contains additional, relevant performance data. By default, a module’s **Details View** displays a list of its chart’s counters alongside their current values in the selected frame. You can implement a custom **Details View** to present a bespoke visualization of your performance data when the module is selected. For more information, see ProfilerModule.CreateDetailsViewController.

Additional resources: ProfilerModuleMetadataAttribute, ProfilerCounterDescriptor, ProfilerModuleChartType, ProfilerModuleViewController.

### Properties

| Property | Description |
| --- | --- |
| DisplayName | The module’s display name. |
| ProfilerWindow | The Profiler window that the module instance belongs to. |

### Public Methods

| Method | Description |
| --- | --- |
| CreateDetailsViewController | Creates a View Controller object that draws the Profiler module’s Details View in the Profiler window. Unity calls this method automatically when the module is selected in the Profiler window. |
