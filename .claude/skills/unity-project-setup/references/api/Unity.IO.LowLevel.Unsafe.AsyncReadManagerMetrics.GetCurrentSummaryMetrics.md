<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Unity.IO.LowLevel.Unsafe.AsyncReadManagerMetrics.GetCurrentSummaryMetrics.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| flags | Flags to control the behavior, including clearing the underlying completed metrics after reading. |

### Returns

**AsyncReadManagerSummaryMetrics** A summary of the current metrics data.

### Description

Gets a summary of the metrics collected for AsyncReadManager read operations since you started data collection or last cleared the metrics data.

The returned AsyncReadManagerSummaryMetrics object provides overall statistics about the collected data. Call GetMetrics to get the underlying metrics data used for the summary.

 Set the `flags` parameter to clear all data after returning the summary. This has the same affect as calling ClearCompletedMetrics.

```csharp
using Unity.IO.LowLevel.Unsafe;
using UnityEngine;
public class AsyncReadManagerMetricsSample : MonoBehaviour
{
#if ENABLE_PROFILER && UNITY_2020_2_OR_NEWER
    void Start()
    {
        AsyncReadManagerMetrics.StartCollectingMetrics();
    }    void Update()
    {
        if (Time.frameCount == 10)
        {
            AsyncReadManagerSummaryMetrics summaryOfMetrics = AsyncReadManagerMetrics.GetCurrentSummaryMetrics(AsyncReadManagerMetrics.Flags.ClearOnRead);
            Debug.LogFormat($"Average bandwidth of every read over 10 frames: {summaryOfMetrics.AverageBandwidthMBPerSecond}MB/s");
            Debug.LogFormat($"Number of completed reads in 10 frames: {summaryOfMetrics.NumberOfCompletedRequests}");
            Debug.LogFormat($"Total number of requests in 10 frames: {summaryOfMetrics.TotalNumberOfRequests}");
            Debug.LogFormat($"Subsystem responsible for longest file read: {summaryOfMetrics.LongestReadSubsystem}");
            Debug.LogFormat($"Asset type responsible for longest wait: {summaryOfMetrics.LongestWaitAssetType}");
        }
    }#endif
}
```

### Parameters

| Parameter | Description |
| --- | --- |
| metricsFilters | The filters to apply to the metrics before calculating the summary. |
| flags | Flags to control the behavior, including clearing the underlying completed metrics after reading. |

### Returns

**AsyncReadManagerSummaryMetrics** A summary of the current metric data, filtered by the specified `metricsFilters`.

### Description

Gets a filtered summary of the metrics collected for AsyncReadManager read operations since you started data collection or last cleared the metrics data.

This function filters the metrics collected for AsyncReadManager read operations and provides a summary based on the filtered data. See AsyncReadManagerMetricsFilters.ctor for information about filter creation.

```csharp
using Unity.IO.LowLevel.Unsafe;
using UnityEngine;public class AsyncReadManagerMetricsSample : MonoBehaviour
{
#if ENABLE_PROFILER && UNITY_2020_2_OR_NEWER
    AsyncReadManagerMetricsFilters filters;
    void Start()
    {
        AsyncReadManagerMetrics.StartCollectingMetrics();
        filters = new AsyncReadManagerMetricsFilters();
        filters.SetPriorityFilter(Priority.PriorityHigh);
        filters.SetSubsystemFilter(AssetLoadingSubsystem.Texture);
    }    void Update()
    {
        AsyncReadManagerSummaryMetrics filteredSummaryOfMetrics = AsyncReadManagerMetrics.GetCurrentSummaryMetrics(filters, AsyncReadManagerMetrics.Flags.None);
        Debug.LogFormat($"Number of requests matching given filters: {filteredSummaryOfMetrics.TotalNumberOfRequests}");
        Debug.LogFormat($"Average bandwidth for textures in high priority queue: {filteredSummaryOfMetrics.AverageBandwidthMBPerSecond}MB/s");
        // Clear completed reads from metrics each frame to avoid rereading the same requests
        AsyncReadManagerMetrics.ClearCompletedMetrics();
    }#endif
}
```
