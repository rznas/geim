<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Unity.IO.LowLevel.Unsafe.AsyncReadManager.GetFileInfo.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| filename | The name of the file to query. |
| result | A struct that this function fills in with information about the file upon completion of this asynchronous request. |

### Returns

**ReadHandle** A read handle that you can use to monitor the progress and status of this GetFileInfo command.

### Description

Gets information about a file.

This function gets information about the specified file asynchronously without opening the file. On completion of the asynchronous operation, the `result` parameter's FileInfoResult.FileState member reports whether the file exists (FileState.Exists) or not (FileState.Absent). If the file exists, the `result` parameter's FileInfoResult.FileSize member reports the size of the file in bytes. If the file is absent, the size is reported as zero.
