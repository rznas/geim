<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Profiling.ProfilerCategoryInfo.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Category information descriptor structure.

Contains the full information about a Profiler category such as its name, color, id, and flags. Use with FrameDataView.GetAllCategories and FrameDataView.GetCategoryInfo to get information on the available Profiler categories.

```csharp
using System;
using System.Collections.Generic;
using UnityEditor.Profiling;
using Unity.Profiling;public class Example
{
    public static void GetAllBuiltinProfilerCategories(FrameDataView frameDataView, List<ProfilerCategoryInfo> unityProfilerCategories)
    {
        unityProfilerCategories.Clear();
        var infos = new List<ProfilerCategoryInfo>();
        frameDataView.GetAllCategories(infos);
        foreach (var info in infos)
        {
            if (info.flags.HasFlag(ProfilerCategoryFlags.Builtin))
            {
                unityProfilerCategories.Add(info);
            }
        }
    }
}
```

### Properties

| Property | Description |
| --- | --- |
| color | The color of the Profiler category, as a Color32. |
| flags | Flags for showing if the Category is user defined or built into Unity. |
| id | Id used by Unity for tracking the Category. |
| name | The name used by Unity for the Category. |
