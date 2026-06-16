<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Unity.IO.LowLevel.Unsafe.AsyncReadManagerMetricsFilters.SetStateFilter.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| _state | ProcessingState to filter by. Summary will include reads that have this state only. |
| _states | Array of ProcessingStates to filter by. Summary will include reads that have any of these states. |

### Description

Set ProcessingState filters on an existing SummaryMetricsFilters instance.

This function replaces existing ProcessingState filters on this SummaryMetricsFilters instance. Other filter settings remain unchanged.
