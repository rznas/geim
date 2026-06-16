<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Unity.IO.LowLevel.Unsafe.AsyncReadManagerMetricsFilters.SetSubsystemFilter.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| _subsystem | AssetLoadingSubsystem to filter by. Summary will include reads that have this subsystem tag only. |
| _subsystems | Array of AssetLoadingSubsystems to filter by. Summary will include reads that have any of these subsystem tags. |

### Description

Set AssetLoadingSubsystem filters on an existing SummaryMetricsFilters instance.

This function replaces existing AssetLoadingSubsystem filters on this SummaryMetricsFilters instance. Other filter settings remain unchanged.
