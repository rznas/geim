<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Unity.IO.LowLevel.Unsafe.AsyncReadManagerMetricsFilters.SetReadTypeFilter.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| _readType | FileReadType to filter by. Summary will include reads that had this read type only. |
| _readTypes | Array of FileReadTypes to filter by. Summary will include reads that have any of these read types. |

### Description

Set FileReadType filters on an existing SummaryMetricsFilters instance.

This function replaces existing ReadType filters on this SummaryMetricsFilters instance. Other filter settings remain unchanged.
