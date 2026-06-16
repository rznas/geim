<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Unity.IO.LowLevel.Unsafe.ReadHandle.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

You can use this handle to query the status of an asynchronous read operation. Note: To avoid a memory leak, you must call Dispose.

### Properties

| Property | Description |
| --- | --- |
| JobHandle | JobHandle that completes when the read operation completes. |
| ReadCount | The number of read commands performed for this read operation. Will return zero until the reads have begun. |
| Status | Current state of the read operation. |

### Public Methods

| Method | Description |
| --- | --- |
| Cancel | Cancels the AsyncReadManager.Read operation on this handle. |
| Dispose | Disposes the ReadHandle. Use this to free up internal resources for reuse. |
| GetBytesRead | Returns the total number of bytes read by all the ReadCommand operations the asynchronous file read request. |
| GetBytesReadArray | Returns an array containing the number of bytes read by the ReadCommand operations during the asynchronous file read request, where each index corresponds to the ReadCommand index. |
| IsValid | Check if the ReadHandle is valid. |
