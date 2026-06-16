<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Unity.IO.LowLevel.Unsafe.AsyncReadManagerMetricsFilters.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Defines a filter for selecting specific categories of data when summarizing AsyncReadManager metrics.

Pass a filter to AsyncReadManagerMetrics.GetCurrentSummaryMetrics or AsyncReadManagerMetrics.GetSummaryOfMetrics to limit the summary to the categories of data specified in the filter. For each category supported by the `AsyncReadManagerMetricsFilters`, you can specify either a single value or an array of values.

```csharp
using Unity.IO.LowLevel.Unsafe;
using UnityEngine;public class GetMetricsSummarySample : MonoBehaviour
{
#if ENABLE_PROFILER && UNITY_2020_2_OR_NEWER
    AsyncReadManagerMetricsFilters m_SummaryFilter;    public void Start()
    {
        AsyncReadManagerMetrics.StartCollectingMetrics();
        // Create a filter for mesh and texture file reads that have been completed or failed
        AssetLoadingSubsystem[] assetLoadingSubsystems = new AssetLoadingSubsystem[] { AssetLoadingSubsystem.Texture, AssetLoadingSubsystem.Mesh };
        m_SummaryFilter = new AsyncReadManagerMetricsFilters(assetLoadingSubsystems);
        m_SummaryFilter.SetStateFilter(new ProcessingState[] { ProcessingState.Completed, ProcessingState.Failed });
    }    public void Update()
    {
        if (Time.frameCount == 10)
        {
            AsyncReadManagerSummaryMetrics summary = AsyncReadManagerMetrics.GetCurrentSummaryMetrics(m_SummaryFilter, AsyncReadManagerMetrics.Flags.ClearOnRead);
            Debug.Log($"Average bandwidth for Completed or Failed reads of Textures or Meshes: {summary.AverageBandwidthMBPerSecond} MB/s.");
        }
    }#endif
}
```

### Constructors

| Constructor | Description |
| --- | --- |
| AsyncReadManagerMetricsFilters | Constructor for an instance of the Summary Metrics Filters, used to filter the metrics data that is included in the calculation of a summary. |

### Public Methods

| Method | Description |
| --- | --- |
| ClearFilters | Clears all the filters on an existing AsyncReadManagerMetricsFilters instance. |
| RemovePriorityFilter | Remove the Priority filters from an existing SummaryMetricsFilters instance. |
| RemoveReadTypeFilter | Remove the ReadType filters from an existing SummaryMetricsFilters instance. |
| RemoveStateFilter | Remove the State filters from an existing SummaryMetricsFilters instance. |
| RemoveSubsystemFilter | Remove the Subsystem filters from an existing SummaryMetricsFilters instance. |
| RemoveTypeIDFilter | Remove the TypeID filters from an existing SummaryMetricsFilters instance. |
| SetPriorityFilter | Set Priority filters on an existing SummaryMetricsFilters instance. |
| SetReadTypeFilter | Set FileReadType filters on an existing SummaryMetricsFilters instance. |
| SetStateFilter | Set ProcessingState filters on an existing SummaryMetricsFilters instance. |
| SetSubsystemFilter | Set AssetLoadingSubsystem filters on an existing SummaryMetricsFilters instance. |
| SetTypeIDFilter | Set TypeID filters on an existing SummaryMetricsFilters instance. |
