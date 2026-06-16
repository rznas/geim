<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Profiling.Profiler.SetCategoryEnabled.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| category | The category you want to enable or disable. |
| enabled | Enable or disable the collection of data for this category. |

### Description

Enable or disable a given ProfilerCategory.

Disable a category to stop it from emitting stats and samples. Disabling categories that you are not interested in is a way to reduce the Profiler overhead. If you turn a category back on after you profile a frame with a disabled ProfilerCategory, this only turns on collection for subsequent frames.

**Note**: If the ProfilerWindow is open when starting to profile, it will override the enabled/disabled categories to reflect which charts are open at the time.

To query the current state of a category, use Profiler.IsCategoryEnabled.
