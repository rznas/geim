<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Unity.Profiling.Editor.ProfilerModuleMetadataAttribute.IconPath.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

The path to the attributed Profiler module’s icon.

Unity displays a Profiler module’s icon next to its name in the Profiler window. The recommended icon size at the specified path is 16x16 pixels. To provide a retina icon use the “@2x” suffix, as shown in the example below. To provide a dark-mode icon, use the “d_” prefix, as shown in the example below. If you're working in a package, use the package path scheme to reference the icon.

A string. Read-only.

```csharp
// With the following icons present in the Assets/Icons directory of the project and an icon path of "Assets/Icons/GarbageCollectionIcon.png", Unity will load the appropriate icon depending upon the context.
// - Assets/Icons/GarbageCollectionIcon.png // 16 x 16 Standard Light Mode Icon
// - Assets/Icons/GarbageCollectionIcon@2x.png // 32 x 32 Retina Light Mode Icon
// - Assets/Icons/d_GarbageCollectionIcon.png // 16 x 16 Standard Dark Mode Icon
// - Assets/Icons/d_GarbageCollectionIcon@2x.png // 32 x 32 Retina Dark Mode Iconusing System;
using Unity.Profiling;
using Unity.Profiling.Editor;[Serializable]
[ProfilerModuleMetadata("Garbage Collection", IconPath = "Assets/Icons/GarbageCollectionIcon.png")]
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
