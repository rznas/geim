<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Unity.Profiling.LowLevel.Unsafe.ProfilerRecorderDescription.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Gets the description of a Profiler metric.

Provides information about Profiler metrics that are accessible with the ProfilerRecorder. Use Name and Category to create an instance of ProfilerRecorder.

```csharp
using System.Collections.Generic;
using System.Text;
using UnityEngine;
using Unity.Profiling;
using Unity.Profiling.LowLevel.Unsafe;public class Example
{
    struct StatInfo
    {
        public ProfilerCategory Cat;
        public string Name;
        public ProfilerMarkerDataUnit Unit;
    }    static unsafe void EnumerateProfilerStats()
    {
        var availableStatHandles = new List<ProfilerRecorderHandle>();
        ProfilerRecorderHandle.GetAvailable(availableStatHandles);        var availableStats = new List<StatInfo>(availableStatHandles.Count);
        foreach (var h in availableStatHandles)
        {
            var statDesc = ProfilerRecorderHandle.GetDescription(h);
            var statInfo = new StatInfo()
            {
                Cat = statDesc.Category,
                Name = statDesc.Name,
                Unit = statDesc.UnitType
            };
            availableStats.Add(statInfo);
        }
        availableStats.Sort((a, b) =>
        {
            var result = string.Compare(a.Cat.ToString(), b.Cat.ToString());
            if (result != 0)
                return result;            return string.Compare(a.Name, b.Name);
        });        var sb = new StringBuilder("Available stats:\n");
        foreach (var s in availableStats)
        {
            sb.AppendLine($"{(int)s.Cat}\t\t - {s.Name}\t\t - {s.Unit}");
        }        Debug.Log(sb.ToString());
    }
}
```

### Properties

| Property | Description |
| --- | --- |
| Category | Gets the ProfilerCategory value of the Profiler metric. |
| DataType | Gets the data value type of the Profiler metric. |
| Flags | Profiler marker flags of the metric. |
| Name | The name of the Profiler metric. |
| NameUtf8 | The name of the Profiler metric as a pointer to UTF-8 byte array. |
| NameUtf8Len | Name length excluding null terminator. |
| UnitType | Gets the data unit type of the Profiler metric. |
