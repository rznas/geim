<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Unity.IO.LowLevel.Unsafe.AsyncReadManagerMetricsFilters.SetPriorityFilter.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| _priorityLevel | Priority level to filter by. Summary will include reads that had this priority level only. |
| _priorityLevels | Array of priority levels to filter by. Summary will include reads that have any of these priority levels. |

### Description

Set Priority filters on an existing SummaryMetricsFilters instance.

This function replaces existing Priority filters on this SummaryMetricsFilters instance. Other filter settings remain unchanged.
