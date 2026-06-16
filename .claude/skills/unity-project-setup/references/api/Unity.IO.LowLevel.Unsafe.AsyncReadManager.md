<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Unity.IO.LowLevel.Unsafe.AsyncReadManager.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

With the AsyncReadManager, you can perform asynchronous I/O operations through Unity's virtual file system. You can perform these operations on any thread or job.

### Static Methods

| Method | Description |
| --- | --- |
| CloseCachedFileAsync | Closes a file held open internally by the AsyncReadManager. |
| GetFileInfo | Gets information about a file. |
| OpenFileAsync | Opens the file asynchronously. |
| Read | Issues an asynchronous file read operation. Returns a ReadHandle. |
| ReadDeferred | Queues a set of read operations for a file once the specified Jobs have completed. |
