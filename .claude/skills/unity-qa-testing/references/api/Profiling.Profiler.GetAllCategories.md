<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Profiling.Profiler.GetAllCategories.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Returns all ProfilerCategory registered in Profiler.

Fills the provided array with a list of ProfilerCategory registered in the Profiler. It is a user's responsibility to provide an array with enough space. Returns first N ProfilerCategory where N is the size of the provided array if the size isn't enough. Use together with Profiler.GetCategoriesCount to get the required size.
