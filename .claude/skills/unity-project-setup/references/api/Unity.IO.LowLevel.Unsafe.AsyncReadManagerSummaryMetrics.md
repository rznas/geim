<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Unity.IO.LowLevel.Unsafe.AsyncReadManagerSummaryMetrics.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

A summary of the metrics collected for AsyncReadManager read operations.

Get a summary of the current metrics by calling AsyncReadManagerMetrics.GetCurrentSummaryMetrics. This function summarizes all metrics recorded since you started metrics collection or last cleared your metrics data. Get a summary of an existing set of AsyncReadManagerRequestMetric records by calling AsyncReadManagerMetrics.GetSummaryOfMetrics. You can get these records by calling AsyncReadManagerMetrics.GetMetrics. In both cases, you can filter the data with AsyncReadManagerMetricsFilters in order to focus the summary on the particular categories of data you want to analyze. Additional resources: AsyncReadManagerMetrics.

```csharp
using Unity.IO.LowLevel.Unsafe;
using UnityEngine;public class GetMetricsSummary : MonoBehaviour
{
#if ENABLE_PROFILER && UNITY_2020_2_OR_NEWER
    AsyncReadManagerMetricsFilters m_Filter;
    AsyncReadManagerSummaryMetrics m_Summary;
    public void Start()
    {
        // Create a filter for texture file reads that have been completed
        m_Filter = new AsyncReadManagerMetricsFilters();
        m_Filter.SetStateFilter(ProcessingState.Completed);
    }    public void Update()
    {
        m_Summary = AsyncReadManagerMetrics.GetCurrentSummaryMetrics(m_Filter, AsyncReadManagerMetrics.Flags.ClearOnRead);
        Debug.Log($"Last frame bandwidth: {m_Summary.AverageBandwidthMBPerSecond} MB/s.");
    }#endif
}
```

### Properties

| Property | Description |
| --- | --- |
| AverageBandwidthMBPerSecond | The mean rate of reading of data (bandwidth), in Mbps, for read request metrics included in the summary calculation. |
| AverageReadSizeInBytes | The mean size of data read, in bytes, for read request metrics included in the summary calculation. |
| AverageReadTimeMicroseconds | The mean time taken for reading (excluding queue time), in microseconds, for read request metrics included in the summary calculation. |
| AverageThroughputMBPerSecond | The mean rate of request throughput, in Mbps, for read request metrics included in the summary calculation. |
| AverageTotalRequestTimeMicroseconds | The mean time taken from request to completion, in microseconds, for completed read request metrics included in the summary calculation. |
| AverageWaitTimeMicroseconds | The mean time taken from request to the start of reading, in microseconds, for read request metrics included in the summary calculation. |
| LongestReadAssetType | The asset type ID for the longest read included in the summary calculation. |
| LongestReadSubsystem | The Subsystem tag for the longest read included in the summary calculation. |
| LongestReadTimeMicroseconds | The longest read time (not including time in queue) included in the summary calculation in microseconds. |
| LongestWaitAssetType | The asset type ID for the longest wait time included in the summary calculation. |
| LongestWaitSubsystem | The Subsystem tag for the longest wait time included in the summary calculation. |
| LongestWaitTimeMicroseconds | The longest time spent waiting of metrics included in the summary calculation, in microseconds. |
| NumberOfAsyncReads | The total number of Async reads in the metrics included in the summary calculation. |
| NumberOfCachedReads | The total number of cached reads (so read time was zero) in the metrics included in the summary calculation. |
| NumberOfCanceledRequests | The total number of canceled requests in the metrics included in the summary calculation. |
| NumberOfCompletedRequests | The total number of completed requests in the metrics included in the summary calculation. |
| NumberOfFailedRequests | The total number of failed requests in the metrics included in the summary calculation. |
| NumberOfInProgressRequests | The total number of in progress requests in the metrics included in the summary calculation. |
| NumberOfSyncReads | The total number of Sync reads in the metrics included in the summary calculation. |
| NumberOfWaitingRequests | The total number of waiting requests in the metrics included in the summary calculation. |
| TotalBytesRead | The total number of bytes read in the metrics included in the summary calculation. |
| TotalNumberOfRequests | The total number of read requests included in the summary calculation. |
