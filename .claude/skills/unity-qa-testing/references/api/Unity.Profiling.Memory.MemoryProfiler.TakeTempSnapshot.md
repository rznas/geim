<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Unity.Profiling.Memory.MemoryProfiler.TakeTempSnapshot.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| finishCallback | Event that is fired once the memory snapshot has finished the process of capturing data. |
| captureFlags | Flag mask defining the content of the memory snapshot. |

### Description

Triggers a memory snapshot capture to the Application.temporaryCachePath folder.

Internally MemoryProfiler.TakeSnapshot is called with the destination path set to the "<Application.temporaryCachePath>/<projectName>.snap".

```csharp
using System.Collections;
using System.IO;
using Unity.Profiling.Memory;
using UnityEngine;public static class MemoryProfilerExample
{
    public static IEnumerator TakeSnapshot()
    {
        bool snapshotFinished = false;
        string resultingSnapshotPath = null;
        MemoryProfiler.TakeTempSnapshot((filePath, success) =>
        {
            snapshotFinished = true;
            if (success)
            {
                resultingSnapshotPath = Path.GetFullPath(filePath);
                Debug.Log($"Snapshot captured and stored at {resultingSnapshotPath}.");
            }
            else
            {
                Debug.LogError("Failed to take a snapshot.");
            }
        },
            CaptureFlags.ManagedObjects | CaptureFlags.NativeObjects | CaptureFlags.NativeAllocations);        while (!snapshotFinished)
        {
            yield return null;
        }        if (resultingSnapshotPath != null && File.Exists(resultingSnapshotPath))
        {
            var fileName = Path.GetFileName(resultingSnapshotPath);
            // Ensure a unique file name to move this file to.
            var finalPath = Path.Combine(Application.persistentDataPath, "DateTime.Now.Ticks" + fileName);            // Remove any pre-existing file first.
            if (File.Exists(finalPath))
                File.Delete(finalPath);            //  Move the file out of the temporary cache to somewhere more permanent.
            File.Move(resultingSnapshotPath, finalPath);            // If you don't have access to the Player's file system you could also upload the file to an end-point that is accessible to you here.
        }
    }
}
```

Additional resources: Application.temporaryCachePath, MemoryProfiler.TakeSnapshot.
