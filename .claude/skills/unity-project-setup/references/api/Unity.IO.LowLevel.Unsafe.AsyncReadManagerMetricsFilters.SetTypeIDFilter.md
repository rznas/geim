<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Unity.IO.LowLevel.Unsafe.AsyncReadManagerMetricsFilters.SetTypeIDFilter.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| _typeID | TypeID to filter by. Summary will include reads that have this type ID only. |
| _typeIDs | Array of TypeIDs to filter by. Summary will include reads that have any of these Type IDs. |

### Description

Set TypeID filters on an existing SummaryMetricsFilters instance.

This function replaces existing TypeID filters on this SummaryMetricsFilters instance. Other filter settings remain unchanged.
