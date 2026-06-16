<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Profiling.HierarchyFrameDataView-columnSelfGpuTime.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

The amount of the time GPU spends in a call itself. The amount of time is expressed in milliseconds.

This value is calculated by summing all *columnTotalGpuTime* values for each child sample and subtracting the result from *columnTotalGpuTime*.
