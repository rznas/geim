<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Unity.IO.LowLevel.Unsafe.FileHandle.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

A handle to an asynchronously opened file.

Opening a file with AsyncReadManager.OpenFileAsync returns a FileHandle instance. You can use this handle to check the status of the asynchronous open operation.

Use AsyncReadManager.Read to read the data in the file after the open operation is complete. This will automatically wait for the open operation to complete, and give the ReadHandle a WaitingOnJob ReadStatus while it does so. If using AsyncReadManager.ReadDeferred instead, you should make sure that the passed in JobHandle waits on this JobHandle to schedule the read job after the open operation finishes.

Always call Close on the FileHandle when finished to avoid memory leaks and holding a file open. You must call close even if the open operation failed, to dispose of the FileHandle.

To write to a file, use the standard .NET File APIs, such as System.IO.StreamWriter. You must close this FileHandle before you can read or write to the file with other APIs. (If a file is held open by the AsyncReadManager's file cache, you can use AsyncReadManager.CloseCachedFileAsync to close it, but do not use that API to close files for which you have a FileHandle as these are not in the cache.)

### Properties

| Property | Description |
| --- | --- |
| JobHandle | The JobHandle of the asynchronous file open operation begun by the call to AsyncReadManager.OpenFileAsync that returned this FileHandle instance. |
| Status | The current status of this FileHandle. |

### Public Methods

| Method | Description |
| --- | --- |
| Close | Asynchronously closes the file referenced by this FileHandle and disposes the FileHandle instance. |
| IsValid | Reports whether this FileHandle instance is valid. |
