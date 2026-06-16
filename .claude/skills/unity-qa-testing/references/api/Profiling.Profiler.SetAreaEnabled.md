<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Profiling.Profiler.SetAreaEnabled.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| area | The area you want to enable or disable. |
| enabled | Enable or disable the collection of data for this area. |

### Description

Enable or disable a given ProfilerArea.

Disable an area to stop it emitting stats and samples. Disabling areas that you are not interested in is a way to reduce profiler overhead. If you turn an area back on after you profile a frame with a disabled ProfilerArea, this only turns on collection for subsequent frames.

To disable or enable an area, close or open the corresponding chart in the ProfilerWindow, or call this method.

**Note**: If the ProfilerWindow is open when starting to profile, it will override the enabled/disabled areas to reflect which charts are open at the time.

To query the current state of an area, use Profiler.GetAreaEnabled.

Setting ProfilerArea.CPU is essentially the same as setting Profiler.enabled, since some other areas depend on CPU sample collection and it is also handling the frame ticks.
