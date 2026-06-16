<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Profiling.FrameDataView.GetAllCategories.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| categoryInfoList | List filled with ProfilerCategoryInfo. |

### Description

Gets all the available Profiler Categories for the current profiling session.

Use to retrieve all the Profiler category information for the current Profiling session.

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
