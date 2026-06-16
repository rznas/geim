<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Profiling.Profiler.GetAreaEnabled.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| area | Which area you want to check the state of. |

### Returns

**bool** Returns whether or not a given ProfilerArea is currently enabled.

### Description

Returns whether or not a given ProfilerArea is currently enabled.

Enabled areas emit stats and samples. Each enabled area adds to the profiler overhead. To disable an area, either close the corresponding chart in the ProfilerWindow or call Profiler.SetAreaEnabled.
