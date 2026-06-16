<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/Manual/profiler-memory-counters-players.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

# Accessing memory counters in players

You can use the ProfilerRecorder API to access the Memory Profiler module’s counters in a player.

The following example contains a simple script that collects **Total Reserved Memory**, **GC Reserved Memory** and **System Used Memory** metrics, and displays those as a `GUI.TextArea`. The Memory Profiler module information belongs to the `ProfilerCategory.Memory` **Profiler category**.

```csharp
using System.Text;
using Unity.Profiling;
using UnityEngine;

public class MemoryStatsScript : MonoBehaviour
{
    string statsText;
    ProfilerRecorder totalReservedMemoryRecorder;
    ProfilerRecorder gcReservedMemoryRecorder;
    ProfilerRecorder systemUsedMemoryRecorder;

    void OnEnable()
    {
        totalReservedMemoryRecorder = ProfilerRecorder.StartNew(ProfilerCategory.Memory, "Total Reserved Memory");
        gcReservedMemoryRecorder = ProfilerRecorder.StartNew(ProfilerCategory.Memory, "GC Reserved Memory");
        systemUsedMemoryRecorder = ProfilerRecorder.StartNew(ProfilerCategory.Memory, "System Used Memory");
    }

    void OnDisable()
    {
        totalReservedMemoryRecorder.Dispose();
        gcReservedMemoryRecorder.Dispose();
        systemUsedMemoryRecorder.Dispose();
    }

    void Update()
    {
        var sb = new StringBuilder(500);
        if (totalReservedMemoryRecorder.Valid)
            sb.AppendLine($"Total Reserved Memory: {totalReservedMemoryRecorder.LastValue}");
        if (gcReservedMemoryRecorder.Valid)
            sb.AppendLine($"GC Reserved Memory: {gcReservedMemoryRecorder.LastValue}");
        if (systemUsedMemoryRecorder.Valid)
            sb.AppendLine($"System Used Memory: {systemUsedMemoryRecorder.LastValue}");
        statsText = sb.ToString();
    }

    void OnGUI()
    {
        GUI.TextArea(new Rect(10, 30, 250, 50), statsText);
    }
}
```

The following screenshot shows the result of adding the script to the [Tanks! tutorial project](https://assetstore.unity.com/packages/essentials/tutorial-projects/tanks-tutorial-46209).

This information is available in release players, as are the other high level counters available in the Memory Profiler module. If you want to view the selected memory counters in a custom module in the Profiler window, use the Profiler module editor to configure the chart.

For more information on adding profiler information to your code, refer to Adding profiling information to your code.

## Additional resources

- Profiler counters reference
- Adding profiling information to your code
- Visualizing profiler counters
- Memory Profiler module reference
