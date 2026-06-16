<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/Manual/AsyncReadManagerMetrics.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

# Collect asset loading metrics

Use the `AsyncReadManagerMetrics` class to monitor runtime asset loading and file reading performance. This class records data for all file read operations managed by the `AsyncReadManager`.

Unity uses the `AsyncReadManager` to read most files at runtime, including AssetBundles, Addressables, and Resources. You can also load files from **scripts** using `AsyncReadManager.Read`.

You can use the `AsyncReadManagerMetrics` to do the following:

- Start and stop metrics collection.
- Retrieve and analyze recorded metrics data.
- Filter and summarize data to help your analysis.

This information can help you identify problems with asset loading and measure the impact of your changes have on performance.

## Development build requirement

The `AsyncReadManagerMetrics` class is only available in **development builds**. To ensure compatibility, wrap calls to `AsyncReadManagerMetrics` APIs in an `#if` preprocessor directive using the `ENABLE_PROFILER` symbol. For older Unity versions, use the `UNITY_2020_2_OR_NEWER` symbol to remove the metric code. For example:

```
#if ENABLE_PROFILER && UNITY_2020_2_OR_NEWER
    AsyncReadManagerMetrics.StartCollectingMetrics();
#endif
```

## Enable metric collection

Enable metrics collection before any data is recorded. You can do this in one of the following ways:

- Call `AsyncReadManagerMetrics.StartCollectingMetrics` in your script.
- Pass the `-enable-file-read-metrics` command-line argument when launching your application.

To collect metrics in Play mode, pass the `-enable-file-read-metrics` argument when launching the Unity Editor. However, the Editor loads some categories of assets, such as textures, and doesn’t reload them when you enter Play mode. For complete file I/O metrics, you must collect data from a development build of your application.

## Getting metric data

Use `GetMetrics` to retrieve collected metrics from `AsyncReadManagerMetrics`. Specify `AsyncReadManagerMetrics.Flags` to determine whether to clear metrics after retrieval. Clearing metrics removes completed (including canceled and failed) reads but retains queued or in-progress operations. To access the metrics for unfinished operations, call `GetMetrics` again after they complete. By clearing the metrics regularly, you can avoid rereading the same data and also reduce the data overhead of the system.

```
#if ENABLE_PROFILER && UNITY_2020_2_OR_NEWER
    AsyncReadManagerRequestMetric[] metrics 
        = AsyncReadManagerMetrics.GetMetrics(AsyncReadManagerMetrics.Flags.ClearOnRead);
#endif
```

Metrics data includes the following context data:

- The `AssetLoadingSubsystem` that initiated the read. If unavailable, defaults to `Other`.
- `AssetName`. If unavailable, defaults to empty.
- `AssetTypeID`. If unavailable, defaults to zero.

The following is a list of supported asset TypeIDs:

| **TypeID** | **Type name** |
| --- | --- |
| 28 | Texture2D |
| 117 | Texture3D |
| 89 | **CubeMap** |
| 43 | Mesh |

For other TypeIDs that might appear, refer to YAML class ID reference.

## Get summarized data

Get a summary of the `AsyncReadManager` metrics with the following methods:

- `GetCurrentSummaryMetrics`: Returns a summary of all the metrics collected after the last time you cleared the metric store.
- `GetSummaryOfMetrics`: Returns a summary of the metrics in an array of `AsyncReadManagerRequestMetric`, which you can get by calling `GetMetrics`.

For example:

```
#if ENABLE_PROFILER && UNITY_2020_2_OR_NEWER
    AsyncReadManagerSummaryMetrics summaryOfMetrics 
        = AsyncReadManagerMetrics.GetCurrentSummaryMetrics(AsyncReadManagerMetrics.Flags.ClearOnRead);
#endif
```

Or:

```
#if ENABLE_PROFILER && UNITY_2020_2_OR_NEWER
    AsyncReadManagerRequestMetric[] metrics 
        = AsyncReadManagerMetrics.GetMetrics(AsyncReadManagerMetrics.Flags.ClearOnRead);
    AsyncReadManagerSummaryMetrics summaryOfMetrics 
        = AsyncReadManagerMetrics.GetSummaryOfMetrics(metrics);
#endif
```

Summary statistics include:

- Average bandwidth
- Average read size
- Asset type with the longest load time
- Number of reads
- Number of requests
- Total bytes read

For a full list of summary metrics, refer to `AsyncReadManagerSummaryMetrics`.

By default, the summarized statistics include all read operations, including those that are queued or in-progress. You can use a filter to limit the summary to those operations you’re interested in. For example, you can use a filter to limit the summarized statistics to completed read operations for texture assets.

**Note:** Calculating summaries requires processing resources. To avoid affecting your measurements, collect metrics first and summarize them after operations are complete.

## Using summary filters

Use `AsyncReadManagerMetricsFilters` to filter summarized data. You can filter by the following:

- Asset type: By YAML ID.
- Processing state: For example, queued, reading, or completed.
- Read type: For example, async or sync.
- Priority: For example, high or low.
- Subsystem: By `AssetLoadingSubsystem`.

You can set multiple categories for the same filter. A read operation must match all categories for the metrics of that operation to be included in the summary. For example, you can specify values for both the `ProcessingState` and the `Subsystem` of a filter to summarize only operations in the designated processing states initiated by the designated subsytems.

You can also specify multiple values for a category. In this case, a read operation can match any value you specify for a category for its metrics to be included in the summary. For example, filtering by both mesh and texture includes operations for both asset types.

## Additional resources

- Asset Loading Profiler module
