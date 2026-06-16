<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Unity.IO.LowLevel.Unsafe.AsyncReadManager.OpenFileAsync.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| fileName | The path to the file to be opened. |

### Returns

**FileHandle** The FileHandle of the file being opened. Use the FileHandle to check the status of the open operation, to read the file, and to close the file when done.

### Description

Opens the file asynchronously.

**Note:** WebGL builds do not support using `AsyncReadManager` to open files from a remote web server; for example, from the path `Application.streamingAssetsPath` which maps to a URL on a remote web server.

```csharp
using System.IO;
using Unity.IO.LowLevel.Unsafe;
using UnityEngine;class AsyncOpenSample : MonoBehaviour
{
    FileHandle fileHandle;
    public unsafe void Start()
    {
        string filePath = Path.Combine(Application.streamingAssetsPath, "myfile.bin");        fileHandle = AsyncReadManager.OpenFileAsync(filePath);
    }    public unsafe void Update()
    {
        if (fileHandle.IsValid() && fileHandle.JobHandle.IsCompleted)
        {
            fileHandle.Close().Complete();
        }
    }
}
```
