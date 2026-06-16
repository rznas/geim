<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Unity.IO.LowLevel.Unsafe.AsyncReadManagerMetrics.GetSummaryOfMetrics.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| metrics | Array of previously collected AsyncReadManagerRequestMetrics. |

### Returns

**AsyncReadManagerSummaryMetrics** Calculated summary of the given metrics.

### Description

Summarizes an array containing AsyncReadManagerRequestMetric records.

You can access the metrics collected for AsyncReadManager read operations by calling GetMetrics.

### Parameters

| Parameter | Description |
| --- | --- |
| metrics | List of previously collected AsyncReadManagerRequestMetrics. |
| metricsFilters | Filters to apply to the data used in calculating the summary. |

### Returns

**void** Calculated summary of given metrics that match the filters.

### Description

Summarizes AsyncReadManagerRequestMetric records that match the specified filter.

The summary returned is calculated from any data in the specified `metrics` list that matches the `metricsFilters`. See AsyncReadManagerMetricsFilters.ctor for information about filter creation. You can access the metrics collected for AsyncReadManager read operations by calling GetMetrics.
