<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Unity.Profiling.ProfilerCategory-ctor.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| categoryName | Profiler category name. |

### Description

Use to construct ProfilerCategory by category name.

This constructor performs a lookup across built-in Profiler categories and stores the category identifier. If the category does not exist, then it uses ProfilerCategory.Scripts instead.
