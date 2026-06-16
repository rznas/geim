<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Unity.IO.LowLevel.Unsafe.AsyncReadManagerMetrics.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Manages the recording and retrieval of metrics from the AsyncReadManager.

The metrics manager records the states and timings of individual read operations, as well as additional, contextual information for certain asset types. The manager collects metrics for C# AsyncReadManager.Read operations and read operations from internal Unity systems.

 Begin recording metrics by calling StartCollectingMetrics and end recording with StopCollectingMetrics. You can enable metrics collection when your program first launches using the command-line argument "-enable-file-read-metrics". Turn off metrics when your data collection is finished to avoid the small performance impact associated with metric collection.

 Retrieve metric data by calling GetMetrics, which returns an array of metrics records. You can also get a summary of the current data with GetCurrentSummaryMetrics. In both cases, you can choose whether or not to clear the existing metrics when you make these functions calls. If you do not clear the metrics data, then the same records are included in the returned array or summary the next time you get the metrics or a summary. If you do clear the metrics, only new data is included the next time you call either method.

 Call GetSummaryOfMetrics to summarize the records in an array of AsyncReadManagerRequestMetric objects (which you have retrieved earlier using GetMetrics). When calling either GetSummaryOfMetrics or GetCurrentSummaryMetrics, you can filter the data used to compute the summary by passing in a set of AsyncReadManagerMetricsFilters objects.

 The AsyncReadManagerMetrics class is only available in development builds and the Editor. You should guard usage of this class using the scripting define symbol `ENABLE_PROFILER` (as demonstrated in following example).

```csharp
using UnityEngine;
using Unity.IO.LowLevel.Unsafe;class AsyncReadManagerMetricsSample : MonoBehaviour
{
    const int maxNumberFrames = 10;
    public void Start()
    {
#if ENABLE_PROFILER && UNITY_2020_2_OR_NEWER
        AsyncReadManagerMetrics.StartCollectingMetrics();
#endif
    }    public void Update()
    {
        if (Time.frameCount > maxNumberFrames)
        {
#if ENABLE_PROFILER && UNITY_2020_2_OR_NEWER
            AsyncReadManagerRequestMetric[] metrics = AsyncReadManagerMetrics.GetMetrics(AsyncReadManagerMetrics.Flags.ClearOnRead);
            AsyncReadManagerMetrics.StopCollectingMetrics();
            Debug.LogFormat("Number of metrics collected: {0}", metrics.Length); // If no reads have been triggered, this will be zero
#endif
        }
    }
}
```

### Static Methods

| Method | Description |
| --- | --- |
| ClearCompletedMetrics | Clears the metrics for all completed requests, including failed and canceled requests. |
| GetCurrentSummaryMetrics | Gets a summary of the metrics collected for AsyncReadManager read operations since you started data collection or last cleared the metrics data. |
| GetMetrics | Returns the current AsyncReadManager metrics. |
| GetSummaryOfMetrics | Summarizes an array containing AsyncReadManagerRequestMetric records. |
| GetTotalSizeOfNonASRMReadsBytes | Returns the amount of data (in bytes) read through systems other than the AsyncReadManager. |
| IsEnabled | Reports whether the metrics system for the AsyncReadManager is currently recording data. |
| StartCollectingMetrics | Begin recording metrics data for AsyncReadManager read operations. |
| StopCollectingMetrics | Stop recording metrics data for AsyncReadManager read operations. |
