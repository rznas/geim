<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Unity.IO.LowLevel.Unsafe.AsyncReadManagerMetrics.GetMetrics.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| flags | Flags to control the behaviour, including clearing the underlying completed metrics after reading. |
| filters | (Optional) The filters to control the data returned. |

### Returns

**AsyncReadManagerRequestMetric[]** Array of read request metrics currently stored in the AsyncReadManager, which can be filtered by passing AsyncReadManagerMetricsFilters.

### Description

Returns the current AsyncReadManager metrics.

This function can filter the metrics collected by passing AsyncReadManagerMetricsFilters. See AsyncReadManagerMetricsFilters.ctor for information about filter creation.

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
        AsyncReadManagerRequestMetric[] thisFrameMetrics = AsyncReadManagerMetrics.GetMetrics(AsyncReadManagerMetrics.Flags.ClearOnRead);
        foreach (AsyncReadManagerRequestMetric metric in thisFrameMetrics)
        {
            if (metric.State == ProcessingState.Completed)
            {
                double bandwidthMBPerSecond = metric.SizeBytes / (metric.TotalTimeMicroseconds - metric.TimeInQueueMicroseconds);
                Debug.LogFormat($"Asset name:\"{metric.AssetName}\", bandwidth = {bandwidthMBPerSecond}MB/s");
            }
        }
    }#endif
}
```

### Parameters

| Parameter | Description |
| --- | --- |
| outMetrics | The pre-allocated list to store the metrics in. |
| flags | Flags to control the behaviour, including clearing the underlying completed metrics after reading. |
| filters | (Optional) The filters to control the data returned. |

### Description

Writes the current AsyncReadManager metrics into the given List.

This function can filter the metrics collected by passing AsyncReadManagerMetricsFilters. See AsyncReadManagerMetricsFilters.ctor for information about filter creation.

```csharp
using Unity.IO.LowLevel.Unsafe;
using System.Collections.Generic;
using UnityEngine;
public class AsyncReadManagerMetricsSample : MonoBehaviour
{
#if ENABLE_PROFILER && UNITY_2020_2_OR_NEWER
    void Start()
    {
        AsyncReadManagerMetrics.StartCollectingMetrics();
    }    void Update()
    {
        List<AsyncReadManagerRequestMetric> thisFrameMetrics = new List<AsyncReadManagerRequestMetric>();
        AsyncReadManagerMetrics.GetMetrics(thisFrameMetrics, AsyncReadManagerMetrics.Flags.ClearOnRead);
        foreach (AsyncReadManagerRequestMetric metric in thisFrameMetrics)
        {
            if (metric.State == ProcessingState.Completed)
            {
                double bandwidthMBPerSecond = metric.SizeBytes / (metric.TotalTimeMicroseconds - metric.TimeInQueueMicroseconds);
                Debug.LogFormat($"Asset name:\"{metric.AssetName}\", bandwidth = {bandwidthMBPerSecond}MB/s");
            }
        }
    }#endif
}
```
