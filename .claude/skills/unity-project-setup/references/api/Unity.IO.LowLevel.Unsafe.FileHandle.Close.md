<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Unity.IO.LowLevel.Unsafe.FileHandle.Close.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| dependency | (Optional) The JobHandle to wait on before closing the file. |

### Returns

**JobHandle** The JobHandle for the asynchronous close operation. You can use this JobHandle as a dependency when scheduling other jobs that must not run before the close operation is finished.

### Description

Asynchronously closes the file referenced by this FileHandle and disposes the FileHandle instance.

Always close FileHandles when done to avoid memory leaks and needlessly locking files. FileHandles that fail to open must still be closed.

Once closed, the FileHandle instance is disposed and becomes invalid. To check for completion of the close operation, use the JobHandle returned by this method.

```csharp
using System.IO;
using Unity.IO.LowLevel.Unsafe;
using Unity.Jobs;
using UnityEngine;class AsyncCloseSample : MonoBehaviour
{
    FileHandle fileHandle;
    public unsafe void Start()
    {
        string filePath = Path.Combine(Application.streamingAssetsPath, "myfile.bin");        fileHandle = AsyncReadManager.OpenFileAsync(filePath);
    }    public unsafe void Update()
    {
        if (fileHandle.IsValid() && fileHandle.JobHandle.IsCompleted)
        {
            JobHandle closeHandle = fileHandle.Close();            closeHandle.Complete();
        }
    }
}
```
