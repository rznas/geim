<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Profiling.Profiler.IsCategoryEnabled.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| category | Which category you want to check the state of. |

### Returns

**bool** Returns whether or not a given ProfilerCategory is currently enabled.

### Description

Returns whether or not a given ProfilerCategory is currently enabled.

Enabled categories emit stats and samples. Each enabled category adds to the profiler overhead. To disable a category, either close the corresponding chart in the ProfilerWindow or call Profiler.SetCategoryEnabled.
