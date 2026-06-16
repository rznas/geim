<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Unity.IO.LowLevel.Unsafe.AsyncReadManager.Read.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| filename | The filename to read from. |
| readCmds | A pointer to an array of ReadCommand structs that specify offset, size, and destination buffer. |
| readCmdCount | The number of read commands pointed to by readCmds. |
| assetName | (Optional) The name of the object being read, for metrics purposes. |
| typeID | (Optional) The TypeID of the object being read, for metrics purposes. |
| subsystem | (Optional) The Subsystem tag for the read operation, for metrics purposes. |

### Returns

**ReadHandle** Used to monitor the progress and status of the read command.

### Description

Issues an asynchronous file read operation. Returns a ReadHandle.

You can set the `assetName`, `typeId`, and `subsystem` parameters to collect asset-specific metrics for this read operation. When you enable metrics collection with AsyncReadManagerMetrics.StartCollectingMetrics, Unity includes this information as part of the AsyncReadManagerMetrics, allowing you to analyze how different types of assets affect performance.

The AsyncReadManager copies the data referenced by /readCmds/; you can dispose or free the data immediately after calling `Read`.

```csharp
using System.IO;
using Unity.Collections;
using Unity.IO.LowLevel.Unsafe;
using Unity.Collections.LowLevel.Unsafe;
using UnityEngine;class AsyncReadSample : MonoBehaviour
{
    private ReadHandle readHandle;
    NativeArray<ReadCommand> cmds;
    string assetName = "myfile";
    ulong typeID = 114; // from ClassIDReference
    AssetLoadingSubsystem subsystem = AssetLoadingSubsystem.Scripts;    public unsafe void Start()
    {
        string filePath = Path.Combine(Application.streamingAssetsPath, "myfile.bin");
        cmds = new NativeArray<ReadCommand>(1, Allocator.Persistent);
        ReadCommand cmd;
        cmd.Offset = 0;
        cmd.Size = 1024;
        cmd.Buffer = (byte*)UnsafeUtility.Malloc(cmd.Size, 16, Allocator.Persistent);
        cmds[0] = cmd;
        readHandle = AsyncReadManager.Read(filePath, (ReadCommand*)cmds.GetUnsafePtr(), 1, assetName, typeID, subsystem);
    }    public unsafe void Update()
    {
        if (readHandle.IsValid() && readHandle.Status != ReadStatus.InProgress)
        {
            Debug.LogFormat("Read {0}", readHandle.Status == ReadStatus.Complete ? "Successful" : "Failed");
            readHandle.Dispose();
            UnsafeUtility.Free(cmds[0].Buffer, Allocator.Persistent);
            cmds.Dispose();
        }
    }
}
```

### Parameters

| Parameter | Description |
| --- | --- |
| fileHandle | The FileHandle to be read from, opened by AsyncReadManager.OpenFileAsync. |
| readCmdArray | A struct containing the read commands to queue. |

### Returns

**ReadHandle** A ReadHandle object you can use to check the status and monitor the progress of the read operations.

### Description

Queues a set of read operations for a file opened with OpenFileAsync.

This function makes a copy of the ReadCommandArray struct passed as a parameter internally, so you do not need to maintain the array. **Note:** WebGL builds do not support using `AsyncReadManager` to open files from a remote web server; for example, from the path `Application.streamingAssetsPath` which maps to a URL on a remote web server.

```csharp
using System.IO;
using Unity.Collections;
using Unity.IO.LowLevel.Unsafe;
using Unity.Collections.LowLevel.Unsafe;
using UnityEngine;
using Unity.Jobs;class AsyncReadSample : MonoBehaviour
{
    static string TestFilename = Path.Combine(Application.streamingAssetsPath, "myfile.bin");    public unsafe void Start()
    {
        ReadCommand cmd;
        cmd.Offset = 0;
        cmd.Size = 1024;
        cmd.Buffer = (byte*)UnsafeUtility.Malloc(cmd.Size, 16, Allocator.Persistent);        FileHandle fileHandle = AsyncReadManager.OpenFileAsync(TestFilename);        ReadCommandArray readCmdArray;
        readCmdArray.ReadCommands = &cmd;
        readCmdArray.CommandCount = 1;        ReadHandle readHandle = AsyncReadManager.Read(fileHandle, readCmdArray);        JobHandle closeJob = fileHandle.Close(readHandle.JobHandle);        closeJob.Complete();        // ... Use the data read into the buffer        readHandle.Dispose();        for (int i = 0; i < readCmdArray.CommandCount; i++)
            UnsafeUtility.Free(readCmdArray.ReadCommands[i].Buffer, Allocator.Persistent);
    }
}
```
