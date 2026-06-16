<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Unity.IO.LowLevel.Unsafe.AsyncReadManager.ReadDeferred.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| fileHandle | The FileHandle to be read from, opened by AsyncReadManager.OpenFileAsync. |
| readCmdArray | A pointer to a struct containing the read commands to queue. |
| dependency | The dependency that will trigger the read to begin. |

### Returns

**ReadHandle** A ReadHandle object you can to use to check the status and monitor the progress of the read operations.

### Description

Queues a set of read operations for a file once the specified Jobs have completed.

This function does not make a copy of the ReadCommandArray struct passed as a parameter. You can change the read commands until the Jobs passed to this function as a dependency are complete. The read will automatically wait for the FileHandle.JobHandle to be complete.

As an unsafe, low-level API, it is the user's responsibility to avoid changing or freeing the ReadCommandArray after the read operation has started. Doing so could lead to buffer overruns and race conditions. (If you change the number of commands, remember to update the ReadCommandArray.CommandCount field, too.)

**Note:** WebGL builds do not support using `AsyncReadManager` to open files from a remote web server; for example, from the path `Application.streamingAssetsPath` which maps to a URL on a remote web server.

```csharp
using System.IO;
using Unity.Collections;
using Unity.IO.LowLevel.Unsafe;
using Unity.Collections.LowLevel.Unsafe;
using UnityEngine;
using Unity.Jobs;class AsyncReadSample : MonoBehaviour
{
    static string TestFilename = Path.Combine(Application.streamingAssetsPath, "myfile.bin");    public unsafe struct ReadCommandJob : IJob
    {
        public NativeArray<ReadCommandArray> ReadCmdArrayNative;        public void Execute()
        {
            const int kReadCount = 1;
            const int kReadSize = 2048;            ReadCommand* readCmds = (ReadCommand*)UnsafeUtility.Malloc(sizeof(ReadCommand) * kReadCount, 16, Allocator.Persistent);            readCmds[0] = new ReadCommand()
            {
                Buffer = (byte*)UnsafeUtility.Malloc(kReadSize, 16, Allocator.Persistent),
                Offset = 0,
                Size = kReadSize
            };            ReadCmdArrayNative[0] = new ReadCommandArray
            {
                ReadCommands = readCmds,
                CommandCount = kReadCount
            };
        }
    }    public unsafe void SetupReadInJob()
    {
        NativeArray<ReadCommandArray> readCmdArrayNative = new NativeArray<ReadCommandArray>(1, Allocator.Persistent);
        ReadCommandArray* readCmdArrayPtr = (ReadCommandArray*)readCmdArrayNative.GetUnsafePtr();        FileHandle fileHandle = AsyncReadManager.OpenFileAsync(TestFilename);        var createReadCommandJob = new ReadCommandJob
        {
            ReadCmdArrayNative = readCmdArrayNative
        }.Schedule();        ReadHandle readHandle = AsyncReadManager.ReadDeferred(fileHandle, readCmdArrayPtr, createReadCommandJob);        JobHandle closeJob = fileHandle.Close(readHandle.JobHandle);        createReadCommandJob.Complete(); // Ensure the NativeArray is finished with before using
        closeJob.Complete();        // ... Use the data read into the buffer        readHandle.Dispose();        for (int i = 0; i < readCmdArrayNative[0].CommandCount; i++)
            UnsafeUtility.Free(readCmdArrayNative[0].ReadCommands[i].Buffer, Allocator.Persistent);
        UnsafeUtility.Free(readCmdArrayNative[0].ReadCommands, Allocator.Persistent);        readCmdArrayNative.Dispose();
    }
}
```
