<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Unity.IO.LowLevel.Unsafe.AsyncReadManagerRequestMetric.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Metrics for an individual read request.

Get metrics records by calling AsyncReadManager.GetMetrics.

### Properties

| Property | Description |
| --- | --- |
| AssetName | The name of the asset being read. |
| AssetTypeId | The type ID of the asset being read in the read request. |
| BatchReadCount | The number of batch read commands contained in the read request. |
| CurrentBytesRead | Total number of bytes of the read request read so far. |
| FileName | The filename the read request is reading from. |
| IsBatchRead | Returns whether this read request contained batch read commands. |
| OffsetBytes | The offset of the read request from the start of the file, in bytes. |
| PriorityLevel | The priority level of the read request. |
| ReadType | The read type (sync or async) of the read request. |
| RequestTimeMicroseconds | The time at which the read request was made, in microseconds elapsed since application startup. |
| SizeBytes | The size of the read request, in bytes. |
| State | The state of the read request at the time of retrieving the metrics. |
| Subsystem | The Subsystem tag assigned to the read operation. |
| TimeInQueueMicroseconds | The amount of time the read request waited in the AsyncReadManager queue, in microseconds. |
| TotalTimeMicroseconds | The total time in microseconds from the read request being added until its completion, or the time of metrics retrieval, depending whether the read has completed or not. |
