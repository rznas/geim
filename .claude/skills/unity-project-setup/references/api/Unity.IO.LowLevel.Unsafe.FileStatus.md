<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Unity.IO.LowLevel.Unsafe.FileStatus.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

The possible statuses of a FileHandle.

Additional resources: FileHandle.Status, AsyncReadManager.OpenFileAsync

### Properties

| Property | Description |
| --- | --- |
| Closed | The file has been closed. |
| Pending | The asynchronous operation to open the file is still in progress. |
| Open | The file is open for reading. |
| OpenFailed | The request to open this file has failed. You must still dispose of the FileHandle using FileHandle.Close. |
